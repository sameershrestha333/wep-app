package com.example.dao;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.model.Product;

@Repository
public class ProductDaoImpl implements Productdao {
	private final List<Product> productsList = new ArrayList<Product>();

	@Override
	public List<Product> getAllProducts() {
		return productsList;
	}

	public ProductDaoImpl() {

		Product iphone = new Product();
		iphone.setProductId("101");
		iphone.setName("iphone 7");
		iphone.setUnitPrice(new BigDecimal(600));
		iphone.setDescription("Latest iphone");
		iphone.setManufacturer("Apple");
		iphone.setCategory("phone");
		iphone.setUnitsInStock(300);
		iphone.setUnitsInOrder(20);
		iphone.setDiscontinued(false);
		iphone.setCondition("good");

		Product labtop = new Product();
		labtop.setProductId("102");
		labtop.setName("Dell inspirin");
		labtop.setUnitPrice(new BigDecimal(450));
		labtop.setDescription("intel CORE i7");
		labtop.setManufacturer("Dell");
		labtop.setCategory("Labtop");
		labtop.setUnitsInStock(25);
		labtop.setUnitsInOrder(2);
		labtop.setDiscontinued(false);
		labtop.setCondition("good");

		Product mobile = new Product();
		mobile.setProductId("103");
		mobile.setName("Samsung galaxy");
		mobile.setUnitPrice(new BigDecimal(250));
		mobile.setDescription("Touch Screen");
		mobile.setManufacturer("Samsung");
		mobile.setCategory("Mobile");
		mobile.setUnitsInStock(40);
		mobile.setUnitsInOrder(5);
		mobile.setDiscontinued(false);
		mobile.setCondition("new");

		Product watch = new Product();
		watch.setProductId("104");
		watch.setName("Omega Z4");
		watch.setUnitPrice(new BigDecimal(750));
		watch.setDescription("Italian Design");
		watch.setManufacturer("Omega");
		watch.setCategory("Labtop");
		watch.setUnitsInStock(50);
		watch.setUnitsInOrder(2);
		watch.setDiscontinued(false);
		watch.setCondition("good");

		productsList.add(iphone);
		productsList.add(labtop);
		productsList.add(mobile);
		productsList.add(watch);

	}

	@Override
	public Product getProductById(String productId) {
		Product product = null;

		if (productId != null) {

			for (Product p : productsList) {
				if (p != null && p.getProductId().equals(productId)) {
					product = p;
					break;
				}
			}
			if (product == null) {
				throw new IllegalArgumentException("No result with product Id :" + productId);
			}

		} else {
			throw new IllegalArgumentException("Product Id is null");
		}
		return product;
	}

	@Override
	public void addProduct(Product product) {
		System.out.println("Added Successfully");
		productsList.add(product);
	}

	@Override
	public boolean deleteProduct(String productId) {

		boolean status = false;

		for (int i = 0; i < productsList.size(); i++) {
			if (productsList.get(i).getProductId().equals(productId)) {
				productsList.remove(i);
				System.out.println("Data deleted successfully.");

				return true;
			}
		}

		return status;
	}

	@Override
	public void updateProduct(String productId, Product product) {
		System.out.println(productId);
		Product p = this.getProductById(productId);
		for (int i = 0; i < productsList.size(); i++) {
			// System.out.println(p.getProductId());
			// System.out.println(p.getCondition());

			if (productsList.get(i).getProductId().equals(productId)) {
				productsList.get(i).setProductId(product.getProductId());
				productsList.get(i).setName(product.getName());
				productsList.get(i).setUnitPrice(product.getUnitPrice());
				productsList.get(i).setDescription(product.getDescription());
				productsList.get(i).setManufacturer(product.getManufacturer());
				productsList.get(i).setCategory(product.getCategory());
				productsList.get(i).setUnitsInStock(product.getUnitsInStock());

			}
		}
	}
	// for (int i = 0; i < productsList.size(); i++) {
	// System.out.println(productsList.get(i).getProductId());
	// //if (listOfProduct.get(i).getProductId().equals(editProductId)) {
	//
	// if(productsList.get(i).getProductId().equalsIgnoreCase(productId)) {
	//// if(productsList.get(i).getProductId().equalsIgnoreCase(productId))
	// System.out.println("88888888888888888888"+productId);
	//
	// productsList.get(i).setProductId(product.getProductId());
	// productsList.get(i).setName(product.getName());
	// productsList.get(i).setUnitPrice(product.getUnitPrice());
	// productsList.get(i).setDescription(product.getDescription());
	// productsList.get(i).setCategory(product.getCategory());
	//
	// productsList.get(i).setUnitsInStock(product.getUnitsInStock());
	//
	// productsList.get(i).setCondition(product.getCondition());
	// System.out.println("Updated producted");
	// }
	// }

	/*
	 * @Override public boolean editProduct(String editProductId, Product
	 * product) {
	 * 
	 * boolean editSuccess = false;
	 * 
	 * for (int i = 0; i < listOfProduct.size(); i++) {
	 * 
	 * if (listOfProduct.get(i).getProductId().equals(editProductId)) {
	 * 
	 * listOfProduct.get(i).setProductId(product.getProductId());
	 * listOfProduct.get(i).setName(product.getName());
	 * listOfProduct.get(i).setUnitPrice(product.getUnitPrice());
	 * listOfProduct.get(i).setDescription(product.getDescription());
	 * listOfProduct.get(i).setManufacturer(product.getManufacturer());
	 * listOfProduct.get(i).setCategory(product.getCategory());
	 * listOfProduct.get(i).setUnitsInStock(product.getUnitsInStock());
	 * 
	 * editSuccess = true; } } return editSuccess; }
	 */

}
