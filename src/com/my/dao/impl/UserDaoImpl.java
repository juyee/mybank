package com.my.dao.impl;
import java.util.List;
import com.my.dao.UserDao;
import com.my.entity.User;
import com.my.utils.Pager;

public class UserDaoImpl extends BaseDaoImpl<User> implements  UserDao{
	public Pager<User> findAllByPage(int pageNum, int pageSize) {
		return findByPage("from User e order by e.id desc", pageNum, pageSize);
	}

	public User login(String loginname, String password) {
		String hql = "select a from User a where a.loginname=? and a.password=?";
		Object[] param = { loginname, password };
		if (exeHQL(hql, param).size() > 0) {
			return (User) exeHQL(hql, param).get(0);
		} else {
			return null;
	}
	}

	public List findbyname(String name) {
		String hql = "from User a where a.name=?";
		Object[] param = {name };
		if (exeHQL(hql, param).size() > 0) {
			return exeHQL(hql, param);
		} else {
			return null;
	}
}
}
