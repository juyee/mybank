package com.my.action;
import java.util.List;
import com.my.entity.Account;
import com.my.entity.Record;
import com.my.entity.User;
import com.my.service.AccService;
import com.my.service.RecordService;
import com.my.service.UserService;
import com.my.utils.Pager;
public class AccountAction extends BaseAction{
	private int pageNum;
	private int pageSize=6;//设定页大小
	private Pager<Account> pager;
	private AccService accountService;//需要注入
	private RecordService recordService;//需要注入
	private UserService userService;//需要注入
	private Account account=new Account();
	private List<Account> accounts;
	private User user;
	private int id;
	private int jid;
	private String byname;
	public String upd(){
		accountService.updAcc(account);
		return "tolist";
	}
	public String del(){
		Account account=accountService.findAcc(id);
		User user=account.getUser();
		if(account.getBanlance()>0){
			user.setUseableBalance(user.getUseableBalance()-account.getBanlance());
			userService.updUser(user);
			//添加支取记录
			Record record=new Record();
			record.setFromaccount(account.getAccNum());
			record.setChangemoney(account.getBanlance());
			record.setType(1);
			record.setUsername(user.getName());
			recordService.addRecord(record);
		}
		accountService.delAcc(id);
		return "tolist";
	}
	public String toupd() throws Exception{
		account=accountService.findAcc(id);
		return "upd.jsp";
	}
	public String edit(){
		account=accountService.findAcc(id);
		return "toupd";
	}
	//获得最新accnum
	public String getNewAccNum(){
		return accountService.getNewAccNum(); 
	}
	@SuppressWarnings("unchecked")
	public String listbyname(){
		accounts=accountService.findAccbyname(byname);
		return "SUCCESS";
	}
	public String listbyname2(int id){
		accounts=accountService.findAccbyid(id);
		return "listbyid";
	}
	public String listbyid(){
		accounts=accountService.findAccbyid(id);
		return "listbyid";
	}
	public String tolist(){
		if(0==pageNum){
			pageNum =1;
		}
		pager=accountService.findAllByPage(pageNum, pageSize);
		return SUCCESS;
	}
	public String toadd() throws Exception{
		return "accountadd.jsp";
	}
	public String add() throws Exception{
		Account acc=new Account();
		acc.setBanlance(0.0);
		user=userService.findUser(id);
		acc.setUser(user);
		String newAcc=getNewAccNum();
		acc.setAccNum(newAcc);
		acc.setUsername(user.getName());
		accountService.addAcc(acc);
		accounts=accountService.findAccbyid(id);
		getOut().println("<script type='text/javascript'>alert('卡号开通成功,新卡号为" +newAcc+
				"');</script>");
		return "listbyid";
	}
	//------------------------
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
	public Pager<Account> getPager() {
		return pager;
	}
	public void setPager(Pager<Account> pager) {
		this.pager = pager;
	}
	public AccService getAccountService() {
		return accountService;
	}
	public void setAccountService(AccService accountService) {
		this.accountService = accountService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public List<Account> getAccounts() {
		return accounts;
	}
	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getJid() {
		return jid;
	}
	public void setJid(int jid) {
		this.jid = jid;
	}
	public String getByname() {
		return byname;
	}
	public void setByname(String byname) {
		this.byname = byname;
	}
	public RecordService getRecordService() {
		return recordService;
	}
	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}


	
	
}
