package ie.com.cct.BeautySalon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Product;
import ie.com.cct.BeautySalon.repository.BookingRepository;
import ie.com.cct.BeautySalon.repository.ProductRepository;
import ie.com.cct.BeautySalon.util.Formatter;

@Controller
public class AdminController {

	@Autowired
	private BookingRepository bookingRepository;
	@Autowired
	private ProductRepository productRepository;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView("/admin");
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Booking> list = bookingRepository.findAll();

		for (int i = 0; i < list.size(); i++) {
			map.put(i, list.get(i).getSchedule().toString() 
					+ " - " + list.get(i).getProfessional().getName() 
					+ " - " + list.get(i).getService().getName() 
					+ " - " + (list.get(i).getBookingDatas() == null ? "No Products" : list.get(i).getBookingDatas()));
		}
		
		List<Product> allProducts = productRepository.findAll();
		Map<Integer, String> mapProducts = new HashMap<Integer, String>();
		for (int i = 0; i < allProducts.size(); i++) {
			mapProducts.put(i, allProducts.get(i).getName()
					+ " - €" + Formatter.formatterDouble(allProducts.get(i).getPrice())
					+ " - Qtd: " + allProducts.get(i).getQuantity());
		}

		mav.addObject("bookings", map);
		mav.addObject("products", mapProducts);
		return mav;
	}
}
