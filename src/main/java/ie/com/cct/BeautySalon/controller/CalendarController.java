package ie.com.cct.BeautySalon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalendarController {

	@RequestMapping(value = "/calendar/{id}", method = RequestMethod.GET)
	public ModelAndView calendar(@PathVariable String id) {
		ModelAndView mav = new ModelAndView("/calendar");
		mav.addObject("jsonDatas", "/jsonSchedules/" + id.substring(0, 1));
		return mav;
	}

}
