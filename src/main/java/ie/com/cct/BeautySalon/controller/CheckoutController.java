package ie.com.cct.BeautySalon.controller;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.annotation.SessionScope;

import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Customer;
import ie.com.cct.BeautySalon.model.Product;
import ie.com.cct.BeautySalon.model.Professional;
import ie.com.cct.BeautySalon.model.Service;
import ie.com.cct.BeautySalon.model.Status;
import ie.com.cct.BeautySalon.repository.BookingRepository;
import ie.com.cct.BeautySalon.repository.CustomerRepository;
import ie.com.cct.BeautySalon.repository.ProductRepository;
import ie.com.cct.BeautySalon.repository.ProfessionalRepository;
import ie.com.cct.BeautySalon.repository.ServiceRepository;
import ie.com.cct.BeautySalon.util.Formatter;

@Controller
public class CheckoutController {

	@Resource(name = "sessionScopedBean")
	private Checkout sessionScopedBean;
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private ProfessionalRepository professionalRepository;
	@Autowired
	private ServiceRepository serviceRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private BookingRepository bookingRepository;

	/**
	 * Method responsible to build a Checkout page using a session scope
	 * 
	 * @param idName - Id from professional, Name from the service and Date
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/checkout/{idNameDate}", method = RequestMethod.GET)
	public String getSessionScopeMessage(@PathVariable String idNameDate, final Model model) {

		String date = idNameDate.substring(idNameDate.indexOf("-") + 1, idNameDate.length());
		date = date.substring(0, date.indexOf("+"));
		idNameDate = idNameDate.substring(0, idNameDate.indexOf("-"));
		String idProfessional = idNameDate.replaceAll("\\D+", "");// regex to get only number

		boolean isTheSameBooking = avoidRepeatedBookings(idProfessional, Formatter.parseStringToLocalDateTime(date));

		if (isTheSameBooking) {
			model.addAttribute("customerName", sessionScopedBean.getCustomer().getName());
			model.addAttribute("bookings", sessionScopedBean.getMap());
			sessionScopedBean.setTotal(sessionScopedBean.getServices().stream().mapToDouble(s -> s.getPrice()).sum());
			model.addAttribute("total", Formatter.formatterDouble(sessionScopedBean.getTotal()));
			return "checkout";
		}

		if (sessionScopedBean.getCustomer() == null) {
			sessionScopedBean.setCustomer(getLoggedUser().get());
		}

		Optional<Professional> p = professionalRepository.findById(Long.parseLong(idProfessional));
		sessionScopedBean.getProfessionals().add(p.get());

		String serviceName = idNameDate.replaceAll(idProfessional, "");// remove the number
		Optional<Service> s = serviceRepository.findByName(serviceName);
		sessionScopedBean.getServices().add(s.get());

		sessionScopedBean.getDates().add(Formatter.parseStringToLocalDateTime(date));

		double total = 0;
		for (int i = 0; i < sessionScopedBean.getProfessionals().size(); i++) {
			StringBuilder sb = new StringBuilder();
			sb.append("Service: " + sessionScopedBean.getServices().get(i).getName());
			sb.append(" €" + Formatter.formatterDouble(sessionScopedBean.getServices().get(i).getPrice()));
			sb.append(" with " + sessionScopedBean.getProfessionals().get(i).getName());
			total += sessionScopedBean.getServices().get(i).getPrice();
			sb.append(" at ");
			sb.append(Formatter.parseLocalDateTimeToString(sessionScopedBean.getDates().get(i)));
			sessionScopedBean.getMap().put(String.valueOf(i), sb.toString());
		}

		model.addAttribute("customerName", sessionScopedBean.getCustomer().getName());
		model.addAttribute("bookings", sessionScopedBean.getMap());
		sessionScopedBean.setTotal(total);
		model.addAttribute("total", Formatter.formatterDouble(total));
		return "checkout";
	}

	private boolean avoidRepeatedBookings(String idProfessional, LocalDateTime dateTime) {
		boolean b = false;
		for (int i = 0; i < sessionScopedBean.getProfessionals().size(); i++) {
			Long idP = sessionScopedBean.getProfessionals().get(i).getId();
			LocalDateTime localDateTime = sessionScopedBean.getDates().get(i);
			if (idP == Long.parseLong(idProfessional) && localDateTime.getHour() == dateTime.getHour()
					&& localDateTime.getMonthValue() == dateTime.getMonthValue()
					&& localDateTime.getYear() == dateTime.getYear()) {
				b = true;
			}
		}
		return b;
	}

	@Bean
	@SessionScope
	public Checkout sessionScopedBean() {
		return new Checkout();
	}

	/**
	 * Find the logged in user
	 * 
	 * @return
	 */
	private Optional<Customer> getLoggedUser() {
		Optional<Customer> c = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String name = ((UserDetails) principal).getUsername();
			String password = ((UserDetails) principal).getPassword();
			c = customerRepository.findByNameAndPassword(name, password);
		}
		return c;
	}

	/**
	 * Save the bookings
	 * 
	 * @return
	 */
	@RequestMapping(value = "/paid", method = RequestMethod.GET)
	public String paid() {
		for (int i = 0; i < sessionScopedBean.getProfessionals().size(); i++) {
			Booking b = new Booking();
			b.setCustomer(sessionScopedBean.getCustomer());
			b.setProfessional(sessionScopedBean.getProfessionals().get(i));
			b.setSchedule(sessionScopedBean.getDates().get(i));
			b.setStatus(Status.BOOKED);
			b.setTotal(sessionScopedBean.getTotal());

			String bookingDatas = "";
			// get all products from this service and decrease one unit
			Long idService = sessionScopedBean.getServices().get(i).getId();
			List<Product> products = productRepository.findByServiceId(idService);
			for (int j = 0; j < products.size(); j++) {
				decreaseUnits(1, products.get(j).getId());
				bookingDatas += 1 + " unit of " + products.get(j).getName() + ",";
			}
			if (!bookingDatas.isEmpty()) {
				b.setBookingDatas(bookingDatas.substring(0, bookingDatas.length() - 1));
			}

			b.setService(serviceRepository.findByName(sessionScopedBean.getServices().get(i).getName()).get());
			bookingRepository.save(b);
		}
		// After the payment, all session datas are removed
		sessionScopedBean.clearAllDatas();
		return "paid";
	}

	private void decreaseUnits(int i, Long id) {
		productRepository.decreaseUnit(i, id);
	}
}