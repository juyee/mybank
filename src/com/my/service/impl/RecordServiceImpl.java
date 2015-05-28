package com.my.service.impl;
import java.util.List;
import com.my.dao.RecordDao;
import com.my.entity.Record;
import com.my.service.RecordService;
import com.my.utils.Pager;
public  class RecordServiceImpl implements RecordService{
	private RecordDao recordDao;//需要注入
	public void addRecord(Record record) {
		recordDao.add(record);
	}
	public void delRecord(int id) {
		recordDao.del(id);
	}
	public Record findRecord(int id) {
		return recordDao.findById(id);
	}
	public List<Record> findRecords() {
		return recordDao.findAll();
	}
	public void updRecord(Record record) {
		recordDao.upd(record);
	}
	public Pager<Record> findAllByPage(int pageNum, int pageSize) {
		return  recordDao.findAllByPage(pageNum, pageSize);
	}
	public Pager<Record> findAllgetByPage(int pageNum, int pageSize) {
		return  recordDao.findAllgetByPage(pageNum, pageSize);
	}
	public Pager<Record> findAllsalByPage(int pageNum, int pageSize) {
		return  recordDao.findAllsalByPage(pageNum, pageSize);
	}
	public Pager<Record> findAllByPage(String seachAcc, int pageNum,
			int pageSize) {
		// TODO Auto-generated method stub
		return recordDao.findAllrecByPage(seachAcc,pageNum, pageSize);
	}
	//---
	public RecordDao getRecordDao() {
		return recordDao;
	}
	public void setRecordDao(RecordDao recordDao) {
		this.recordDao = recordDao;
	}
	public List<Record> findByName(String sname) {
		return recordDao.findByName(sname);
	}

	
	
}
