package com.example.controller;

import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.Productdao;
import com.example.model.Product;
import com.example.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private Productdao Productdao;

	@Autowired
	private ProductService productService;

	@RequestMapping("/products")
	public String getAllProducts(Model model) {
		List<Product> list = Productdao.getAllProducts();
		System.out.println(list);
		model.addAttribute("products", Productdao.getAllProducts());

		return "products";
	}

	/*
	 * @Autowired private ProductService productService;
	 * 
	 * @RequestMapping("/products") public String getAllProducts(Model model){
	 * //List<Product> list=Productdao.getAllProducts(); //
	 * System.out.println(list);
	 * //model.addAttribute("products",Productdao.getAllProducts());
	 * 
	 * return "products"; }
	 */

	// @RequestMapping("/viewProduct/{productId}")
	// public String viewProduct(@PathVariable("productId") int productId,Model
	// model) throws IOException{
	// Product product=productService.getProductById(productId);
	// model.addAttribute("product",product);
	//
	//
	// return "viewProduct";
	// }

	@RequestMapping("viewProduct/{productId}")
	public String viewProduct(@PathVariable("productId") String productId, Model model) throws IOException {

		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);
		return "viewProduct";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields("unitsInOrder", "discontinued");
	}

	@RequestMapping(value = "/products/addProduct", method = RequestMethod.GET)
	public String addProduct(Model model) {
		Product products = new Product();
		model.addAttribute("products", products);
		return "addProduct";
	}

	@RequestMapping(value="products/showFormForUpdate", method = RequestMethod.GET)
	public String showFormUpdate(@RequestParam("productId") String productId, Model model) {

		// get customer from service
		Product product = productService.getProductById(productId);//customerService.getCustomer(idobj);
		System.out.println("Update productId="+productId);
		// set customer as model attribute to pre-populate the form
		model.addAttribute("products", product);

		// send over our form
		return "updateProduct";
	}
	
	
	/*@RequestMapping(value="products/showFormForUpdate", method = RequestMethod.POST)
	public String showFormUpdatePOST(@RequestParam("productId") String productId,@ModelAttribute("products") Product products, Model model) {
		System.out.println("ttttttttttttttttt "+products.getProductId());
		productService.updateProduct(productId,products);
		return "redirect:/products";
	}*/
	
	@RequestMapping(value="products/showFormForUpdate/{id}", method = RequestMethod.POST)
	public String showFormUpdatePOST(@ModelAttribute("products") Product products,@PathVariable("id")String id) {
		System.out.println("ttttttttttttttttt "+products.getProductId()+" test "+id);
		productService.updateProduct(id,products);
		return "redirect:/products";
	}
	
	@RequestMapping(value="products/delete", method = RequestMethod.GET)
	public String showdelete(@RequestParam("productId") String productId){
		
		productService.deleteProduct(productId);
		
		return "redirect:/products";
	}
	

	// @RequestMapping(value = "/customerForm", method = RequestMethod.GET)
	// public String customerForm(Model model) {
	// CustomerForm customerForm = new CustomerForm();
	// model.addAttribute("customerForm", customerForm);
	// return "addCustomer";
	// }
	//
	// @RequestMapping(value = "/customerForm", method = RequestMethod.POST)
	// public String customerFormPOST(@Valid CustomerForm
	// customerForm,BindingResult result) {
	// if(result.hasErrors()){
	//
	// return "addCustomer";
	// }
	//
	// return "customers";
	// }
	@RequestMapping(value = "/products/addProduct", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("products") Product products, BindingResult result) {
		// save the customer using our service

		String[] supressFields = result.getSuppressedFields();
		if (supressFields.length > 0) {
			throw new RuntimeException(
					"Attempting to bind disallowed fields: " + StringUtils.arrayToCommaDelimitedString(supressFields));

		}
		System.out.println("saved successfully");
		// productService.addProduct(product);
		productService.addProduct(products);
		return "redirect:/products";
	}

	/*
	 * @RequestMapping(value = "/customerForm", method = RequestMethod.POST)
	 * public String customerFormPOST(@Valid CustomerForm
	 * customerForm,BindingResult result) { if(result.hasErrors()){
	 * 
	 * return "addCustomer"; }
	 * 
	 * return "customers"; }
	 */

}
