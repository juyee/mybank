package com.my.entity;

import java.io.Serializable;
import java.util.Date;

public class Record implements Serializable{
	
	private int id;
	private String username;
	private String fromaccount;
	private String toaccount;
	private int type;//1存钱2取钱3转账
	private Double changemoney;//交易金额
	private Date happendate;
	private  Admin admin;//柜员

	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
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
	public Date getHappendate() {
		return happendate;
	}
	public void setHappendate(Date happendate) {
		this.happendate = happendate;
	}


	public String getFromaccount() {
		return fromaccount;
	}
	public void setFromaccount(String fromaccount) {
		this.fromaccount = fromaccount;
	}
	public String getToaccount() {
		return toaccount;
	}
	public void setToaccount(String toaccount) {
		this.toaccount = toaccount;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Double getChangemoney() {
		return changemoney;
	}
	public void setChangemoney(Double changemoney) {
		this.changemoney = changemoney;
	}
	
}
