package ie.com.cct.BeautySalon.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ie.com.cct.BeautySalon.controller.form.BookingDTO;
import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.repository.BookingRepository;

@RestController
public class BookingController {

	@Autowired
	private BookingRepository bookingRepository;

	/**
	 * Method responsable to return all Bookings by id professional
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/jsonSchedules/{id}", method = RequestMethod.GET)
	public List<BookingDTO> jsonSchedules(@PathVariable String id) {
		
		List<Booking> listBooking = bookingRepository.findByProfessionalId(Long.parseLong(id));

		List<BookingDTO> list = new ArrayList<>();

		for (int i = 0; i < listBooking.size(); i++) {
			list.add(BookingDTO.transformer(listBooking.get(i)));
		}
		return list;
	}
}
