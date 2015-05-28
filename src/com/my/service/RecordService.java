package com.my.service;
import java.util.List;
import com.my.entity.Record;
import com.my.utils.Pager;
public interface RecordService {
	void addRecord(Record record);
	void updRecord(Record record);
	void delRecord(int id);
	Record findRecord(int id);
	List<Record> findRecords();
	Pager<Record> findAllByPage(int pageNum,int pageSize);
	Pager<Record> findAllgetByPage(int pageNum, int pageSize);
	Pager<Record> findAllsalByPage(int pageNum, int pageSize);
	List<Record> findByName(String sname);
	Pager<Record> findAllByPage(String seachAcc, int pageNum, int pageSize);
}
