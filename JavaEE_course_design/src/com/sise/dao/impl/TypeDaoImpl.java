package com.sise.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.sise.dao.TypeDao;
import com.sise.po.News;
import com.sise.po.Type;

public class TypeDaoImpl extends HibernateDaoSupport implements TypeDao {

	@Override
	public void addType(Type type) {
	getHibernateTemplate().persist(type);
		
	}

	@Override
	public Type findTypeByid(Integer id) {
		return getHibernateTemplate().get(Type.class, id);
	}

	@Override
	public Type findTypeByS(String s) {
		return (Type) getHibernateTemplate().find("from Type where type='%"+s+"%'");
	}

}
