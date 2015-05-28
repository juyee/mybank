package com.my.action;
import java.util.List;

import com.my.entity.Account;
import com.my.entity.Record;
import com.my.entity.User;
import com.my.service.AccService;
import com.my.service.RecordService;
import com.my.service.UserService;
import com.my.utils.Pager;
public class RecordAction extends BaseAction{
	private int pageNum;
	private int pageSize=6;//设定页大小
	private Pager<Record> pager;
	private RecordService recordService;//需要注入
	private AccService accountService;//需要注入
	private UserService userService;//需要注入
	private Record record=new Record();
	private User user=new User();
	private String  accountNum;
	private List<Record> records;
	private List<Account> accounts;
	private String byname;
	private String password;
	private String toaccount;
	private String fromaccount;
	private String seachAcc;//搜索号码
	private Double balance;

	private int id;
	public String sname;
	
	public boolean islogin() throws Exception{
		if(getSession().get("admin")==null){
			return false;
		}
		return true;
	}
	
	public String upd(){
		recordService.updRecord(record);
		return "tolist";
	}
	public String edit(){
		record=recordService.findRecord(id);
		return "toupd";
	}
	
	public String tolist1(){
		if(0==pageNum){
			pageNum =1;
		}
		pager=recordService.findAllByPage(pageNum, pageSize);
		return "list1";
	}
	public String listbyacc(){
		if(0==pageNum){
			pageNum =1;
		}
		pager=recordService.findAllByPage(seachAcc,pageNum, pageSize);
		return "list1";
	}	
	
	//---------------------转账开始
	
	public String exchange() throws Exception{//获得转入账号资料
		System.out.println("---------------------"+byname);
		if(accountService.findUserByAcc(byname)!=null){
			user=accountService.findUserByAcc(byname);
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return null;
		}
		System.out.println(user.getName());
		getSession().put("inuser", user);
		getSession().put("acc", byname);
		return "toexchange";
	}
	
	public String doexchange() throws Exception{//获得
		if(accountService.findUserByAcc(toaccount)!=null){
			User touser=accountService.findUserByAcc(toaccount);
			User fromuser=accountService.findUserByAcc(fromaccount);
			touser.setUseableBalance(touser.getUseableBalance()+balance);
			fromuser.setUseableBalance(fromuser.getUseableBalance()-balance);
			userService.updUser(fromuser);
			userService.updUser(touser);
			
			Account toaccount2=accountService.findAcc(toaccount);
			toaccount2.setBanlance(toaccount2.getBanlance()+balance);
			accountService.updAcc(toaccount2);
			
			Account fromaccount1=accountService.findAcc(fromaccount);
			fromaccount1.setBanlance(fromaccount1.getBanlance()-balance);
			accountService.updAcc(fromaccount1);
			
			Record record=new Record();
			record.setFromaccount(fromaccount);
			record.setToaccount(toaccount);
			record.setChangemoney(balance);
			record.setType(2);
			record.setUsername(fromuser.getName());
			recordService.addRecord(record);
			
			getOut().println("<script type='text/javascript'>alert('转账成功');</script>");
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查转入账号');</script>");
			return null;
		}
		
		System.out.println(user.getName());
		getSession().put("inuser", user);
		getSession().put("acc", byname);
		return null;
	}
	
	
	
	
	//---------------------------转账结束
	
	//----------------------------------取款开始
	public String toout() throws Exception{//取款
		if(!islogin()){
			getOut().println("<script type='text/javascript'>alert('您没有权限或未登录');</script>");
			return null;
		}
		if(getSession().get("admin")==null){
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return null;
		}
		System.out.println("---------------------"+byname);
		if(accountService.findUserByAcc(byname)!=null){
			user=accountService.findUserByAcc(byname);
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return null;
		}
		System.out.println(user.getName());
		getSession().put("quuser", user);
		getSession().put("acc", byname);
		
		return "toout";
	}
	
