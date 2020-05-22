package ie.com.cct.BeautySalon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {

	@RequestMapping(value = {"/", "/index"})
	public String index(HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value = "/contact")
	public String contact(HttpServletRequest request) {
		return "contact";
	}
	
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping(value = "/signup")
	public String signup(HttpServletRequest request) {
		return "signup";
	}
	
	@RequestMapping(value = "/signupWelcome")
	public String signupWelcome(HttpServletRequest request) {
		return "signupWelcome";
	}
	
}
