package com.trungtamjava.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.trungtamjava.dao.userdao;
import com.trungtamjava.entity.Customer;


@Repository
@org.springframework.transaction.annotation.Transactional
public class UserDaoImpl implements userdao {
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void add(Customer Nhap) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(Nhap);
	}

	@Override
	public void update(Customer Nhap) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(Nhap);
	}

	@Override
	public void deletebyid(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(selectbyid(id));
	}

	

	@Override
	public Customer Selectbyuser(String user) {
		List<Customer>customers = selectall();
		for (Customer customer:customers) {
			if (customer.getUsername().equals(user)) {
				return customer;
			}
		}
		return null;
		
	}

	@Override
	public Customer SelectbyGmail(String gmail) {
		List<Customer>customers = selectall();
		for (Customer customer:customers) {
			if (customer.getGmail().equals(gmail)) {
				return customer;
			}
		}
		return null;
	}

	@Override
	public Customer selectbyid(int id) {
		// TODO Auto-generated method stub
		
	Customer c = (Customer) sessionFactory.getCurrentSession().get(Customer.class, id);
		return c;
	}

	@Override
	public List<Customer> selectall() {
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Customer.class);
		
		return criteria.list();
	}
	
	//quy tac dat ten co ban nhat cua Java, e theo nhe. 


}
