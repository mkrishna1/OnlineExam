package com.javaproject.controller;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.javaproject.form.LoginForm;

@Controller
public class AccessController {

//	@RequestMapping(value="/login", method=RequestMethod.GET)
//	public String getLoginForm() {
//		return "login";
//	}
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String login(@ModelAttribute(name="loginForm") LoginForm loginForm, Model model) {
//		
//		String username = loginForm.getUsername();
//		String password = loginForm.getPassword();
//		
//		if("admin".equals(username) && "admin".equals(password)) {
//			return "home";
//		}
//		model.addAttribute("invalidCredentials", true);
//		return "login";
//	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping(value="/about-us", method=RequestMethod.GET)
	public String getAboutUs() {
		return "about-us";
	}
	
	@RequestMapping(value="/exam-php", method=RequestMethod.GET)
	public String getExamPhp() {
		return "exam-php";
	}
	
	@RequestMapping(value="/exam-core-java", method=RequestMethod.GET)
	public String getCoreJava() {
		return "exam-core-java";
	}
	
	@RequestMapping(value="/exam-dot-net", method=RequestMethod.GET)
	public String getDotNet() {
		return "exam-dot-net";
	}
	
	@RequestMapping(value="/exam-android", method=RequestMethod.GET)
	public String getAndroid() {
		return "exam-android";
	}
	
	@RequestMapping(value="/exam-sap", method=RequestMethod.GET)
	public String getSap() {
		return "exam-sap";
	}
	
	@RequestMapping(value="/exam-aptitude", method=RequestMethod.GET)
	public String getAptitude() {
		return "exam-aptitude";
	}
	
	@RequestMapping(value="/contact-us", method=RequestMethod.GET)
	public String getContactUs() {
		return "contact-us";
	}
	
	@RequestMapping(value="/ans", method=RequestMethod.GET)
	public String getAns() {
		return "ans";
	}
	
	@RequestMapping(value="/footer", method=RequestMethod.GET)
	public String getFooter() {
		return "footer";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String getHome() {
		return "home";
	}
	
	@RequestMapping(value="/navbar", method=RequestMethod.GET)
	public String getNavBar() {
		return "navbar";
	}
	
	@RequestMapping(value="/user-forget-password", method=RequestMethod.GET)
	public String getForget() {
		return "user-forget-password";
	}
}
