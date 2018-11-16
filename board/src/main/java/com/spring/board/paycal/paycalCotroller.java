package com.spring.board.paycal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.payoff.payoffDto;
import com.spring.board.payoff.payoffService;

@Controller
public class paycalCotroller {
	
	@Autowired
	private paycalService paycalService;
	@Autowired
	private payoffService payoffService;
	
	@RequestMapping("/paycalList")
	public ModelAndView paycalList() {
		
		List<payoffDto> List =   paycalService.getPaycalList();
		
		return new ModelAndView("paycal/paycalList").addObject("list", List);
		
	}
	
	@RequestMapping("/paycalEdit")
	public ModelAndView paycalEdit(@RequestParam("pay_m_uid") String pay_m_uid) {
		
		
		List<Object> payoffUserDto = payoffService.payoffUserList(pay_m_uid);
		payoffDto payoffDto      = payoffService.payoffGetOne(pay_m_uid);
		
		return new ModelAndView("paycal/paycalEdit").addObject("paycalDto", payoffDto).addObject("list", payoffUserDto);
	}
	
	@RequestMapping("/paycalCfmCancel")
	public ModelAndView paycalCfmCancel(@RequestParam("pay_m_uids") String pay_m_uids) {
		
		paycalService.paycalCfmCancel(pay_m_uids);
		
		return new ModelAndView("paycal/paycalMsg");
	}
	
	
	
}
