package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/order/{productId}",method=RequestMethod.POST)
	public String processOrder(@RequestParam("qty") int qty, @PathVariable String productId){

		orderService.processOrder(productId, qty);;
		return "redirect:/products";
	}
	
}
