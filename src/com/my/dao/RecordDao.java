package com.my.dao;
import java.util.List;

import com.my.entity.Record;
import com.my.utils.Pager;
public interface RecordDao extends BaseDao<Record> {
	Pager<Record> findAllByPage(int pageNum,int pageSize);
	Pager<Record> findAllgetByPage(int pageNum, int pageSize);
	Pager<Record> findAllsalByPage(int pageNum, int pageSize);
	List<Record> findByName(String sname);
	Pager<Record> findAllrecByPage(String seachAcc, int pageNum, int pageSize);
}
