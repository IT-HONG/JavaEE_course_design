package com.sise.action;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.po.User;
import com.sise.service.UserService;

public class LoginAction extends ActionSupport{
	@Resource private UserService userService;
	private int id;
	private String username;
	private String password;
	public LoginAction() {}
	public LoginAction(String username, String password) {
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String  login() throws Exception{
		List<User> users=userService.findUser(username);
		for (User user : users) {
			if (user.getPassword().equals(password)) {
				return SUCCESS;
				
			}else {
				return ERROR;
			}
		}
		return ERROR;
	}
	

}
