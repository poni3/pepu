package com.spring.board.paycal;

import java.util.List;

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

}
