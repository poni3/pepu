package com.spring.board.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userService {
	
	@Autowired
	private userDao userdao;
	
	public List<userDto> getUserList() throws Exception {
		 
        return userdao.getUserList();
    }

	public int userDelete(String u_uid) throws Exception {
		
		String[] temp = u_uid.split(",");
		
		if(temp.length == 0) {
			return -1;
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		ArrayList<String> paramList = new ArrayList<String>();
		for(int i =0; i < temp.length; i++) {
			paramList.add(temp[i]);
		}
		
		param.put("uidList", paramList);
		
		return userdao.userDelete(param);
	}

	public int userInsert(userDto userdto) {
		
		int u_uid = userdao.getSequence();
		userdto.setU_uid(u_uid);
		
		if("".equals(userdto.getId())) {
			userdto.setId("GUEST" + u_uid);
		}
		
		userdto.setPassword("test1234");
		
		return userdao.userInsert(userdto);
		
	}

	public List<userDto> getOldUserList() {
		return userdao.getOldUserList();
	}
}
