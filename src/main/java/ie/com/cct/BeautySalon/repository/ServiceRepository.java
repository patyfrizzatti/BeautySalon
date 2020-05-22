package ie.com.cct.BeautySalon.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import ie.com.cct.BeautySalon.model.Service;

/**
 * Interface that implements the repository design pattern using JpaRepository
 * interface from Spring data with all the pattern methods
 * 
 * @author Patricia
 *
 */
public interface ServiceRepository extends JpaRepository<Service, Long> {

	Optional<Service> findByName(String serviceName);

}
