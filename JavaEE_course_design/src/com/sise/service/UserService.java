package com.sise.service;

import java.util.List;

import com.sise.po.User;

public interface UserService {
	// 添加用户
	public void insertUser(User user);

	// 通过用户名进行查询用户
	public List<User> findUser(String username);
}
