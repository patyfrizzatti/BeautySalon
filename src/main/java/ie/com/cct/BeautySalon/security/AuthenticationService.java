package ie.com.cct.BeautySalon.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import ie.com.cct.BeautySalon.model.Customer;
import ie.com.cct.BeautySalon.repository.CustomerRepository;

/**
 * Class responsable to implement user configs
 * 
 * @author User
 *
 */
@Service
public class AuthenticationService implements UserDetailsService {

	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<Customer> customer = customerRepository.findByEmail(username);
		if(customer.isPresent()) {
			return customer.get();
		}
		throw new UsernameNotFoundException("Invalid Datas");
	}

}
