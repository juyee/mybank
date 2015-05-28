package com.my.dao;
import java.util.List;

import com.my.entity.Account;
import com.my.entity.User;
import com.my.utils.Pager;
public interface AccDao extends BaseDao<Account>{
	public Pager<Account> findAllByPage(int pageNum, int pageSize);
	public List findbyname(String name);
	//获得最大ID
	public String getNewAccNum();
	public List<Account> findAccbyid(int id);
	public Account findByaccNum(String accNum);
	public User findUserByAcc(String accNum);
}
