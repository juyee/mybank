package com.my.dao.impl;
import java.util.List;

import com.my.dao.AccDao;
import com.my.entity.Account;
import com.my.entity.User;
import com.my.utils.Pager;

public class AccDaoImpl extends BaseDaoImpl<Account> implements  AccDao{
	
	public Pager<Account> findAllByPage(int pageNum, int pageSize) {
		return findByPage("from Account e order by e.id", pageNum, pageSize);
	}

	//获得最大ID
	public String getNewAccNum(){  
		Integer maxid = (Integer)getSession().createQuery("select max(a.id) from Account a " ).uniqueResult();
		if(maxid==null){
			maxid=0;
		}
        String max=maxid+"";
        String accNum="6220"+this.lpad(max, 12, "0");
        return accNum;  
    }

	public List findbyname(String name) {
		String hql = "from Account a where a.username=?";
		Object[] param = {name };
		if (exeHQL(hql, param).size() > 0) {
			return exeHQL(hql, param);
		} else {
			return null;
	}
}
	public String lpad(String s, int n, String replace) {
		while (s.length() < n) {
			s = replace+s;
		}
		return s;
	
}

	public List<Account> findAccbyid(int id) {
		String hql = "from Account a where a.user.id=?";
		Object[] param = {id };
		if (exeHQL(hql, param).size() > 0) {
			return exeHQL(hql, param);
		} else {
			return null;
	}
}

	public User findUserByAcc(String accountNum) {
		String hql = "from Account a where a.accNum=?";
		Object[] param = {accountNum };
		if (exeHQL(hql, param).size() > 0) {
			Account acc= (Account) exeHQL(hql, param).get(0);
			return acc.getUser();
		} else {
			return null;
	}
	}
	public Account findByaccNum(String accountNum) {
		String hql = "from Account a where a.accNum=?";
		Object[] param = {accountNum };
		if (exeHQL(hql, param).size() > 0) {
			Account acc= (Account) exeHQL(hql, param).get(0);
			return acc;
		} else {
			return null;
	}
	}


}

