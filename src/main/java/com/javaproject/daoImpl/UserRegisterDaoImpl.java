package com.javaproject.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.javaproject.dao.UserRegisterDao;
import com.javaproject.model.UserRegister;

public class UserRegisterDaoImpl implements UserRegisterDao {

	@Autowired
	private JdbcTemplate jdbctemplate;
	
	@Override
	public void staffreg (List<UserRegister> list) {
		for (UserRegister s1:list) {
			String str = s1.getName();
				String[] Str = str.split(" ");
					for(int i=0;i<Str.length;) {
						String sql = "insert into register (name, email, password, phone, gender, city, state, pincode) value (?,?,?,?,?,?,?,?)";
						jdbctemplate.update(sql, s1.getName(), s1.getEmail(), s1.getPassword(), s1.getPhone(), s1.getGender(), s1.getCity(), s1.getState(), s1.getPincode());
						break;
					}
		}
	}
}
