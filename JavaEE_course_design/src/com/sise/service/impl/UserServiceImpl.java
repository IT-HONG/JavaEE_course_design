package com.sise.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.NewsDao;
import com.sise.dao.UserDao;
import com.sise.po.News;
import com.sise.po.User;
import com.sise.service.UserService;
@Transactional(readOnly=false)
public class UserServiceImpl implements UserService {
	@Resource private UserDao userDao;
	@Override
	public void insertUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public List<User> findUser(String username) {
		List<User> users=userDao.findUser(username);
		return users;
		
	}

}
