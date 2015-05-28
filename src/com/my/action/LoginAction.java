package com.my.action;
import com.my.entity.Admin;
import com.my.entity.User;
import com.my.service.AdminService;
import com.my.service.UserService;
public class LoginAction extends BaseAction{
	private String loginname;
	private String password;
	private AdminService adminService;
	private UserService userService;
	//登录
	@SuppressWarnings("unchecked")
	public String login() throws Exception{
		getSession().clear();
		if(adminService.login(loginname, password)!=null ){
			Admin admin=adminService.login(loginname, password);
			getSession().put("admin", admin);
			return "adminAction_toIndex";
		}else if(userService.login(loginname, password)!=null){
			User user=userService.login(loginname, password);
			if(user.getState()=='0'){
				getOut().println("<script type='text/javascript'>alert('账户未激活，请先进行激活操作!');location='error.jsp';</script>");
				return null;
			}
			getSession().put("user", user);
			return "userAction_toIndex";
		}else{
			getOut().println("<script type='text/javascript'>alert('账号密码有误或帐号不存在!');location='error.jsp';</script>");
			return null;
			}
	}
	//退出登录
	public String logout() throws Exception{
		getSession().clear();
		getOut().println("<script type='text/javascript'>alert('安全退出!');location='login_user.jsp';</script>");
		return null;
	}
	//---------
	 
	public String getPassword() {
		return password;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
}
