package com.spring.board.paycal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		payoffUserDto = paycalService.addTotalAmount(payoffUserDto);	
		
		
		return new ModelAndView("paycal/paycalEdit").addObject("paycalDto", payoffDto).addObject("list", payoffUserDto);
	}
	
	@RequestMapping("/paycalCfmCancel")
	public ModelAndView paycalCfmCancel(@RequestParam("pay_m_uids") String pay_m_uids) {
		
		paycalService.paycalCfmCancel(pay_m_uids);
		
		return new ModelAndView("paycal/paycalMsg");
	}
	
	@RequestMapping("/paycalEditExcel")
	public ModelAndView paycalEditExcel(@RequestParam("pay_m_uid") String pay_m_uid) {
		
		List<Object> payoffUserDto = payoffService.payoffUserList(pay_m_uid);
		payoffDto payoffDto      = payoffService.payoffGetOne(pay_m_uid);
		
		payoffUserDto = paycalService.addTotalAmount(payoffUserDto);
		
		return new ModelAndView("paycal/paycalEditExcel").addObject("paycalDto", payoffDto).addObject("list", payoffUserDto).addObject("fileName", payoffDto.getPay_title());
	}
	
	
	@RequestMapping(value="/paycalAutoUpdate", method=RequestMethod.POST)
	public ModelAndView paycalAutoUpdate(paycalDto paycalDto) throws Exception {
			
		paycalService.paycalAutoUpdate(paycalDto);
		
		return paycalEdit(paycalDto.getPay_m_uid()+"");
	}
	
}
