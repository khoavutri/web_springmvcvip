package com.trungtamjava.model;

public class khachhang {
	private int id;
	private String user;
	
	private String password;
	private int access;
	private String gmail;

	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	
	public khachhang(int id, String user, String password, int access, String gmail) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.access = access;
		this.gmail = gmail;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAccess() {
		return access;
	}
	public void setAccess(int access) {
		this.access = access;
	}
	public khachhang() {
		
	}
	
	
	
}
