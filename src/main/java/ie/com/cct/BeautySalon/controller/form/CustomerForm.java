package ie.com.cct.BeautySalon.controller.form;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import ie.com.cct.BeautySalon.model.Customer;
import ie.com.cct.BeautySalon.model.Profile;

/**
 * It's a DTO pattern to receive Customer datas to record
 * 
 * @author User
 *
 */
public class CustomerForm {

	private String name;
	private String email;
	private String phone;
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Customer convert(List<Profile> profiles) {
		return new Customer(name, email, phone, new BCryptPasswordEncoder().encode(password), profiles);
	}

}
