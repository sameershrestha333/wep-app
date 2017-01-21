package com.example.controller;



import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.CustomerForm;

@Controller
public class CustomerFormController {

	@RequestMapping(value = "/customerForm", method = RequestMethod.GET)
	public String customerForm(Model model) {
		CustomerForm customerForm = new CustomerForm();
		model.addAttribute("customerForm", customerForm);
		return "addCustomer";
	}

	@RequestMapping(value = "/customerForm", method = RequestMethod.POST)
	public String customerFormPOST( @Valid CustomerForm customerForm,BindingResult result) {
		/*System.out.println(birthdate);
		
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		Date d1=format.parse(birthdate);
		customerForm.setBirthdate(d1);*/
		System.out.println(customerForm);
		
		if(result.hasErrors()){
			
			return "addCustomer";
		}
		
		return "customers";
	}


}
