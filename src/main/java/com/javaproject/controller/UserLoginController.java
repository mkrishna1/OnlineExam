package com.javaproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javaproject.model.UserLogin;
import com.javaproject.service.UserLoginService;

@RestController
@Controller
public class UserLoginController {

	@Autowired
	private UserLoginService userloginservice;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(path="/login")
	@ResponseBody
	public ModelAndView Login(@RequestParam(value="email") String email, @RequestParam(value="password") String password) {		
		UserLogin l1 = new UserLogin();
		
		if(!email.isEmpty()&&!password.isEmpty()) {
			l1 = userloginservice.userreg(email, password);
		}
		
		if(l1 != null) {
			l1.setResponse(200);
//			return new ResponseEntity<UserLogin> (l1, HttpStatus.OK);
		} else {
			UserLogin c1 = new UserLogin();
			c1.setResponse(500);
//			return new ResponseEntity<> (l1, HttpStatus.OK);
		}
		return new ModelAndView("redirect:/home");
	}
}





//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.javaproject.model.UserLogin;
//import com.javaproject.service.UserLoginService;
//
//@Controller
//public class UserLoginController<userloginservice> {
//	
//	@Autowired
//	private UserLoginService userloginservice;
//	
//	@RequestMapping(value="/login", method = RequestMethod.GET)
//	public ModelAndView loginpage() {
//		return new ModelAndView ("index");
//	}
//	
//	@RequestMapping(value="/addlogin", method = RequestMethod.POST) 
//	@ResponseBody
//	public ModelAndView Login (@RequestParam(value="email") String email, @RequestParam(value="password") String password) {
//		if(!email.isEmpty()&&!password.isEmpty()&&userloginservice.checkuser(email, password)) {
//			UserLogin ul = userloginservice.userreg(email, password);
//			System.out.println(ul.getLoginid());
//			if(ul.getLoginid())
//		}
//	}
//}
