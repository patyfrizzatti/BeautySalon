package ie.com.cct.BeautySalon.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ie.com.cct.BeautySalon.model.Booking;
import ie.com.cct.BeautySalon.model.Status;

public interface BookingRepository extends JpaRepository<Booking, Long> {

// @Query("select t from Test t join User u where u.username = :username")
// @Query("SELECT DISTINCT b FROM Booking b INNER JOIN b.professional p WHERE p.id = :id")
List<Booking> findByProfessionalId(@Param("id") Long id);

@Transactional
@Modifying
@Query("UPDATE Booking b SET b.status = :status WHERE b.id = :id")
void updateStatus(@Param("id") Long id, @Param("status") Status status);

@Transactional
@Modifying
@Query("UPDATE Booking b SET b.status = 'CANCELLED' WHERE b.id = :id AND b.status = 'BOOKED'")
void deleteByIdIfBooked(@Param("id")Long id);


// @Query("SELECT DISTINCT b FROM Booking b INNER JOIN b.listProfessionals p WHERE p.name = :name")
// List<Booking> findBookingByProfessionalName(@Param("name") String name);

}