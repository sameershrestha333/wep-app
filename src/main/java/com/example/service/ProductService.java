package com.example.service;

import com.example.model.Product;

public interface ProductService {
	Product getProductById(String productId);
	void addProduct(Product product);
	
	boolean deleteProduct(String productId);
	
	void updateProduct(String productId,Product product);
}
