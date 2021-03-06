package com.spring.sample.web.EasysShop.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProcDao implements IProcDao {
	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<HashMap<String, String>> getProcList(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Proc.getProcList",params);
	}

	@Override
	public List<HashMap<String, String>> getProcMCate() throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Proc.getProcMCate");
	}

	@Override
	public List<HashMap<String, String>> getProcSCate(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Proc.getProcSCate",params);
	}

	@Override
	public List<HashMap<String, String>> getProcCodeList() throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Proc.getProcCodeList");
	}

}
