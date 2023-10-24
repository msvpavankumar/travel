package com.klef.demo;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class registerController {
	@Autowired
	registerService regservice;
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	@GetMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@GetMapping("/userdashboard")
	public String userdashboard()
	{
		return "userdashboard";
	}
	
	@GetMapping("/upload")
	public String upload()
	{
		return "upload";
	}
	@GetMapping("/express")
	public String express()
	{
		return "express";
	}
	
	@GetMapping("/thankyou")
	public String thankyou()
	{
		return "thankyou";
	}
	
	@GetMapping("/cart")
	public String cart()
	{
		return "cart";
	}
	@GetMapping("/error")
	public String error()
	{
		return "error";
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@GetMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@GetMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	
	@GetMapping("/payment")
	public String payment()
	{
		return "payment";
	}
	
	@GetMapping("/viewproducts")
	public String viewproducts()
	{
		return "viewproducts";
	}
	
	@GetMapping("/add")
	public String add()
	{
		return "add";
	}
	
	@GetMapping("/delete")
	public String delete()
	{
		return "delete";
	}
	
	@GetMapping("/modify")
	public String modify()
	{
		return "modify";
	}
	
	@GetMapping("/products")
	public String products()
	{
		return "products";
	}

	@PostMapping("/submitreg")
	public ModelAndView submitregdata(@ModelAttribute("reg") register reg) {
		regservice.addregisterrecord(reg);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		
		return mv;
	}
	
	@PostMapping("/checklogin")
	public String checklogin(@RequestParam String uname,@RequestParam String cpswd,HttpSession session,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		if(uname.equals("himatha@gmail.com") && cpswd.equals("himatha@07")) {
			return "admindashboard";
		}
		if(regservice.findByEmailAndPassword(uname,cpswd)!=null) {
			session=request.getSession();  
		    session.setAttribute("email",uname);
			return "userdashboard";
		}
		return "error";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,HttpServletRequest request) {
		session=request.getSession();  
	    session=request.getSession();  
	    session.invalidate(); 
	    return "login";
	  
	}
		
}
