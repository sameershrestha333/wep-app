package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.Customer;

@Controller
public class CustomerController {

	@ModelAttribute("countries")
	public List<String> getCountries() {
		List<String> countries = new ArrayList<String>();
		countries.add("United Stated");
		countries.add("Germany");
		countries.add("Netherlands");
		return countries;
	}

	@ModelAttribute("javaskills")
	public List<String> getJavaSkills() {
		List<String> javaSkills = new ArrayList<String>();
		javaSkills.add("Hibernate");
		javaSkills.add("Spring");
		javaSkills.add("Apache Wicket");
		javaSkills.add("Struts");
		return javaSkills;
	}

//	@ModelAttribute("countries")
//	public List<String> getCountries(Model model) {
//		List<String> countries = new ArrayList<String>();
//		countries.add("United Stated");
//		countries.add("Germany");
//		countries.add("Netherlands");
//		model.addAttribute("countries", countries);
//		return countries;
//	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String customer(@ModelAttribute Customer customer) {

		return "customer";
	}

	@RequestMapping(value = "/customer", method = RequestMethod.POST)
	public String customerPOST(@ModelAttribute Customer customer) {

		return "result";
	}
}
