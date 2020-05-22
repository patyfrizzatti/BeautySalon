package ie.com.cct.BeautySalon.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ie.com.cct.BeautySalon.model.Profile;

public interface ProfileRepository extends JpaRepository<Profile, Long> {
	
}
