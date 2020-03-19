package com.javaproject.daoImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javaproject.dao.UserLoginDao;
import com.javaproject.model.UserLogin;

@Transactional
@Repository
public class UserLoginDaoImpl implements UserLoginDao{

	@Autowired
	private JdbcTemplate jdbctemplate;
	
	@Override
	public UserLogin userreg(String email, String password) {
		
		String sql = "select * from login where email=? and password=?";
		return jdbctemplate.queryForObject(sql,new BeanPropertyRowMapper<UserLogin>(UserLogin.class),email,password);
	}
	
	@Override
	public int updateLoginStatus(int i, String name) {
		String sql = "update login set loginstatus=? where name=?";
		return jdbctemplate.update(sql,i,name);	
	}
	
	@Override
	public int fetchLoginStatus(String name) {
		String sql = "select loginstatus from login where username=?";
		return jdbctemplate.queryForObject(sql,Integer.class,name);
	}
	
	@Override
	public int checkuser(String email, String password) {
		String sql = "SELECT count(*) from login where username=? and password=?";
		return jdbctemplate.queryForObject(sql,Integer.class,email,password);
	}
}
