package com.spring.board.payoff;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.board.user.userDto;

@Repository
public class payoffDao {
	
	@Resource(name = "sqlSession")
    private SqlSession sqlSession;
	
	public List<payoffDto> getPayoffList() {
		return sqlSession.selectList("payoffList");
	}

	public int payoffInsert(String pay_title) {
		return sqlSession.insert("payoffInsert", pay_title);
	}

	public int payoffDelete(Map<String, Object> param) {
		return sqlSession.delete("payOffDelete", param);
	}

	public int payuserDelete(Map<String, Object> param) {
		return sqlSession.delete("payuserDelete", param);
	}

	public payoffDto payoffGetOne(String pay_m_uid) {
		return sqlSession.selectOne("payoffGetOne", pay_m_uid);
	}

	public int payoffUpdate(payoffDto payofDto) {
		return sqlSession.update("payoffUpdate", payofDto);
	}

	public List<Object> payoffUserGet(String pay_m_uid) {
		return sqlSession.selectList("payoffUserGet", pay_m_uid);
	}
	
	public List<Object> payoffOldUserGet(String pay_m_uid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("payoffOldUserGet", pay_m_uid);
	}

	public int payUserUpdate(Object put) {
		return sqlSession.insert("payUserUpdate", put);
	}

	public List<Object> payoffUserList(String pay_m_uid) {
		return sqlSession.selectList("payoffUserList", pay_m_uid);
	}

	public int payoffUserStatusUpdate(Map<String, Object> param) {
		return sqlSession.update("payoffUserStatusUpdate", param);
	}

	public int payoffUsersDelete(Map<String, Object> param) {
		return sqlSession.delete("payoffUsersDelete", param);
		
	}

	public int payoffCfmUpdate(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.update("payoffCfmUpdate", param);
	}

	

}
