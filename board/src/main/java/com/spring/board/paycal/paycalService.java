package com.spring.board.paycal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.payoff.payoffDto;

@Service
public class paycalService {
	
	@Autowired
	private paycalDao paycalDao;
	
	public List<payoffDto> getPaycalList() {
		return paycalDao.getPaycalList();
	}

	public int paycalCfmCancel(String pay_m_uids) {
		
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
		
		return paycalDao.paycalCfmCancel(param);
	}


}
