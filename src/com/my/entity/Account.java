package com.my.entity;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Account implements Serializable{
	private int id;
	private String username;
	private String accNum;
	private int state;  //账号状态 0 未激活1已激活
	private int type;  //账号状态 0 主账号1 副账号
	private Date registedate;//注册日期
	private Double banlance;//余额
	private String remark;
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Date getRegistedate() {
		return registedate;
	}
	public void setRegistedate(Date registedate) {
		this.registedate = registedate;
	}
	public Double getBanlance() {
		return banlance;
	}
	public void setBanlance(Double banlance) {
		this.banlance = banlance;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAccNum() {
		return accNum;
	}
	public void setAccNum(String accNum) {
		this.accNum = accNum;
	}
	
	
}
