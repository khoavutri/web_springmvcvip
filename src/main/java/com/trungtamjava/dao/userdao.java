package com.trungtamjava.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

import com.trungtamjava.entity.Customer;
import com.trungtamjava.model.khachhang;

public interface userdao {
	public void add(Customer Nhap);
	public void update(Customer Nhap);
	
	public void deletebyid(int id);

	public Customer Selectbyuser(String user);
	public Customer SelectbyGmail(String gmail);
	public Customer selectbyid(int id);
	public List<Customer> selectall();
		
	
}
