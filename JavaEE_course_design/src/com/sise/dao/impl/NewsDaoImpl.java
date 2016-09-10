package com.sise.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.sise.dao.NewsDao;
import com.sise.po.News;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<News> findAllNews() {
		
		return (List<News>) getHibernateTemplate().find("from News");
	}

	@Override
	public void addNew(News new1) {
		getHibernateTemplate().persist(new1);
		
	}

	@Override
	public void deleteNew(News new1) {
		getHibernateTemplate().delete(new1);
		
	}

	@Override
	public void alterNew(News new1) {
		getHibernateTemplate().saveOrUpdate(new1);
	}

	@Override
	public News findNewByid(Integer id) {
		return getHibernateTemplate().get(News.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<News> findNewByTitle(String title) {
		return (List<News>) getHibernateTemplate().find("from News where title like '%"+title+"%'");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<News> findNewByTime(Date date1, Date date2) {
		String queryString = "from News where publish_time between ? and ? ";
		return (List<News>) getHibernateTemplate().find(queryString, date1,date2);
	}

}
