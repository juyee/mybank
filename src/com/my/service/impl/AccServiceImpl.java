package com.my.service.impl;
import java.util.List;
import com.my.dao.AccDao;
import com.my.entity.Account;
import com.my.entity.User;
import com.my.service.AccService;
import com.my.utils.Pager;
public class AccServiceImpl implements AccService{
	
	private AccDao accDao;//需要注入
	public void addAcc(Account acc) {
		accDao.add(acc);
	}
	public void delAcc(int id) {
		accDao.del(id);
	}
	//获得最新accnum
	public String getNewAccNum(){
		return accDao.getNewAccNum(); 
	}
	public Account findAcc(int id) {
		return accDao.findById(id);
	}
	public Account findAcc(String accNum) {
		return accDao.findByaccNum(accNum);
	}
	public 	User findUserByAcc(String accNum){
		return accDao.findUserByAcc( accNum);
	}
	public List<Account> findAccs() {
		return accDao.findAll();
	}
	public void updAcc(Account user) {
		accDao.upd(user);
	}
	public Pager<Account> findAllByPage(int pageNum, int pageSize) {
		return accDao.findAllByPage(pageNum, pageSize);
	}
	public Account findByaccNum(String accountNum) {//根据账号查询用户
		// TODO Auto-generated method stub
		return accDao. findByaccNum(accountNum);
	}
	//---
	public AccDao getAccDao() {
		return accDao;
	}
	public void setAccDao(AccDao accDao) {
		this.accDao = accDao;
	}
	public List findAccbyname(String name) {
		return accDao.findbyname(name);
	}
	public List<Account> findAccbyid(int id) {
		// TODO Auto-generated method stub
		return accDao.findAccbyid(id);
	}

	
	
}
