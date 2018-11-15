package com.spring.board.user;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class userDao {
	
	@Resource(name = "sqlSession")
    private SqlSession sqlSession;
	
	public List<userDto> getUserList() throws Exception {
		 
        return sqlSession.selectList("userList");
	}

	public int userDelete(Map<String, Object> param) throws Exception{
		return sqlSession.delete("userDelete", param);
	}

	public int userInsert(userDto userdto) {
		return sqlSession.insert("userInsert", userdto);
	}

	public int getSequence() {
		return sqlSession.selectOne("userSequence");
	}

	public List<userDto> getOldUserList() {
		return sqlSession.selectList("oldUserList");
	}
	
}
