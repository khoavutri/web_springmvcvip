package com.trungtamjava.controller;

import org.apache.log4j.Logger;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class exceptioncontroller {
	public static Logger logger=Logger.getLogger(exceptioncontroller.class);
	@ExceptionHandler(value= {NoHandlerFoundException.class}) 
	public String exceptionHandler(Exception exception) {

		return "error/404";
	}
	@ExceptionHandler(value= {Exception.class}) 
	public String inter(Exception exception) {
		logger.error(exception);
	return "error/loi";
	}
}
