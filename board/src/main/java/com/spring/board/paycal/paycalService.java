package com.spring.board.paycal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.payoff.payoffDao;
import com.spring.board.payoff.payoffDto;
import com.spring.board.payoff.payoffUserDto;

@Service
public class paycalService {
	
	@Autowired
	private paycalDao paycalDao;
	
	@Autowired
	private payoffDao payoffDao;
	
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

	public int paycalAutoUpdate(paycalDto paycalDto) {
		
		payoffDto temp = payoffDao.payoffGetOne(paycalDto.getPay_m_uid()+"");
		
		/*
		 *  ('ALL')"  올먹
			('MEL')"  안주
			('COL')"  술만
			('ANM')"  안먹
			('')"    미참가
		 */
		int ALL = 0;
		int MEL = 0;
		int COL = 0;
		
		int temp_amount = 0;
		
		HashMap<String, Object> countMap= new HashMap<String, Object>();
		List<Map<String, Object>>  count = new ArrayList<Map<String, Object>>();
		
		for(int i =1; i <= paycalDto.getNo(); i ++) {
			switch(i) {
			case 1 :
				
				paycalDto.setType("ONE");
				
				if(paycalDto.getOne_anju() != 0 || paycalDto.getOne_alcol() != 0 ) {
					if(temp.getOne_amount() != paycalDto.getOne_anju() + paycalDto.getOne_alcol()) {
						System.out.println("총금액 : " + temp.getOne_amount());
						System.out.println("안주 : " + paycalDto.getOne_anju());
						System.out.println("알콜 : " + paycalDto.getOne_alcol());
						return -1;
					}
					
				} else {
					temp_amount = temp.getOne_amount() / 2;
					
					paycalDto.setOne_alcol(temp_amount);
					paycalDto.setOne_anju(temp_amount);
					
				}
				
				//paycalDao.updateAmount(autoCal(paycalDto));
				
				break;
			case 2 :
				
				paycalDto.setType("TWO");
				
				if(paycalDto.getTwo_anju() != 0 || paycalDto.getTwo_alcol() != 0 ) {
					if(temp.getTwo_amount() != paycalDto.getTwo_anju() + paycalDto.getTwo_alcol()) {
						return -1;
					}
					
				} else {
					temp_amount = temp.getTwo_amount() / 2;
					
					paycalDto.setTwo_alcol(temp_amount);
					paycalDto.setTwo_anju(temp_amount);
					
				}
				
				//paycalDao.updateAmount(autoCal(paycalDto));
				break;
			case 3 :
                paycalDto.setType("TRE");
				
				if(paycalDto.getTre_anju() != 0 || paycalDto.getTre_alcol() != 0 ) {
					if(temp.getTre_amount() != paycalDto.getTre_anju() + paycalDto.getTre_alcol()) {
						return -1;
					}
					
				} else {
					temp_amount = temp.getTre_amount() / 2;
					
					paycalDto.setTre_alcol(temp_amount);
					paycalDto.setTre_anju(temp_amount);
					
				}
				
				break;
			case 4 :
                paycalDto.setType("FOR");
				
				if(paycalDto.getFor_anju() != 0 || paycalDto.getFor_alcol() != 0 ) {
					if(temp.getFor_amount() != paycalDto.getFor_anju() + paycalDto.getFor_alcol()) {
						return -1;
					}
					
				} else {
					temp_amount = temp.getFor_amount() / 2;
					
					paycalDto.setFor_alcol(temp_amount);
					paycalDto.setFor_anju(temp_amount);
					
				}
				break;
			case 5 :
                paycalDto.setType("FIV");
				
				if(paycalDto.getFiv_anju() != 0 || paycalDto.getFiv_alcol() != 0 ) {
					if(temp.getFiv_amount() != paycalDto.getFiv_anju() + paycalDto.getFiv_alcol()) {
						return -1;
					}
					
				} else {
					temp_amount = temp.getFiv_amount() / 2;
					
					paycalDto.setFiv_alcol(temp_amount);
					paycalDto.setFiv_anju(temp_amount);
					
				}
				break;
			}
			
			paycalDto = autoCal(paycalDto);
			
		}
		
		paycalDao.updateAmount(paycalDto);
		
		return 0;
	}

