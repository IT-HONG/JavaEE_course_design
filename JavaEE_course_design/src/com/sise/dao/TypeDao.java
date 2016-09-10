package com.sise.dao;

import com.sise.po.Type;

public interface TypeDao {

	//添加类型
	public void addType(Type type);
	//通过ID查找类型
	public Type findTypeByid(Integer id);
	//通过string查找类型
	public Type findTypeByS(String  s);
}
