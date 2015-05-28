package com.my.service.impl;
import java.util.List;
import com.my.dao.UserDao;
import com.my.entity.User;
import com.my.service.UserService;
import com.my.utils.Pager;
public class UserServiceImpl implements UserService{
	
	private UserDao userDao;//需要注入
	public void addUser(User user) {
		userDao.add(user);
	}
	public void delUser(int id) {
		userDao.del(id);
	}
	public User findUser(int id) {
		return userDao.findById(id);
	}
	public List<User> findUsers() {
		return userDao.findAll();
	}
	public void updUser(User user) {
		userDao.upd(user);
	}
	public Pager<User> findAllByPage(int pageNum, int pageSize) {
		return userDao.findAllByPage(pageNum, pageSize);
	}
	public User login(String loginName, String password) {
		return userDao.login(loginName, password);
	}
	public List findUserbyname(String name) {
		return userDao.findbyname(name);
	}
	//---
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	
	
}
