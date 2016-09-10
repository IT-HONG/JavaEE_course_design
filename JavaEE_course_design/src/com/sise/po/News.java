package com.sise.po;

import java.util.Date;

public class News {
	private int id;
	private String title;
	private String content;
	private String source;
	private Date publish_time;
	private Type type;

	
	public News() {
	}

	public News(int id, String title, String content, String source,
			Date publish_time) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.source = source;
		this.publish_time = publish_time;
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

	public Type getType() {
		return type;
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
	public Date getPublish_time() {
		return publish_time;
	}

	public void setPublish_time(Date publish_time) {
		this.publish_time = publish_time;
	}

	public void setType(Type type) {
		this.type = type;
	}

}
