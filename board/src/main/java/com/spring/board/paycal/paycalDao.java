package com.spring.board.paycal;

import java.util.List;

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

}
