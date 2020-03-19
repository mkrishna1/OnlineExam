package com.javaproject.dao;

import com.javaproject.model.UserLogin;

public interface UserLoginDao {

	UserLogin userreg(String email, String password);
	
	int updateLoginStatus(int i, String name);	
	
	int fetchLoginStatus(String name);
	
	int checkuser(String email, String password);
}
