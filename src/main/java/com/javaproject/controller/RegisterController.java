//package com.javaproject.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
////import org.springframework.http.HttpStatus;
////import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.javaproject.model.UserRegister;
//import com.javaproject.service.UserRegisterService;
//
//@Controller
//public class RegisterController {
//
//	@Autowired
//	UserRegisterService userregisterservice;
//	
//	@RequestMapping(value="/register", method=RequestMethod.GET)
//	@ResponseBody
//	public String Registerdata(@RequestBody List<UserRegister> list) {
//		UserRegister ul = new UserRegister();
//		
//		if(list.isEmpty()) {
//			ul.setResponse(500);
////			return new ResponseEntity<> (ul, HttpStatus.OK);
//		} else {
//			userregisterservice.insertdata(list);
//			ul.setResponse(200);
////			return new ResponseEntity<UserRegister>(ul, HttpStatus.OK);
//		}
//		return "home";
//	}
//}
