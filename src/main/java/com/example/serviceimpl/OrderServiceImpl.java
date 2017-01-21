package com.example.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.Productdao;
import com.example.model.Product;
import com.example.service.OrderService;


@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private Productdao productDao;
	
	@Override
	public void processOrder(String productId, int qty) {
		if(qty>0){
			Product productOrder=productDao.getProductById(productId);
			
			productOrder.setUnitsInStock(productOrder.getUnitsInStock()-qty);
			
			
		}
		else{
			throw new IllegalArgumentException("Quatity is less than zero "+qty);
		}
		
		
		
	}

	

}
