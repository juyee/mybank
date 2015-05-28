package com.my.action;

import java.util.List;

import com.my.entity.Account;
import com.my.entity.Admin;
import com.my.entity.User;
import com.my.service.AccService;
import com.my.service.AdminService;
import com.my.service.UserService;
import com.my.utils.JavaUtils;
import com.my.utils.Pager;

public class UserAction extends BaseAction {
	private String Code;
	private int pageNum;
	private int pageSize = 6;// 设定页大小
	private String loginname;
	private String password;
	private String name;
	private Pager<User> pager;
	private Pager<User> newusers;
	private UserService userService;// 需要注入
	private User user = new User();
	private List<User> users;
	private int id;
	private int aid;
	private String byname;
	private AdminService adminService;// 需要注入
	private AccService accountService;// 需要注入
	private String IDcardNum;

	public String login() throws Exception {
		getSession().clear();

		if (userService.login(loginname, password) != null) {
			User user = userService.login(loginname, password);
			if (user.getState() == 0) {
				getOut()
						.println(
								"<script type='text/javascript'>alert('账户未激活，请先进行激活操作!');location='activation.jsp';</script>");
				return null;
			}
			user.setLogincount(user.getLogincount() + 1);
			userService.updUser(user);
			getSession().put("user", user);
			return "userAction_toIndex";
		} else {
			getOut()
					.println(
							"<script type='text/javascript'>alert('账号密码有误或帐号不存在!');location='login_user.jsp';</script>");
			return null;
		}
	}

	// 增加
	public String add() throws Exception {

		if (adminService.findAdmin(aid) != null) {
			Admin admin = adminService.findAdmin(aid);
			admin.setDingdan(admin.getDingdan() + 1);
			adminService.updAdmin(admin);
			Admin admin2 = adminService.findAdmin(admin.getId());
			getSession().put("admin", admin2);
			// 获取激活码
			String Code = JavaUtils.getCode();
			System.out.println(Code);
			user.setRemark(Code);
			user.setState(0);
			user.setUseableBalance(0.0);
			user.setAdmin(adminService.findAdmin(aid));
			userService.addUser(user);
			newusers = userService.findAllByPage(1, 3);
			getSession().put("newusers", newusers);
			getSession().put("user", user);
			return "toshow";
		}
		getOut()
				.println(
						"<script type='text/javascript'>alert('您没有权限开立账户');location='login_user.jsp';</script>");
		return null;
	}

	@SuppressWarnings("unchecked")
	public String active() throws Exception {
		getSession().clear();

		if (userService.login(loginname, password) != null) {
			User user = userService.login(loginname, password);
			if (user.getName().equals(name)
					&& user.getIDcardNum().equals(IDcardNum)
					&& user.getRemark().equals(Code)) {
				user.setState(1);
				userService.updUser(user);
				getSession().put("user", user);
				getOut()
						.println(
								"<script type='text/javascript'>alert('账号激活成功');location='login_user.jsp';</script>");
				return "userAction_login";
			} else {
				getOut()
						.println(
								"<script type='text/javascript'>alert('请核对激活信息!');location='login_user.jsp';</script>");
				return null;
			}
		} else {
			getOut()
					.println(
							"<script type='text/javascript'>alert('登录信息不正确!');location='login_user.jsp';</script>");
			return null;
		}
	}

	public String upd() {
		userService.updUser(user);
		return "tolist";
	}

	public String del() throws Exception {
		User user1 = userService.findUser(id);
		Admin admin=user1.getAdmin();
		admin.setDingdan(admin.getDingdan()-1);
		adminService.updAdmin(admin);
		List<Account> acclists=accountService.findAccbyname(user1.getName());
		if(acclists!=null&&acclists.size()>0){
			getOut()
			.println(
					"<script type='text/javascript'>alert('存在未注销账号，删除失败!');</script>");
			return null;
		}
		userService.delUser(id);
		getSession().clear();
		getSession().put("admin", admin);
		return "tolist";
	}

	public String tolist() {
		System.out.println(pageNum);
		if (0 == pageNum) {
			pageNum = 1;
		}
		pager = userService.findAllByPage(pageNum, pageSize);
		return SUCCESS;
	}
	
	public String showById() {
		user = userService.findUser(id);
		getSession().put("user", user);
		return "toshow";
	}

	public String showByaccId() {
		Account account = accountService.findAcc(id);
		user = userService.findUser(account.getUser().getId());
		getSession().put("user", user);
		return "toshow";
	}

	public String toupd() throws Exception {
		user = userService.findUser(id);
		return "upd.jsp";
	}

	public String edit() {
		user = userService.findUser(id);
		return "toupd";
	}

	@SuppressWarnings("unchecked")
	public String listbyname() throws Exception {
		if (userService.findUserbyname(byname) != null) {
			if (userService.findUserbyname(byname).size() > 1) {
				users = userService.findUserbyname(byname);
				return "success2";
			} else {
				user = (User) userService.findUserbyname(byname).get(0);
				getSession().put("user", user);
				return "toshow";
			}
		}
		getOut().println(
				"<script type='text/javascript'>alert('查无此人');</script>");
		return null;
	}

	public String showUser() throws Exception {
		if (userService.findUserbyname(name) != null) {
			user = (User) userService.findUserbyname(name).get(0);
			getSession().put("user", user);
			return "toshow";
		}
		getOut().println(
				"<script type='text/javascript'>alert('查无此人');</script>");
		return null;
	}



	public String toadd() throws Exception {

		return "useradd.jsp";
	}

	// ---

	public int getPageNum() {
		return pageNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public Pager<User> getPager() {
		return pager;
	}

	public void setPager(Pager<User> pager) {
		this.pager = pager;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getByname() {
		return byname;
	}

	public void setByname(String byname) {
		this.byname = byname;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public Pager<User> getNewusers() {
		return newusers;
	}

	public void setNewusers(Pager<User> newusers) {
		this.newusers = newusers;
	}

	public AccService getAccountService() {
		return accountService;
	}

	public void setAccountService(AccService accountService) {
		this.accountService = accountService;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		Code = code;
	}

	public String getIDcardNum() {
		return IDcardNum;
	}

	public void setIDcardNum(String iDcardNum) {
		IDcardNum = iDcardNum;
	}

}
