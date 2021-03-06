package com.spring.board.paycal;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.board.payoff.payoffDto;

@Repository
public class paycalDao {
	
	@Resource(name = "sqlSession")
    private SqlSession sqlSession;
	
	public List<payoffDto> getPaycalList() {
		return sqlSession.selectList("paycalList");
	}

	public int paycalCfmCancel(Map<String, Object> param) {
		return sqlSession.update("paycalCfmCancel", param);
	}

	public List<Map<String, Object>> getCount(paycalDto paycalDto) {
		return sqlSession.selectList("getOneCount", paycalDto);
	}

	public int updateAmount(paycalDto paycalDto) {
		return sqlSession.update("updateAmount", paycalDto);
	}

}
