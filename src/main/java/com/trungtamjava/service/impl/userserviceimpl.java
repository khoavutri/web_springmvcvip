package com.trungtamjava.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trungtamjava.dao.userdao;
import com.trungtamjava.entity.Customer;

import com.trungtamjava.model.khachhang;
import com.trungtamjava.service.UserService;
@Service
public class userserviceimpl implements UserService {
	@Autowired
	userdao userdao;

	@Override
	public void add(khachhang Nhap) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setAcess(0);
		customer.setGmail(Nhap.getGmail());
		customer.setPassword(Nhap.getPassword());
		customer.setUsername(Nhap.getUser());
		
		userdao.add(customer);
	}

	@Override
	public void update(khachhang Nhap) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setAcess(0);
		customer.setGmail(Nhap.getGmail());
		customer.setPassword(Nhap.getPassword());
		customer.setUsername(Nhap.getUser());
		userdao.update(customer);
	}

	@Override
	public void deletebyid(int id) {
		// TODO Auto-generated method stub
		Customer customer = userdao.selectbyid(id);
		if (customer != null) {
			userdao.deletebyid(id);
		}
	}

	@Override
	public khachhang Selectbyuser(String user) {
		// TODO Auto-generated method stub
		Customer customer = userdao.Selectbyuser(user);
		khachhang hang = new khachhang();
		if (customer==null) {
		return null;
		} else {
			
			hang.setId(customer.getId());
			hang.setAccess(customer.getAcess());
			hang.setGmail(customer.getGmail());
			hang.setUser(customer.getUsername());
			hang.setPassword(customer.getPassword());
			return hang;
			}
		
		
	}

	@Override
	public khachhang SelectbyGmail(String gmail) {
		// TODO Auto-generated method stub
		Customer customer = userdao.SelectbyGmail(gmail);
		khachhang hang = new khachhang();
		if (customer==null) {
		return null;
		} else {
			
			hang.setId(customer.getId());
			hang.setAccess(customer.getAcess());
			hang.setGmail(customer.getGmail());
			hang.setUser(customer.getUsername());
			hang.setPassword(customer.getPassword());
			return hang;
			}
		
	}

	@Override
	public khachhang selectbyid(int id) {
		// TODO Auto-generated method stub
		Customer customer = userdao.selectbyid(id);
		khachhang hang = new khachhang();
		if (customer==null) {
		return null;
		} else {
		
			hang.setId(customer.getId());
			hang.setAccess(customer.getAcess());
			hang.setGmail(customer.getGmail());
			hang.setUser(customer.getUsername());
			hang.setPassword(customer.getPassword());
			return hang;
			}
		
	}

	@Override
	public List<khachhang> selectall() {
		List<Customer>customers = userdao.selectall();
		List<khachhang>khachhangs = new ArrayList<khachhang>();
		for (Customer customer : customers) {
			khachhang hang = new khachhang();
			hang.setId(customer.getId());
			hang.setAccess(customer.getAcess());
			hang.setGmail(customer.getGmail());
			hang.setUser(customer.getUsername());
			hang.setPassword(customer.getPassword());
			khachhangs.add(hang);
		}
		return khachhangs;
		
	}

	

}
