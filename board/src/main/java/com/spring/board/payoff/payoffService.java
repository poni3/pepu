package com.spring.board.payoff;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.board.user.userDao;
import com.spring.board.user.userDto;

@Service
public class payoffService {
	
	
	
	@Autowired
	private payoffDao payoffDao;
	@Autowired
	private userDao userdao;
	
	public List<payoffDto> getPayoffList() {
		return payoffDao.getPayoffList();
	}

	public int payoffInsert(String pay_title) {
		return payoffDao.payoffInsert(pay_title);
	}

	@Transactional
	public int payoffDelete(String pay_m_uid) {
		
		String[] temp = pay_m_uid.split(",");
		
		if(temp.length == 0) {
			return -1;
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		ArrayList<String> paramList = new ArrayList<String>();
		for(int i =0; i < temp.length; i++) {
			paramList.add(temp[i]);
		}
		
		param.put("uidList", paramList);
		
		payoffDao.payuserDelete(param);
		
		return payoffDao.payoffDelete(param);
		
	}

	public payoffDto payoffGetOne(String pay_m_uid) {
		// TODO Auto-generated method stub
		return payoffDao.payoffGetOne(pay_m_uid);
	}

	public int payoffUpdate(payoffDto payofDto) {
        return payoffDao.payoffUpdate(payofDto);
		
	}

	public List<Object> payoffUserGet(String pay_m_uid) {
		// TODO Auto-generated method stub
		return payoffDao.payoffUserGet(pay_m_uid);
	}

	public int payUserUpdate(String pay_m_uid, String u_uids) {
		
		String[] u_uid_Arr = u_uids.split(",");
		
		if(u_uid_Arr.length == 0) {
			return -1;
		}
		
		List<Map<String, Object>> paramList = new ArrayList<Map<String, Object>>();
		Map<Object, Object> paramMap = new HashMap<Object, Object>();
		Map<String,Object> tempMap;
		
		for(int i=0; i < u_uid_Arr.length; i++) {
			int pay_u_uid = userdao.getSequence();
			tempMap = new HashMap<String, Object>();
			tempMap.put("pay_m_uid", pay_m_uid);
			tempMap.put("u_uid", u_uid_Arr[i]);
			tempMap.put("pay_u_uid", pay_u_uid);
			
			paramList.add(tempMap);
		}
		
		paramMap.put("uList", paramList);
		
		return payoffDao.payUserUpdate(paramMap);
		
	}

	public List<Object> payoffUserList(String pay_m_uid) {
		return payoffDao.payoffUserList(pay_m_uid);
	}

	public int payoffUserStatusUpdate(String pay_u_uids, String mealCode, String user_no) {
		
		String[] pay_u_uids_arr = pay_u_uids.split(",");
		
		if(pay_u_uids_arr.length == 0) {
			return -1;
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		ArrayList<String> paramList = new ArrayList<String>();
		for(int i =0; i < pay_u_uids_arr.length; i++) {
			paramList.add(pay_u_uids_arr[i]);
		}
		
		param.put("uList", paramList);
		param.put("mealCode", mealCode);
		param.put("user_no", user_no);
		
		return payoffDao.payoffUserStatusUpdate(param);
	}

	public int payoffUsersDelete(String pay_u_uids) {
		String[] temp = pay_u_uids.split(",");
		
		if(temp.length == 0) {
			return -1;
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		ArrayList<String> paramList = new ArrayList<String>();
		for(int i =0; i < temp.length; i++) {
			paramList.add(temp[i]);
		}
		
		param.put("uidList", paramList);
		
		return payoffDao.payoffUsersDelete(param);
	}

	public int payoffCfmUpdate(String pay_m_uids) {
		
		String[] temp = pay_m_uids.split(",");
		
		if(temp.length == 0) {
			return -1;
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		ArrayList<String> paramList = new ArrayList<String>();
		for(int i =0; i < temp.length; i++) {
			paramList.add(temp[i]);
		}
		
		param.put("uidList", paramList);
		
		
		return payoffDao.payoffCfmUpdate(param);
		
	}

}
