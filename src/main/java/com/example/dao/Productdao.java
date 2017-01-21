package com.example.dao;

import java.util.List;

import com.example.model.Product;

public interface Productdao {
	List<Product> getAllProducts();
	Product getProductById(String productId);
	void addProduct(Product product);
	boolean deleteProduct(String productId);
	void updateProduct(String productId,Product product);

}
