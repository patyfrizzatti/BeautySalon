package ie.com.cct.BeautySalon.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ie.com.cct.BeautySalon.model.Product;
import ie.com.cct.BeautySalon.repository.ProductRepository;

@RestController
public class ProductController {

	@Autowired
	private ProductRepository productRepository;

	@RequestMapping("/products")
	public List<Product> list(@RequestParam(required = false) String name) {
		List<Product> list;
		if (name == null) {
			list = productRepository.findAll();
			return list;
		} else {
			list = productRepository.findByName(name);
		}
		return list;
	}

}
