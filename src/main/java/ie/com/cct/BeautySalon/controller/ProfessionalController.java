package ie.com.cct.BeautySalon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ie.com.cct.BeautySalon.model.Professional;
import ie.com.cct.BeautySalon.repository.ProfessionalRepository;

@Controller
public class ProfessionalController {

	@Autowired
	private ProfessionalRepository professionalRepository;

	@RequestMapping(value = "/professional/{name}", method = RequestMethod.GET)
	public ModelAndView jsonSchedules(@PathVariable String name) {

		// ex.: haircut - 01:00
		name = name.substring(0, name.indexOf("-"));// let just the service name
		name = name.trim();
		List<Professional> list = professionalRepository.findProfessionalByServiceName(name);
		Map<String, String> map = new HashMap<String, String>();
		for (int i = 0; i < list.size(); i++) {
			map.put(String.valueOf(list.get(i).getId() + name), list.get(i).getName());
		}

		ModelAndView mav = new ModelAndView("/professional", "professionals", map);
		return mav;
	}
}