	public paycalDto autoCal(paycalDto paycalDto){
		
		HashMap<String, Object> countMap= new HashMap<String, Object>();
		List<Map<String, Object>>  count = paycalDao.getCount(paycalDto);
		
		int anjuValue = 0; //paycalDto.getOne_anju() / ALL + MEL;
		int colValue = 0; //paycalDto.getOne_alcol() / ALL + COL;
		
		Iterator<Map<String, Object>> it = count.iterator();
		while(it.hasNext()) {
			Map<String, Object> map = it.next();
			countMap.put((String)map.get("CODE"), map.get("CO"));
		}
		
		int ALL = countMap.get("ALL") == null ? 0 : ((Long)  countMap.get("ALL")).intValue();
		int MEL = countMap.get("MEL") == null ? 0 : ((Long)  countMap.get("MEL")).intValue();
		int COL = countMap.get("COL") == null ? 0 : ((Long)  countMap.get("COL")).intValue();
		
		if("ONE".equals(paycalDto.getType())) {
			anjuValue = paycalDto.getOne_anju() / (ALL + MEL);
			colValue = paycalDto.getOne_alcol() / (ALL + COL);
			
			paycalDto.setOne_alcol(valueSin(colValue));
			paycalDto.setOne_anju(valueSin(anjuValue));
			
		} else if("TWO".equals(paycalDto.getType())) {
			anjuValue = paycalDto.getTwo_anju() / (ALL + MEL);
			colValue = paycalDto.getTwo_alcol() / (ALL + COL);
			
			paycalDto.setTwo_alcol(valueSin(colValue));
			paycalDto.setTwo_anju(valueSin(anjuValue));
			
		} else if("TRE".equals(paycalDto.getType())) {
			anjuValue = paycalDto.getTre_anju() / (ALL + MEL);
			colValue = paycalDto.getTre_alcol() / (ALL + COL);
			
			paycalDto.setTre_alcol(valueSin(colValue));
			paycalDto.setTre_anju(valueSin(anjuValue));
			
		} else if("FOR".equals(paycalDto.getType())) {
			anjuValue = paycalDto.getFor_anju() / (ALL + MEL);
			colValue = paycalDto.getFor_alcol() / (ALL + COL);
			
			paycalDto.setFor_alcol(valueSin(colValue));
			paycalDto.setFor_anju(valueSin(anjuValue));
			
		} else if("FIV".equals(paycalDto.getType())) {
			anjuValue = paycalDto.getFiv_anju() / (ALL + MEL);
			colValue = paycalDto.getFiv_alcol() / (ALL + COL);
			
			paycalDto.setFiv_alcol(valueSin(colValue));
			paycalDto.setFiv_anju(valueSin(anjuValue));
			
		}  
		
		
		return paycalDto;
	}
	
	public int valueSin(int value) {
		
		value = value % 100 > 0 ? ((value / 100) + 1) * 100 : value;
		
		return value;
	}

	public List<Object> addTotalAmount(List<Object> payoffUserDto) {
		
		payoffUserDto tempDto = new payoffUserDto();
		payoffUserDto tempDto2 = new payoffUserDto();
		int tempOne = 0;
		int tempTwo = 0;
		int tempTre = 0;
		int tempFor = 0;
		int tempFiv = 0;
		
		int tempTotal = 0;
		
		tempDto.setU_uid(-1);
		tempDto.setName("합계");
		
		for(int i = 0; i < payoffUserDto.size(); i++) {
			tempDto2 =	(com.spring.board.payoff.payoffUserDto) payoffUserDto.get(i);
			tempOne += tempDto2.getOne_amount();
			tempTwo += tempDto2.getTwo_amount();
			tempTre += tempDto2.getTre_amount();
			tempFor += tempDto2.getFor_amount();
			tempFiv += tempDto2.getFiv_amount();
			tempTotal += tempDto2.getUser_total_amount();
		}
		
		
		tempDto.setOne_amount(tempOne);
		tempDto.setTwo_amount(tempTwo);
		tempDto.setTre_amount(tempTre);
		tempDto.setFor_amount(tempFor);
		tempDto.setFiv_amount(tempFiv);
		tempDto.setUser_total_amount(tempTotal);
		
		payoffUserDto.add(tempDto);
		
		
		return payoffUserDto;
	}
	
	
}
