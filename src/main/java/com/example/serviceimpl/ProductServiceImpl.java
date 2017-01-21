package com.example.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.Productdao;
import com.example.model.Product;
import com.example.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private Productdao productDao;
	
	@Override
	public Product getProductById(String productId) {
		// TODO Auto-generated method stub
		return productDao.getProductById(productId);
	}

	@Override
	public void addProduct(Product product) {
		 productDao.addProduct(product);
	}

	@Override
	public boolean deleteProduct(String productId) {
		return  productDao.deleteProduct(productId);		
	}

	@Override
	public void updateProduct(String productId,Product product) {
		productDao.updateProduct(productId,product);
	}

}
