package ie.com.cct.BeautySalon.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ie.com.cct.BeautySalon.model.Customer;
import ie.com.cct.BeautySalon.model.Professional;
import ie.com.cct.BeautySalon.model.Service;

/**
 * Class responsible to build one booking of services with yours hours,
 * professional and customer, respectively.
 * 
 * @author User
 *
 */
public class Checkout {

	private Customer customer;
	private List<Professional> professionals = new ArrayList<>();
	private List<Service> services = new ArrayList<>();
	private List<LocalDateTime> dates = new ArrayList<>();
	private Map<String, String> map = new HashMap<String, String>();
	private double total = 0;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Professional> getProfessionals() {
		return professionals;
	}

	public void setProfessionals(List<Professional> professionals) {
		this.professionals = professionals;
	}

	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	public List<LocalDateTime> getDates() {
		return dates;
	}

	public void setDates(List<LocalDateTime> dates) {
		this.dates = dates;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setMap(Map<String, String> map) {
		this.map = map;
	}

	public void setTotal(double total) {
		this.total  = total;
	}

	public double getTotal() {
		return total;
	}

	/**
	 * Clear all datas from arrays and the total value
	 * 
	 */
	public void clearAllDatas() {
		this.professionals.clear();
		this.services.clear();
		this.dates.clear();
		this.map.clear();
		this.total = 0.0;
	}
}
