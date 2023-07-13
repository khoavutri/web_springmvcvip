package com.trungtamjava.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;

import com.trungtamjava.model.khachhang;
import com.trungtamjava.service.UserService;

import com.trungtamjava.validator.uservalidator;

@Controller
public class ChiefController {
	@Autowired
	private uservalidator ussss;
	
	@Autowired
	private UserService service;
	@RequestMapping("/xulysai")
	public String ksjfd(HttpSession session,HttpServletRequest request) {
		
		return "Admin/home";
	}
	
	@RequestMapping("/signup")
	public String batdau(HttpServletRequest request) {
		
		return "Start/signup";
	}
	@RequestMapping("/login")
	public String batdau1(HttpServletRequest request) {
		
		return "Start/login";
	}
	
	@RequestMapping("/HandleLogin")
	public String Handlelogin(HttpServletRequest request,HttpSession session ) {
		String user =(String) request.getParameter("username");
		String pass = (String) request.getParameter("password");
		khachhang customer = (khachhang) service.Selectbyuser(user);
		if ((customer!=null) && (customer.getPassword().equals(pass)==true)) {
			if (customer.getAccess()==1) {
			List<khachhang>a = service.selectall();
			session.setAttribute("list", a);
		
			return"Admin/home";}
			else {return "User/home";}
 		} else {
 			request.setAttribute("loidangnhap", "Tên đăng nhập hoặc mật khẩu sai");
			return "Start/login";
		}
	}
	
	@RequestMapping("/HandleSignup")
	public String Handlelsignup(HttpServletRequest request) {
		khachhang customer = new khachhang();
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		String mail = request.getParameter("gmail");
		if (service.SelectbyGmail(user)!=null) {
			request.setAttribute("loiuser", "Tên đăng nhập đã tồn tại!");
		return "Start/signup";
		}
	if (service.SelectbyGmail(mail)!=null) {
			request.setAttribute("loimail", "gmail đã tồn tại!");
			return "Start/signup";
		}
		
		customer.setGmail(mail);
		customer.setPassword(pass);
		customer.setAccess(0);
		customer.setUser(user);
		service.add(customer);
		request.setAttribute("thanhcong", "Đăng ký thành công");
		return "Start/login";
	}
	

	@Autowired
	MailSender mailSender;

	@RequestMapping("/guimail")
	public String guiMail1() {
		return "SendMail/setmail";
	}

	@RequestMapping("/guimail2")
	public String guiuiijks(HttpServletRequest request) {
		String mail = (String) request.getParameter("mail");
		String subject = (String) request.getParameter("subject");
		String content = (String) request.getParameter("content");

		guiEmail("khoatest357@gmail.com", mail, subject, content);
	
		return "SendMail/show";

	}

	public void guiEmail(String from, String to, String subject, String content) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(from);
		mailMessage.setTo(to);
		mailMessage.setSubject(subject);
		mailMessage.setText(content);

		mailSender.send(mailMessage);
	}

}