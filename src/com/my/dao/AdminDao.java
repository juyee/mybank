package com.my.dao;
import com.my.entity.Admin;
import com.my.dao.BaseDao;
import com.my.utils.Pager;
public interface AdminDao extends BaseDao<Admin>{
	public Admin login(String loginname, String password);
	public void loginCountAdd(Admin admin);
	
}
