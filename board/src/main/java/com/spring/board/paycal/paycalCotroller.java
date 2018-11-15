package com.spring.board.paycal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.payoff.payoffDto;

@Controller
public class paycalCotroller {
	
	@Autowired
	private paycalService paycalService;
	
	@RequestMapping("/paycalList")
	public ModelAndView paycalList() {
		
		
		ModelAndView view = new ModelAndView();
		
		List<payoffDto> List =   paycalService.getPaycalList();
		
		view.setViewName("paycal/paycalList");
		view.addObject("list", List);
		
		return view;
		
	}
	
}
