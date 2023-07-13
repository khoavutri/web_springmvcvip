package com.trungtamjava.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trungtamjava.model.khachhang;
import com.trungtamjava.service.UserService;

@Controller
public class sir {
	@Autowired
	UserService Userservice;
	@RequestMapping("chaoooo")
	public String mumomi() {
		
		return "free/xem";
	}
	
	@RequestMapping("sai")
	public String mjfdjkasfg() {
		
		return "free/dang";
	}
	@RequestMapping("uml")
	public String mammmjk(HttpServletRequest request) {
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		return "free/show";
	}
}
