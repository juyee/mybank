package com.my.service;
import java.util.List;
import com.my.entity.User;
import com.my.utils.Pager;
public interface UserService {
	void addUser(User employ);
	void updUser(User employ);
	void delUser(int id);
	User findUser(int id);
	User login(String loginName,String password);
	List<User> findUsers();
	Pager<User> findAllByPage(int pageNum, int pageSize);
	List findUserbyname(String name);
}
