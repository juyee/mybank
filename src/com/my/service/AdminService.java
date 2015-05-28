package com.my.service;
import java.util.List;
import com.my.entity.Admin;
import com.my.utils.Pager;

public interface AdminService {
	void addAdmin(Admin admin);

	void updAdmin(Admin admin);

	void delAdmin(int id);

	Admin login(String loginname, String password);

	
	Admin findAdmin(int id);
	
    void loginCountAdd(Admin admin);
    
	List<Admin> findAdmins();
}
