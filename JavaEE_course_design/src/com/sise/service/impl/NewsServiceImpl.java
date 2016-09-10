package com.sise.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.NewsDao;
import com.sise.po.News;
import com.sise.service.NewsService;
@Transactional(readOnly=false)
public class NewsServiceImpl implements NewsService {
     
	@Resource private NewsDao newsDao;	
	@Override
	public void addNew(News new1) {
		newsDao.addNew(new1);
		}
	@Override
	public void deleteNew(Integer id) {
		News new1=newsDao.findNewByid(id);
		newsDao.deleteNew(new1);
		
	}

	
	@Override
	public void alterNew(News new1) {
	     newsDao.alterNew(new1);
		
	}

	@Override
	public List<News> findAllNews() {
		List<News> newsList=newsDao.findAllNews();
		return newsList;
	}

	@Override
	public News findNewByid(Integer id) {
		News new1=newsDao.findNewByid(id);
		return new1;
	}

	@Override
	public List<News> findNewByTitle(String title) {
		List<News> newsList=newsDao.findNewByTitle(title);
		return newsList;
	}

	@Override
	public List<News> findNewByTime(Date date1, Date date2) {
		List<News> newsList=newsDao.findNewByTime(date1, date2);
		return newsList;
	}



	

}
