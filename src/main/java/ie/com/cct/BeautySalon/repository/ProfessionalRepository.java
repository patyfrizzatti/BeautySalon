package ie.com.cct.BeautySalon.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ie.com.cct.BeautySalon.model.Professional;

/**
 * Interface that implements the repository design pattern using JpaRepository
 * interface from Spring data with all the pattern methods
 * 
 * @author Patricia
 *
 */
public interface ProfessionalRepository extends JpaRepository<Professional, Long> {

	@Query("SELECT DISTINCT p FROM Professional p INNER JOIN p.listServices s WHERE s.name = :nameService")
	List<Professional> findProfessionalByServiceName(@Param("nameService") String name);

}
