package com.trungtamjava.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.trungtamjava.model.khachhang;
import com.trungtamjava.service.UserService;

public class ServiceIO {
	
	@Autowired
	private static UserService service;
	
	public static List<khachhang> selec(){
		
		if (service.selectall()!=null) {
			return service.selectall();	
	} else {
		return null;
	}
	
		
}
	


}