	public String out() throws Exception{//取款
		System.out.println("---------------------"+byname);
		if(accountService.findUserByAcc(fromaccount)!=null){
			User user=accountService.findUserByAcc(fromaccount);
			user.setUseableBalance(user.getUseableBalance()-balance);
			userService.updUser(user);
			Account account=accountService.findAcc(fromaccount);
			account.setBanlance(account.getBanlance()-balance);
			accountService.updAcc(account);
		
			Record record=new Record();
			record.setChangemoney(balance);
			record.setType(1);//cunkuan
			record.setFromaccount(fromaccount);//取款
			record.setUsername(user.getName());
			recordService.addRecord(record);
			
			
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return null;
		}
		return "tolistAccount";
	}
	//----------------------------------取款结束
	
//-------------------存款
	public String toin() throws Exception{//存款
		
		System.out.println("---------------------"+byname);
		if(accountService.findUserByAcc(toaccount)!=null){
			User user=accountService.findUserByAcc(toaccount);
			System.out.println("-------------------------------------"+password);
			if(password==null||!password.equalsIgnoreCase(user.getExpassword())){
				System.out.println("-------------------------------------请重新输入密码");
				System.out.println("正确密码"+user.getExpassword());
				System.out.println("输入密码"+password);
				getOut().println("<script type='text/javascript'>alert('请重新输入交易密码');</script>");
				return null;
			}
			if(balance==null){
				getOut().println("<script type='text/javascript'>alert('请重新输入交易金额');</script>");
				return null;
			}
			user.setUseableBalance(user.getUseableBalance()+balance);
			userService.updUser(user);
			Account account=accountService.findAcc(toaccount);
			account.setBanlance(account.getBanlance()+balance);
			accountService.updAcc(account);
			Record record=new Record();
			record.setChangemoney(balance);
			record.setType(0);//cunkuan
			record.setToaccount(toaccount);//cunkuan
			record.setUsername(user.getName());
			recordService.addRecord(record);
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return "tolist";
		}
		return "tolistAccount";
	}
	public String in() throws Exception{
		
		if(!islogin()){
			getOut().println("<script type='text/javascript'>alert('您没有权限或未登录');</script>");
			return null;
		}
		System.out.println("---------------------"+byname);
		if(accountService.findUserByAcc(byname)!=null){
			user=accountService.findUserByAcc(byname);
		}else{
			getOut().println("<script type='text/javascript'>alert('请检查账号');</script>");
			return null;
		}
		System.out.println(user.getName());
		getSession().put("quuser", user);
		getSession().put("acc", byname);
		
		return "toin";
	}

	
	public String add(){
		recordService.addRecord(record);
		return "tolist";
	}
	public String record(){
		recordService.delRecord(id);
		return "tolist";
	}
	//通过名称查找
	public String findByName(){
		records=recordService.findByName(sname);
		return "recordsearch.jsp";
	}
	//---
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Pager<Record> getPager() {
		return pager;
	}
	public void setPager(Pager<Record> pager) {
		this.pager = pager;
	}
	public RecordService getRecordService() {
		return recordService;
	}
	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}
	public AccService getAccountService() {
		return accountService;
	}
	public void setAccountService(AccService accountService) {
		this.accountService = accountService;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public List<Record> getRecords() {
		return records;
	}
	public void setRecords(List<Record> records) {
		this.records = records;
	}
	public List<Account> getAccounts() {
		return accounts;
	}
	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAccountNum() {
		return accountNum;
	}
	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}
	public String getByname() {
		return byname;
	}
	public void setByname(String byname) {
		this.byname = byname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getToaccount() {
		return toaccount;
	}
	public void setToaccount(String toaccount) {
		this.toaccount = toaccount;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getFromaccount() {
		return fromaccount;
	}

	public void setFromaccount(String fromaccount) {
		this.fromaccount = fromaccount;
	}

	public String getSeachAcc() {
		return seachAcc;
	}

	public void setSeachAcc(String seachAcc) {
		this.seachAcc = seachAcc;
	}

	 
}
