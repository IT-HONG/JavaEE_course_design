package com.sise.service;

import java.util.Date;
import java.util.List;

import com.sise.po.News;

public interface NewsService {
	    
		//添加新闻
		public void addNew(News new1);
		//删除新闻
		public void deleteNew(Integer id);
		//修改新闻
		public void alterNew(News new1);
		//查看所有新闻
	    public List<News> findAllNews();
		//通过id进行查询新闻
		public News findNewByid(Integer id);
		//通过标题进行模糊搜索
		public List<News> findNewByTitle(String title);
		//通过时间段查询新闻
		public List<News> findNewByTime(Date date1,Date date2);
}
