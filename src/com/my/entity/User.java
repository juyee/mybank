package com.my.entity;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{
	private int id;
	private String loginname;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	private String password;
	private String expassword;
	private String name;
	private String sex;
	private String address;
	private String email;
	private String IDcardNum;
	private int state;  //用户账号状态 0 未激活1已激活
	private int logincount;  //登录次数
	private Date registedate;//注册日期
	private String tel;
	private Double useableBalance;
	private String remark;
	private Admin admin;
	

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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getLogincount() {
		return logincount;
	}
	public void setLogincount(int logincount) {
		this.logincount = logincount;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public Date getRegistedate() {
		return registedate;
	}
	public void setRegistedate(Date registedate) {
		this.registedate = registedate;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getUseableBalance() {
		return useableBalance;
	}
	public void setUseableBalance(Double useableBalance) {
		this.useableBalance = useableBalance;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	public String getIDcardNum() {
		return IDcardNum;
	}
	public void setIDcardNum(String iDcardNum) {
		IDcardNum = iDcardNum;
	}
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	public String getExpassword() {
		return expassword;
	}
	public void setExpassword(String expassword) {
		this.expassword = expassword;
	}
	
}
