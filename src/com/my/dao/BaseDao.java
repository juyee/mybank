package com.my.dao;
import java.util.List;
import com.my.utils.Pager;
public interface BaseDao<T> {
	public List<T> findAll();
	public T findById(int id); 
	public void add(T t);
	public void upd(T t);
	public void del(T t);
	public void del(int id);
	public int getCount();
	public List exeHQL(String hql,Object[] param);
	public Pager<T> findByPage(final String hql,final int pageNum,final int pageSize);
	public Pager<T> findByName(final String hql,final int pageNum,final int pageSize);
}
