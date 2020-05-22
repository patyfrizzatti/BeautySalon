package ie.com.cct.BeautySalon.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import ie.com.cct.BeautySalon.model.Product;

/**
 * Interface that implements the repository design pattern using JpaRepository
 * interface from Spring data with all the pattern methods
 * 
 * @author Patricia
 *
 */
public interface ProductRepository extends JpaRepository<Product, Long> {

	// nomenclature standard: findByATTRIBUTE , or to find inside another class
	// findByCLASSNAME_ATTRIBUTE
	List<Product> findByName(String name);

	@Transactional
	@Modifying
	@Query("UPDATE Product p SET p.quantity = p.quantity - :qtd WHERE p.id = :id")
	void decreaseUnit(@Param("qtd") int i, @Param("id") Long id);

	@Query("SELECT DISTINCT p FROM Product p JOIN p.listServices s WHERE s.id = :idService")
	List<Product> findByServiceId(Long idService);

}
