package com.spring.sample.web.EasysShop.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EDao implements IEDao {
	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<HashMap<String, String>> getcustgradeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getcustgradeList", params);
	}

	@Override
	public HashMap<String, String> getcustgradedata(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.getcustgradedata", params);
	}

	@Override
	public void custcodeAdd(HashMap<String, String> params) throws Throwable {
		sqlSession.insert("code.custcodeAdd", params);
	}

	@Override
	public void custcodeUpdate(HashMap<String, String> params) throws Throwable {
		sqlSession.update("code.custcodeUpdate", params);		
	}

	@Override
	public void custgradedel(HashMap<String, String> params) throws Throwable {
		sqlSession.delete("code.custgradedel", params);		
	}

	@Override
	public List<HashMap<String, String>> getempgradeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getempgradeList", params);
	}

	@Override
	public HashMap<String, String> getempgradedata(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.getempgradedata", params);
	}

	@Override
	public void empcodeAdd(HashMap<String, String> params) throws Throwable {
		sqlSession.insert("code.empcodeAdd", params);
	}

	@Override
	public void empcodeUpdate(HashMap<String, String> params) throws Throwable {
		sqlSession.update("code.empcodeUpdate", params);
	}

	@Override
	public void empgradedel(HashMap<String, String> params) throws Throwable {
		sqlSession.delete("code.empgradedel", params);
	}

	@Override
	public List<HashMap<String, String>> getcompcodeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getcompcodeList", params);
	}

	@Override
	public HashMap<String, String> getcompdata(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.getcompdata", params);
	}

	@Override
	public void compcodeAdd(HashMap<String, String> params) throws Throwable {
		sqlSession.insert("code.compcodeAdd", params);
	}

	@Override
	public void compcodeUpdate(HashMap<String, String> params) throws Throwable {
		sqlSession.update("code.compcodeUpdate", params);
	}

	@Override
	public void compdel(HashMap<String, String> params) throws Throwable {
		sqlSession.delete("code.compdel", params);
	}

	@Override
	public List<HashMap<String, String>> getitemcodeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getitemcodeList", params);
	}

	@Override
	public HashMap<String, String> getitemcodedata(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.getitemcodedata", params);
	}

	@Override
	public void itemcodeAdd(HashMap<String, String> params) throws Throwable {
		sqlSession.insert("code.itemcodeAdd", params);		
	}

	@Override
	public void itemcodeUpdate(HashMap<String, String> params) throws Throwable {
		sqlSession.update("code.itemcodeUpdate", params);		
	}

	@Override
	public void itemcodedel(HashMap<String, String> params) throws Throwable {
		sqlSession.delete("code.itemcodedel", params);		
	}

	@Override
	public List<HashMap<String, String>> getitemcateList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getitemcateList", params);
	}

	@Override
	public List<HashMap<String, String>> getitemScateList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getitemScateList", params);
	}

	@Override
	public List<HashMap<String, String>> getitemtypeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("code.getitemtypeList", params);
	}

	@Override
	public void itemtypedel(HashMap<String, String> params) throws Throwable {
		sqlSession.delete("code.itemtypedel", params);				
	}

	@Override
	public int itemtypeck(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.itemtypeck", params);
	}

	@Override
	public int itemnmtypeck(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.itemnmtypeck", params);
	}

	@Override
	public void itemtypeadd(HashMap<String, String> params) throws Throwable {
		sqlSession.insert("code.itemtypeadd", params);				
	}

	@Override
	public HashMap<String, String> getitemtypedata(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("code.getitemtypedata", params);
	}

	@Override
	public void itemtypecodeUpdate(HashMap<String, String> params) throws Throwable {
		sqlSession.update("code.itemtypecodeUpdate", params);	
	}

}
