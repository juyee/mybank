package com.my.service.impl;
import java.util.List;
import com.my.dao.AdminDao;
import com.my.entity.Admin;
import com.my.service.AdminService;
import com.my.utils.Pager;
public class AdminServiceImpl implements AdminService{
	private AdminDao adminDao;//需要注入
	
	public void addAdmin(Admin admin) {
		adminDao.add(admin);
	}

	public void delAdmin(int id) {
		adminDao.del(id);		
	}

	public List<Admin> findAdmins() {
		return adminDao.findAll();
	}
	public Admin login(String loginname, String password) {
		return adminDao.login(loginname, password);
	}
	
	public void loginCountAdd(Admin admin) {
		 adminDao.loginCountAdd(admin);
		return;
	}
	//分页

	public void updAdmin(Admin admin) {
		adminDao.upd(admin);
		
	}

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public Admin findAdmin(int id) {
		return adminDao.findById(id);
	}


}