package com.my.service;
import java.util.List;
import com.my.entity.Account;
import com.my.entity.User;
import com.my.utils.Pager;
public interface AccService {
	void addAcc(Account acc);
	void updAcc(Account acc);
	void delAcc(int id);
	String getNewAccNum();
	Account findAcc(int id);
	Account findAcc(String accNum);
	User findUserByAcc(String accNum);
	List<Account> findAccs();
	Pager<Account> findAllByPage(int pageNum, int pageSize);
	List findAccbyname(String name);
	List<Account> findAccbyid(int id);
}
