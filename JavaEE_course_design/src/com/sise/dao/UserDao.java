package com.sise.dao;

import java.util.List;
import com.sise.po.User;

public interface UserDao {
	    //添加用户
		public void addUser(User user);
		//通过用户名进行查询用户
		public List<User> findUser(String username);
}
