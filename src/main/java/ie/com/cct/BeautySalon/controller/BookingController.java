package ie.com.cct.BeautySalon.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ie.com.cct.BeautySalon.controller.form.BookingDTO;
import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Status;
import ie.com.cct.BeautySalon.repository.BookingRepository;

@RestController
public class BookingController {

@Autowired
private BookingRepository bookingRepository;

/**
* Method responsible to return all Bookings by id professional
*
* @param id
* @return
*/
@RequestMapping(value = "/jsonSchedules/{id}", method = RequestMethod.GET)
public List<BookingDTO> jsonSchedules(@PathVariable String id) {

List<Booking> listBooking = bookingRepository.findByProfessionalId(Long.parseLong(id));

List<BookingDTO> list = new ArrayList<>();

for (int i = 0; i < listBooking.size(); i++) {
//send a JSON without cancelled Bookings to Calendar
if(!listBooking.get(i).getStatus().equals(Status.CANCELLED)) {
list.add(BookingDTO.transformer(listBooking.get(i)));
}
}
return list;
}

@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
public void delete(@PathVariable String id, HttpServletResponse response) {
bookingRepository.deleteByIdIfBooked(Long.valueOf(id));
try {
response.sendRedirect("/customer");
} catch (IOException e) {
e.printStackTrace();
}
}
}