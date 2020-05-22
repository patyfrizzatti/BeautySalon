package ie.com.cct.BeautySalon.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ie.com.cct.BeautySalon.model.Customer;

/**
 * Interface that implements the repository design pattern using JpaRepository
 * interface from Spring data with all the pattern methods
 * 
 * @author Patricia
 *
 */
public interface CustomerRepository extends JpaRepository<Customer, Long> {

	List<Customer> findByName(String name);

	Optional<Customer> findByEmail(String email);

	@Query("SELECT c FROM Customer c WHERE c.name = :name AND c.passwordc = :password")
	Optional<Customer>  findByNameAndPassword(@Param("name") String name, @Param("password") String password);
}
