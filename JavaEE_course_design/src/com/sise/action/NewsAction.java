package com.sise.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.po.News;
import com.sise.po.Type;
import com.sise.service.NewsService;
import com.sise.service.TypeService;

public class NewsAction extends ActionSupport {
	@Resource private NewsService newsService;
	@Resource private TypeService typeService;
	private List<News> newslist;
	private News news;
	private String message;
	

	private int id;
	private String title;
	private String content;
	private String source;
	private int type;
	private String s_type;
	
	private Date publish_time;
	private String date1;
	private String date2;
	
	
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}
	public List<News> getNewslist() {
		return newslist;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	public String getS_type() {
		return s_type;
	}

	public void setS_type(String s_type) {
		this.s_type = s_type;
	}


	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public Date getPublish_time() {
		return publish_time;
	}

	public void setPublish_time(Date publish_time) {
		this.publish_time = publish_time;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public void validateInsert() throws Exception {
		if (title == null || "".equals(title)) {
			this.addFieldError("title", "新闻标题必须填写");
		}
		if (content == null || "".equals(content)) {
			this.addFieldError("content", "新闻内容必须填写");
		}
		if (title.length() > 60) {
			this.addFieldError("title", "新闻标题长度不得超过60");

		}
		if (source.length() > 30) {
			this.addFieldError("title", "新闻来源长度不得超过30");
		}

	}

	public void validateEdit() throws Exception {
		if (title == null || "".equals(title)) {
			this.addFieldError("title", "新闻标题必须填写");
		}
		if (content == null || "".equals(content)) {
			this.addFieldError("content", "新闻内容必须填写");
		}
		if (title.length() > 60) {
			this.addFieldError("title", "新闻标题长度不得超过60");
		}
		if (source.length() > 30) {
			this.addFieldError("title", "新闻来源长度不得超过30");
		}
	}
	public String addInput() {
		return "add_input";
	}
	// 添加新闻
		public String insert() throws Exception {
			Calendar c = Calendar.getInstance();
			Date date = c.getTime();
			System.out.println(type);
			Type t=typeService.findTypeByid(type);
			news= new News();
			news.setTitle(title);
			news.setContent(content);
			news.setPublish_time(date);
			news.setType(t);
			news.setSource(source);
			newsService.addNew(news);
			message="添加成功";
			return "add";
		}

		// 显示所有的新闻
		public String allNews() throws Exception {
			newslist =newsService.findAllNews();
			return "listAll";
		}

		// 通过id显示对应新闻
		public String show() throws Exception {
			news=newsService.findNewByid(id);
			return "show";
		}

		// 删除新闻
		public String delete() throws Exception {
			newsService.deleteNew(id);
			message="删除成功!";
			return "remove_success";
		}
        //修改新闻输入
		public String editInuput() throws Exception{
			news=newsService.findNewByid(id);
			return "edit_input";
		}
		// 修改新闻
		public String edit() throws Exception {
			News news1=newsService.findNewByid(id);
			System.out.println(title);
			news1.setTitle(title);
			news1.setContent(content);
			news1.setPublish_time(publish_time);
			news1.setSource(source);
			newsService.alterNew(news1);
			message="修改成功!";
			return "edit_success";
		}
		// 通过新闻标题模糊搜索
	public String findInuput() throws Exception {
					return "find_input";
		}

		// 通过新闻标题模糊搜索
		public String findByTitle() {
			newslist = newsService.findNewByTitle(title);
			return "find_success";
		}

		// 通过发布新闻时间段搜索
		public String findByTime() {
			DateFormat dateFormat; 
			Date startDate = null;
			Date endDate = null;
			try {
			    dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			    dateFormat.setLenient(false); 
			    System.out.println(date1);
			    System.out.println(date2);
			    startDate = dateFormat.parse(date1);
				endDate = dateFormat.parse(date2);
			} catch (ParseException e) {
			
				e.printStackTrace();
			}
		    
			newslist = newsService.findNewByTime(startDate, endDate);
			return "find_success";
		}
	

}
