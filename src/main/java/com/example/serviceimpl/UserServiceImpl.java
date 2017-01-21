package com.example.serviceimpl;

import org.springframework.stereotype.Service;

import com.example.model.User;
import com.example.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Override
	public boolean authenticate(User user) {
		
		if(user.getUser_name().equals("a")&&user.getPassword().equals("a"))
		{
			return true;
		}
		return false;
	}

}
