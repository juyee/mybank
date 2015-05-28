package com.my.dao.impl;

import org.springframework.dao.support.DataAccessUtils;

import com.my.dao.AdminDao;
import com.my.entity.Admin;

public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao {

	public Admin login(String loginname, String password) {
		String hql = "select a from Admin a where a.loginname=? and a.password=?";
		Object[] param = { loginname, password };
		if (exeHQL(hql, param).size() > 0) {
			Admin admin =(Admin) exeHQL(hql, param).get(0);
			return admin;
		} else {
			return null;
		}
	}
	
	public void loginCountAdd(Admin admin) {
		admin.setLogincount(admin.getLogincount()+1);
		this.upd(admin);
		return;
	}


}
