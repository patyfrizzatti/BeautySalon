package ie.com.cct.BeautySalon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ie.com.cct.BeautySalon.model.Service;
import ie.com.cct.BeautySalon.repository.ServiceRepository;

@Controller
public class ServiceController {
	
	@Autowired
	private ServiceRepository serviceRepository;
	
	
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public ModelAndView jsonSchedules() {
		List<Service> list = serviceRepository.findAll();
		ModelAndView mav = new ModelAndView();
		String names = "";
		for (int i = 0; i < list.size(); i++) {
			names += list.get(i).getName() + " - " + list.get(i).getDuration() + ",";
		}
		names = names.substring(0, names.length() - 1);
		mav.addObject("names", names);
		return mav;
	}
}
