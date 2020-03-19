package com.javaproject.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.dao.UserLoginDao;
import com.javaproject.model.UserLogin;
import com.javaproject.service.UserLoginService;

@Service
public class UserLoginServiceImpl implements UserLoginService{

	@Autowired
	private UserLoginDao userlogindao;
	
	@Override
	public UserLogin userreg(String email, String password) {
		UserLogin log = userlogindao.userreg(email, password);
		System.out.println(log.getLoginid());
		return log;
	}
	
	public boolean updateloginstatus(int i, String name) {
		boolean status = false;
		if(userlogindao.updateLoginStatus(i, name)>0) {
			status = true;
		}
		return status;
	}
	
	@Override
	public int fetchLoginStatus(String name) {
		return userlogindao.fetchLoginStatus(name);
	}
	
	@Override
	public boolean checkuser(String email, String password) {
		boolean status=false;
		if((userlogindao.checkuser(email,password))>0)
		{
			status=true;
		}
		System.out.println("status"+status);
		return status;
	}
}
