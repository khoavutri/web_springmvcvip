package com.trungtamjava.service;

import java.util.List;





import com.trungtamjava.model.khachhang;

public interface UserService {
 void add(khachhang Nhap);
	public void update(khachhang Nhap);
	
	public void deletebyid(int id);

	public khachhang Selectbyuser(String user);
	public khachhang SelectbyGmail(String gmail);
	public khachhang selectbyid(int id);
	public List<khachhang> selectall();
}
