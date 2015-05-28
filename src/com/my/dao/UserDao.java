package com.my.dao;
import java.util.List;
import com.my.entity.User;
import com.my.utils.Pager;
public interface UserDao extends BaseDao<User>{
	public Pager<User> findAllByPage(int pageNum, int pageSize);
	public User login(String loginName, String password);
	public List findbyname(String name);
}
