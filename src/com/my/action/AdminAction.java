package com.my.action;
import java.util.List;
import com.my.entity.Admin;
import com.my.entity.Message;
import com.my.entity.User;
import com.my.service.AdminService;
import com.my.service.UserService;
import com.my.utils.Pager;
public class AdminAction extends BaseAction{
	private AdminService adminService;//需要注入
	private UserService userService;//需要注入
	private Admin admin=new Admin();
	private List<Admin> list;
	private Pager<User> newusers;
	private int id;
	private String loginname;
	private String password;
	private String workinglife;
	
	public String login() throws Exception{
		getSession().clear();
		if(adminService.login(loginname, password)!=null ){
			Admin admin=adminService.login(loginname, password);
			adminService.loginCountAdd(admin);
			newusers=userService.findAllByPage(1, 3);
			getSession().put("admin", admin);
			getSession().put("newusers", newusers);
			return "adminAction_toIndex";
		}else{
			getOut().println("<script type='text/javascript'>alert('账号密码有误或帐号不存在!');location='login_teller.jsp';</script>");
			return null;
			}
	}
	public String edit(){
		admin=adminService.findAdmin(id);
		return "toupd";
	}
	public String upd(){
		getSession().put("admin", admin);
		adminService.updAdmin(admin);
		return SUCCESS;
	}
	public String tolist(){
		list=adminService.findAdmins();
		return SUCCESS;
	}
	public String add(){
		admin.setLogincount(0);
		admin.setDingdan(0);
		adminService.addAdmin(admin);
		return "tolist";
	}
	//---
	
	public AdminService getAdminService() {
		return adminService;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public List<Admin> getList() {
		return list;
	}
	public void setList(List<Admin> list) {
		this.list = list;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Pager<User> getNewusers() {
		return newusers;
	}
	public void setNewusers(Pager<User> newusers) {
		this.newusers = newusers;
	}
	
}
