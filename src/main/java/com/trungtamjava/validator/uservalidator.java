package com.trungtamjava.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.trungtamjava.model.khachhang;
@Component
public class uservalidator implements Validator{

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return khachhang.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		khachhang use = (khachhang) target;
		if(use.getUser().length()<=0) {
			errors.rejectValue("user", "feild.requai");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password","feild.requai");
		if(use.getPassword().length()<6 || use.getPassword().length()>12) {
			errors.rejectValue("password", "password.invalid");
		}
	}

}
