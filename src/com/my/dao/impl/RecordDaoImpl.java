package com.my.dao.impl;
import java.util.List;

import com.my.dao.RecordDao;
import com.my.entity.Record;
import com.my.utils.Pager;

public class RecordDaoImpl extends BaseDaoImpl<Record> implements RecordDao{
	public Pager<Record> findAllByPage(int pageNum, int pageSize) {
		return findByPage("from Record c order by c.id", pageNum, pageSize);
	}



	public Pager<Record> findAllgetByPage(int pageNum, int pageSize) {
		String hql="from Record r where r.type= 1";
		return this.findByPage(hql, pageNum, pageSize);
	}

	public Pager<Record> findAllsalByPage(int pageNum, int pageSize) {
		String hql="from Record r where r.type= 2";
		return this.findByPage(hql, pageNum, pageSize);
	}



	public List<Record> findByName(String sname) {
		return getHibernateTemplate().find("from Record p where p.product.name like ?",sname);
	}

	public Pager<Record> findAllrecByPage(String seachAcc, int pageNum,
			int pageSize) {
		return findByPagewithParam("from Record c where c.fromaccount = ? or c.toaccount = ? order by c.id", seachAcc, pageNum, pageSize);
	}
}