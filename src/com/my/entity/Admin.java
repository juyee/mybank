package com.my.entity;

import java.io.Serializable;
import java.util.Date;

public class Admin implements Serializable {
	private int id;
	private String loginname;
	private String password;
	private String name;
	private String sex;
	private String workinglife;
	private Date birthdate;
	private int logincount;
	private int  dingdan;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLogincount() {
		return logincount;
	}
	public void setLogincount(int logincount) {
		this.logincount = logincount;
	}
	public int getDingdan() {
		return dingdan;
	}
	public void setDingdan(int dingdan) {
		this.dingdan = dingdan;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getWorkinglife() {
		return workinglife;
	}
	public void setWorkinglife(String workinglife) {
		this.workinglife = workinglife;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	
}
