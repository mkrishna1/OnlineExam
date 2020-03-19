package com.javaproject.service;

import com.javaproject.model.UserLogin;

public interface UserLoginService {

	UserLogin userreg(String email, String password);
	
	boolean updateloginstatus(int i, String name);

	int fetchLoginStatus(String name);

	boolean checkuser(String email, String password);
}
