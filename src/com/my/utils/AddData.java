package com.my.utils;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;
import com.my.entity.Admin;

public class AddData {
	public void add() throws Exception{
		Session session=HibernateUtils.getSession();
		session.beginTransaction();
	
		//管理员
		Admin admin1=new Admin();
		admin1.setLoginname("my");
		admin1.setPassword("my");
		admin1.setName("李丽");
		admin1.setSex("女");
		admin1.setWorkinglife("0");
		Admin admin2=new Admin();
		admin2.setLoginname("admin");
		admin2.setPassword("admin");
		admin2.setName("李华");
		admin2.setSex("男");
		admin2.setWorkinglife("0");
		session.save(admin1);
		session.save(admin2);
//		//职务
//
//		//员工
//		Employ employ1=new Employ();
//		employ1.setLoginname("zs");
//		employ1.setPassword("zs");
//		employ1.setName("张三");
//		employ1.setSex("男");
//		employ1.setHiredate(new SimpleDateFormat("yyyy-MM-dd").parse("2010-01-01"));
//		employ1.setBirthdate(new SimpleDateFormat("yyyy-MM-dd").parse("1990-03-03"));
//		employ1.setTel("33333");
//		employ1.setRemark("无");
//		employ1.setJob(job1);
//		Employ employ2=new Employ();
//		employ2.setLoginname("ls");
//		employ2.setPassword("ls");
//		employ2.setName("李四");
//		employ2.setSex("女");
//		employ2.setHiredate(new SimpleDateFormat("yyyy-MM-dd").parse("2011-01-01"));
//		employ2.setBirthdate(new SimpleDateFormat("yyyy-MM-dd").parse("1993-04-04"));
//		employ2.setTel("44444");
//		employ2.setRemark("无");
//		employ2.setJob(job2);
//		Employ employ3=new Employ();
//		employ3.setLoginname("ww");
//		employ3.setPassword("ww");
//		employ3.setName("王五");
//		employ3.setSex("男");
//		employ3.setHiredate(new SimpleDateFormat("yyyy-MM-dd").parse("2011-01-01"));
//		employ3.setBirthdate(new SimpleDateFormat("yyyy-MM-dd").parse("1992-05-05"));
//		employ3.setTel("55555");
//		employ3.setRemark("无");
//		employ3.setJob(job3);
//		session.save(employ1);
//		session.save(employ2);
//		session.save(employ3);
//		//仓库
//		Storehouse sh1=new Storehouse();
//		sh1.setName("A仓库");
//		sh1.setArea(1000);
//		sh1.setAddress("郑州市花园路");
//		sh1.setRemark("无");
//		sh1.setEmploy(employ1);
//		Storehouse sh2=new Storehouse();
//		sh2.setName("B仓库");
//		sh2.setArea(1000);
//		sh2.setAddress("郑州市金水路");
//		sh2.setRemark("无");
//		sh2.setEmploy(employ1);
//		Storehouse sh3=new Storehouse();
//		sh3.setName("C仓库");
//		sh3.setArea(1000);
//		sh3.setAddress("郑州市农业路");
//		sh3.setRemark("无");
//		sh3.setEmploy(employ1);
//		session.save(sh1);
//		session.save(sh2);
//		session.save(sh3);
//		//公司
//		Company com1=new Company();
//		com1.setName("O公司");
//		com1.setType("供货商");
//		com1.setAddress("北京");
//		com1.setMgrname("张经理");
//		com1.setMgrtel("11111");
//		com1.setRemark("主要供货手机");
//		Company com2=new Company();
//		com2.setName("P公司");
//		com2.setType("供货商");
//		com2.setAddress("上海");
//		com2.setMgrname("李经理");
//		com2.setMgrtel("12222");
//		com2.setRemark("主要供货手机");
//		Company com3=new Company();
//		com3.setName("Q公司");
//		com3.setType("销售商");
//		com3.setAddress("深圳");
//		com3.setMgrname("王经理");
//		com3.setMgrtel("13333");
//		com3.setRemark("主要生产相机");
//		session.save(com1);
//		session.save(com2);
//		session.save(com3);
//		//大分类
//		BigType bt1=new BigType();
//		bt1.setName("手机");
//		BigType bt2=new BigType();
//		bt2.setName("相机");
//		session.save(bt1);
//		session.save(bt2);
//		//小分类
//		SmallType st1=new SmallType();
//		st1.setName("三星");
//		st1.setBigtype(bt1);
//		SmallType st2=new SmallType();
//		st2.setName("苹果");
//		st2.setBigtype(bt1);
//		SmallType st3=new SmallType();
//		st3.setName("佳能");
//		st3.setBigtype(bt2);
//		SmallType st4=new SmallType();
//		st4.setName("尼康");
//		st4.setBigtype(bt2);
//		session.save(st1);
//		session.save(st2);
//		session.save(st3);
//		session.save(st4);
//		//商品
//		Product p1=new Product();
//		p1.setName("三星S5");
//		p1.setPrice(3900.0);
//		p1.setCount(100);
//		p1.setRemark("无");
//		p1.setSmallType(st1);
//		p1.setStorehouse(sh1);
//		Product p2=new Product();
//		p2.setName("三星Note3");
//		p2.setPrice(3600.0);
//		p2.setCount(50);
//		p2.setRemark("无");
//		p2.setSmallType(st1);
//		p2.setStorehouse(sh1);
//		Product p3=new Product();
//		p3.setName("iphone5s");
//		p3.setPrice(3999.0);
//		p3.setCount(50);
//		p3.setRemark("无");
//		p3.setSmallType(st1);
//		p3.setStorehouse(sh1);
//		session.save(p1);
//		session.save(p2);
//		session.save(p3);
//		//进销记录
//		Record r1=new Record();
//		r1.setType(1);//进货
//		r1.setHappendate(new Date(2015,1, 3));
////		r1.setCount(100);
////		r1.setProduct(p1);
////		r1.setProvider_price(3900.0);
////		r1.setTotalPrice(390000.0);
////		r1.setProvider(com1);
////		r1.setEmploy(employ2);
////		Record r2=new Record();
////		r2.setType(1);//进货
////		r2.setHappendate(new Date(2015,1, 3));
////		r2.setCount(50);
////		r2.setProduct(p2);
////		r2.setProvider_price(3600.0);
////		r2.setTotalPrice(180000.0);
////		r2.setProvider(com1);
////		r2.setEmploy(employ2);
////		Record r3=new Record();
////		r3.setType(1);//进货
////		r3.setHappendate(new Date(2015,1, 3));
////		r3.setCount(50);
////		r3.setProduct(p3);
////		r3.setProvider_price(3999.0);
////		r3.setTotalPrice(199950.0);
////		r3.setProvider(com2);
////		r3.setEmploy(employ2);
//		session.save(r1);
////		session.save(r2);
////		session.save(r3);
		session.getTransaction().commit();
		session.close();
}
	public static void main(String[] args) throws Exception{
		AddData ad=new AddData();
		ad.add();
	}
}
