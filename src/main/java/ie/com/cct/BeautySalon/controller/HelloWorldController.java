package ie.com.cct.BeautySalon.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloWorldController {

	@GetMapping({"/hello" })
	public String hello(Model model,
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		model.addAttribute("name", name);
		return "hello";
	}

	// Testes abaixo

	@RequestMapping(value = "/test")
	public String showTestPage(HttpServletRequest request) {
		request.setAttribute("name", "hairdye");
		request.setAttribute("quantity", "1");
		return "redirect:/test2?name=Tinta&quantity=1";
	}

	@RequestMapping(value = "/test2")
	public String showTestPage2(HttpServletRequest request) {
		String param1 = request.getParameter("name");
		String param2 = request.getParameter("quantity");
		request.setAttribute("name", param1);
		request.setAttribute("quantity", param2);
		System.out.println("Exemplo: " + param1 + " " + param2);
		return "testPageView";
	}

	@RequestMapping(value = "/populateDataFromServer/{name}", method = RequestMethod.GET, produces = {
			"application/json" })
	public @ResponseBody List<Integer> populateActivePSwapBasketGET(@PathVariable String name) {
		if (name.equalsIgnoreCase("JavaHonk")) {
			return returnDataList();
		} else {
			List<Integer> list = new ArrayList<Integer>();
			list.add(12345);
			return list;
		}
	}

	@RequestMapping(value = "/populateDataFromServer", method = RequestMethod.POST, produces = { "application/json" })
	public @ResponseBody List<Integer> populateActivePSwapBasketPOST(@RequestParam String name) {
		if (name.equalsIgnoreCase("JavaHonk")) {
			return returnDataList();
		} else {
			List<Integer> list = new ArrayList<Integer>();
			list.add(12345);
			return list;
		}
	}

	@RequestMapping(value = "/populateDataFromServer/{name}", method = RequestMethod.PUT, produces = {
			"application/json" })
	public @ResponseBody List<Integer> populateActivePSwapBasketPUT(@PathVariable String name) {
		if (name.equalsIgnoreCase("JavaHonk")) {
			return returnDataList();
		} else {
			List<Integer> list = new ArrayList<Integer>();
			list.add(12345);
			return list;
		}
	}

	@RequestMapping(value = "/populateDataFromServer/{name}", method = RequestMethod.DELETE, produces = {
			"application/json" })
	public @ResponseBody List<Integer> populateActivePSwapBasketDelete(@PathVariable String name) {
		if (name.equalsIgnoreCase("JavaHonk")) {
			return returnDataList();
		} else {
			List<Integer> list = new ArrayList<Integer>();
			list.add(12345);
			return list;
		}
	}

	private List<Integer> returnDataList() {
		Random rand = new Random();
		Integer randomNum = rand.nextInt();
		List<Integer> list = new ArrayList<Integer>();
		list.add(randomNum);
		return list;
	}
}
