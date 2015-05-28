package com.my.dao.impl;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.my.dao.BaseDao;
import com.my.utils.Pager;
/**
 * HibernateDaoSupport通用dao
 * @author cuiwei
 * @param <T>泛型类
 */
public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T>{
	//泛型类
	private Class<T> clazz;
	//获取泛型的Class对象
	@SuppressWarnings("unchecked")
	private Class<T> getClazz() {
		if(clazz==null) {
			clazz = ((Class<T>)(((ParameterizedType)(this.getClass().getGenericSuperclass())).getActualTypeArguments()[0]));
		}
		return clazz;
	}
	// 查询所有
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		List<T> list = (List<T>) getHibernateTemplate().find("from " + getClazz().getName()+" o order by o.id");
		return list;
	}
	// 查询单个
	@SuppressWarnings("unchecked")
	public T findById(int id) {
		return (T) getHibernateTemplate().get(getClazz(), id);
	}
	// 通过名字查询单个
	@SuppressWarnings("unchecked")
		
	// 保存
	public void add(T t) {
		getHibernateTemplate().save(t);
	}
	// 修改
	public void upd(T t) {
		getHibernateTemplate().update(t);
	}
	// 删除
	public void del(T t) {
		getHibernateTemplate().delete(t);
	}
	public void del(int id) {
		getHibernateTemplate().delete(findById(id));
	}
	//获得总记录数
	public int getCount(){  
        int count =  DataAccessUtils.intResult(getHibernateTemplate().find("select count(*) from " + getClazz().getName()));  
        return count;  
    }	

	//分页查询
	@SuppressWarnings("unchecked")
	public Pager<T> findByPage(final String hql,final int pageNum,final int pageSize){
		List<T> list = (List<T>)getHibernateTemplate().executeFind(new HibernateCallback(){  
        public Object doInHibernate(Session session) throws HibernateException, SQLException {  
                Query query = session.createQuery(hql);  
                query.setFirstResult((pageNum-1)*pageSize-1);  
                query.setMaxResults(pageSize);  
                List list = query.list();  
                return list;  
            }  
        });
		Pager<T> pager=new Pager<T>();
		pager.setList(list);
		pager.setPageNum(pageNum);
		pager.setPageSize(pageSize);
		pager.setTotalPage(getCount()/pageSize==0?getCount()/pageSize:getCount()/pageSize+1);
		pager.setTotalRow(getCount());
		return pager;
	}
	//分页查询
	@SuppressWarnings("unchecked")
	public Pager<T> findByPagewithParam(final String hql,final String param, final int pageNum,final int pageSize){
		List<T> list = (List<T>)getHibernateTemplate().executeFind(new HibernateCallback(){  
        public Object doInHibernate(Session session) throws HibernateException, SQLException {  
                Query query = session.createQuery(hql);  
                query.setString(0,  param);
                query.setString(1,  param);
                query.setFirstResult((pageNum-1)*pageSize-1);  
                query.setMaxResults(pageSize);  
                List list = query.list();  
                return list;  
            }  
        });
		Pager<T> pager=new Pager<T>();
		pager.setList(list);
		pager.setPageNum(pageNum);
		pager.setPageSize(pageSize);
		pager.setTotalPage(getCount()/pageSize==0?getCount()/pageSize:getCount()/pageSize+1);
		pager.setTotalRow(getCount());
		return pager;
	}
	//分页根据名字查询
	@SuppressWarnings("unchecked")
	public Pager<T> findByName(final String hql,final int pageNum,final int pageSize){
		List<T> list = (List<T>)getHibernateTemplate().executeFind(new HibernateCallback(){  
            public Object doInHibernate(Session session) throws HibernateException, SQLException {  
                Query query = session.createQuery(hql);  
                query.setFirstResult((pageNum-1)*pageSize-1);  
                query.setMaxResults(pageSize);  
                List list = query.list();  
                return list;  
            }  
        });
		Pager<T> pager=new Pager<T>();
		pager.setList(list);
		pager.setPageNum(pageNum);
		pager.setPageSize(pageSize);
		pager.setTotalPage(getCount()/pageSize==0?getCount()/pageSize:getCount()/pageSize+1);
		pager.setTotalRow(getCount());
		return pager;
	}
	public List exeHQL(String hql, Object[] param) {
		return getHibernateTemplate().find(hql,param);
	}
	
	/**
	 * 自定义查询,限定结果的个数
	 * @param hql 带?的hql语句
	 * @param param 对应?的参数数组
	 * @param begin 起始索引
	 * @param count 限定个数
	 * @return T型集合
	 */
	@SuppressWarnings("unchecked")
	public List exeHQL(final String hql,final Object[] param,final int begin,final int count) {
		List<T> list = (List<T>)getHibernateTemplate().executeFind(new HibernateCallback(){  
            public Object doInHibernate(Session session) throws HibernateException, SQLException {  
                Query query = session.createQuery(hql);
                for(int i=0;i<param.length;i++){
                	query.setParameter(i, param[i]);
                }
                query.setFirstResult(begin);  
                query.setMaxResults(count);  
                List list = query.list();  
                return list;  
            }  
        });
		return list;
	}
	/**
	 * 自定义查询,限定结果的个数
	 * @param hql 不带?的hql语句
	 * @param begin 起始索引
	 * @param count 限定个数
	 * @return T型集合
	 */
	@SuppressWarnings("unchecked")
	public List exeHQL(final String hql,final int begin,final int count) {
		List<T> list = (List<T>)getHibernateTemplate().executeFind(new HibernateCallback(){  
            public Object doInHibernate(Session session) throws HibernateException, SQLException {  
                Query query = session.createQuery(hql);
                query.setFirstResult(begin);  
                query.setMaxResults(count);  
                List list = query.list();  
                return list;  
            }  
        });
		return list;
	}
}
