package com.sise.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.sise.dao.UserDao;
import com.sise.po.News;
import com.sise.po.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void addUser(User user) {
		getHibernateTemplate().persist(user);
		
	}

	@Override
	public List<User> findUser(String username) {
           return (List<User>) getHibernateTemplate().find("from User where username ='"+username+"'");
	}

	
}
