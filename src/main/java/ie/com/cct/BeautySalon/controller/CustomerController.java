package ie.com.cct.BeautySalon.controller;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ie.com.cct.BeautySalon.controller.form.CustomerForm;
import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Customer;
import ie.com.cct.BeautySalon.model.Profile;
import ie.com.cct.BeautySalon.model.Status;
import ie.com.cct.BeautySalon.repository.BookingRepository;
import ie.com.cct.BeautySalon.repository.CustomerRepository;
import ie.com.cct.BeautySalon.repository.ProfileRepository;
import ie.com.cct.BeautySalon.util.Formatter;

@Controller
public class CustomerController {

@Autowired
private CustomerRepository customerRepository;
@Autowired
private ProfileRepository profileRepository;
@Autowired
private BookingRepository bookingRepository;

@GetMapping("/customers")
public List<Customer> list(@RequestParam(required = false) String name) {
List<Customer> list;
if (name == null) {
list = customerRepository.findAll();
return list;
} else {
list = customerRepository.findByName(name);
}
return list;
}

@RequestMapping(value = "/customers", method = RequestMethod.POST)
public ModelAndView save(@ModelAttribute("customerForm") CustomerForm form) {
Optional<Customer> c = customerRepository.findByEmail(form.getEmail());
if (!c.isPresent()) {

List<Profile> profiles = new ArrayList<>();
profiles.add(profileRepository.findById(2L).get());// All new users will be USER
Customer customer = form.convert(profiles);
customerRepository.save(customer);
ModelAndView mav = new ModelAndView("/signupWelcome");
mav.addObject("name", form.getName());
return mav;
} else {
ModelAndView mav = new ModelAndView("/signup");
mav.addObject("message", "Email " + form.getEmail() + " is already registered. Try another email.");
mav.addObject("visible", "style='display: none;'");
return mav;
}
}

@RequestMapping(value = "/customer", method = RequestMethod.GET)
public ModelAndView customer() {
ModelAndView mav = new ModelAndView("/customer");
Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
String name = ((UserDetails) principal).getUsername();
String pass = ((UserDetails) principal).getPassword();
Customer c = customerRepository.findByNameAndPassword(name, pass).get();
Map<Long, String> map = new HashMap<Long, String>();
for (int i = 0; i < c.getListBookings().size(); i++) {
map.put(c.getListBookings().get(i).getId(),
Formatter.parseLocalDateTimeToString(c.getListBookings().get(i).getSchedule()) + " "
+ c.getListBookings().get(i).getProfessional().getName() + " "
+ c.getListBookings().get(i).getService().getName() + " €:"
+ Formatter.formatterDouble(c.getListBookings().get(i).getTotal()) + " "
+ updateStatus(c.getListBookings().get(i)));
}

mav.addObject("bookings", map);
return mav;
}

private Status updateStatus(Booking booking) {
if(!booking.getStatus().equals(Status.CANCELLED)) {
if (booking.getSchedule().isBefore(LocalDateTime.now())
&& booking.getSchedule().plus(1, ChronoUnit.HOURS).isBefore(LocalDateTime.now())) {
booking.setStatus(Status.COMPLETED);
} else if (booking.getSchedule().isBefore(LocalDateTime.now())
&& booking.getSchedule().plus(1, ChronoUnit.HOURS).isAfter(LocalDateTime.now())) {
booking.setStatus(Status.IN_SERVICE);
}
bookingRepository.updateStatus(booking.getId(), booking.getStatus());
}
return booking.getStatus();
}
}
