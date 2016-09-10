package com.sise.service.impl;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.dao.TypeDao;
import com.sise.po.Type;
import com.sise.service.TypeService;
@Transactional(readOnly=false)
public class TypeServiceImpl implements TypeService {

	@Resource private TypeDao typeDao;
	@Override
	public void addType(Type type) {
		typeDao.addType(type);
	}

	@Override
	public Type findTypeByid(Integer id) {
		Type type=typeDao.findTypeByid(id);
		return type;
	}

	@Override
	public Type findTypeByS(String s) {
		Type type=typeDao.findTypeByS(s);
		return type;
	}

}
