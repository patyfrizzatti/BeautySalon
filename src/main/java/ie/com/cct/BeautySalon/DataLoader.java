package ie.com.cct.BeautySalon;

import java.time.LocalDateTime;
import java.time.Month;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Status;
import ie.com.cct.BeautySalon.repository.BookingRepository;
import ie.com.cct.BeautySalon.repository.CustomerRepository;
import ie.com.cct.BeautySalon.repository.ProfessionalRepository;
import ie.com.cct.BeautySalon.repository.ServiceRepository;

/**
 * Class responsable to feed the database with initial Bookings
 * 
 * @author User
 *
 */
@Component
public class DataLoader implements ApplicationRunner {

	private BookingRepository bookingRepository;
	private CustomerRepository customerRepository;
	private ProfessionalRepository professionalRepository;
	private ServiceRepository serviceRepository;

	@Autowired
	public DataLoader(BookingRepository bookingRepository, CustomerRepository customerRepository,
			ProfessionalRepository professionalRepository, ServiceRepository serviceRepository) {
		this.bookingRepository = bookingRepository;
		this.customerRepository = customerRepository;
		this.professionalRepository = professionalRepository;
		this.serviceRepository = serviceRepository;
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Booking b1 = new Booking();
		b1.setCustomer(customerRepository.findById(1L).get());//Patricia
		b1.setService(serviceRepository.findById(5L).get());//haircut
		LocalDateTime time = LocalDateTime.of(2020, Month.MAY, 22, 18, 00, 00);
		b1.setSchedule(time);
		b1.setStatus(Status.BOOKED);
		b1.setProfessional(professionalRepository.findById(1L).get());//Jhon
		b1.setTotal(b1.getService().getPrice());
		bookingRepository.save(b1);
		
		Booking b2 = new Booking();
		b2.setCustomer(customerRepository.findById(1L).get());//Patricia
		b2.setService(serviceRepository.findById(4L).get());//coloring
		time = LocalDateTime.of(2020, Month.MAY, 23, 14, 00, 00);
		b2.setSchedule(time);
		b2.setStatus(Status.BOOKED);
		b2.setProfessional(professionalRepository.findById(2L).get());//Mary
		b2.setTotal(b2.getService().getPrice());
		b2.setBookingDatas("1 unit of hair dye");
		bookingRepository.save(b2);
		
		
	}
}
