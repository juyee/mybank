package com.my.utils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
/**
 * hibernate帮助类
 * @author cuiwei
 *
 */

public class HibernateUtils {
	//方便获得会话工厂
	private static SessionFactory factory;
	static {
		try {
			Configuration cfg = new Configuration().configure();
			factory = cfg.buildSessionFactory();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//获得session factory
	public static SessionFactory getSessionFactory() {
		return factory;
	}
	//获得session
	public static Session getSession() {
		return factory.openSession();
	}
	//关闭session
	public static void closeSession(Session session) {
		if (session != null) {
			if (session.isOpen()) {
				session.close();
			}
		}
	}
}
