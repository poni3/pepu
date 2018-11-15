package com.spring.board.payoff;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.user.userDto;

@Controller
public class payoffController {
	
	@Autowired
	private payoffService payoffService;
	
	@RequestMapping("/payoffList")
	public ModelAndView payoffList() throws Exception {
		
		List<payoffDto> payoffList = payoffService.getPayoffList();
		ModelAndView view = new ModelAndView();
		
		view.addObject("list",payoffList);
		view.setViewName("payoff/payoffList");
		
		return view;
	}
	
	@RequestMapping(value="/payoffInsert", method=RequestMethod.POST)
	public ModelAndView payoffInsert(@RequestParam("pay_title") String pay_title) throws Exception {
		
		payoffService.payoffInsert(pay_title);
		return new ModelAndView("payoff/payoffMsg");
	}
	
	@RequestMapping("/payoffDelte")
    public ModelAndView payoffDelete(@RequestParam("pay_m_uid") String pay_m_uid) throws Exception {
		
		payoffService.payoffDelete(pay_m_uid);
		
		return new ModelAndView("payoff/payoffMsg");
	}
	
	@RequestMapping("/payoffGetOne")
	public ModelAndView payoffGetOne(@RequestParam("pay_m_uid") String pay_m_uid) {
		payoffDto payoffDto = payoffService.payoffGetOne(pay_m_uid);
		ModelAndView view = new ModelAndView("jsonView", "list", payoffDto);
		return view;
	}
	
	
	@RequestMapping("/payoffUpdate")
	public ModelAndView payoffUpdate(payoffDto payofDto) throws Exception {
		
		payoffService.payoffUpdate(payofDto);
		
		return new ModelAndView("payoff/payoffMsg");
	}
	
	@RequestMapping("/payoffUserGet")
	public ModelAndView payoffUserGet(@RequestParam("pay_m_uid") String pay_m_uid) {
		List<Object> userDtoList = payoffService.payoffUserGet(pay_m_uid);
		ModelAndView view = new ModelAndView("jsonView", "list", userDtoList);
		return view;
	}
	
	@RequestMapping("/payUserUpdate")
	public ModelAndView payUserUpdate(@RequestParam("pay_m_uid") String pay_m_uid, @RequestParam("uids") String u_uids) throws Exception {
		
		payoffService.payUserUpdate(pay_m_uid, u_uids);

		return new ModelAndView("payoff/payoffMsg");
	}
	
	@RequestMapping("/payoffUserList")
	public ModelAndView payoffUserList(@RequestParam("pay_m_uid") String pay_m_uid) {
		List<Object> payoffUserDto = payoffService.payoffUserList(pay_m_uid);
		ModelAndView view = new ModelAndView("jsonView", "list", payoffUserDto);
		return view;
	}
	
	@RequestMapping("/payoffUserStatusUpdate")
	public ModelAndView payoffUserStatusUpdate(@RequestParam("pay_m_uid") String pay_m_uid,@RequestParam("pay_u_uids") String pay_u_uids, 
			                                   @RequestParam("mealCode") String mealCode, @RequestParam("user_no") String user_no) {
		
		payoffService.payoffUserStatusUpdate(pay_u_uids, mealCode, user_no);
		
		List<Object> payoffUserDto = payoffService.payoffUserList(pay_m_uid);
		ModelAndView view = new ModelAndView("jsonView", "list", payoffUserDto);
		return view;
	}
	
	
	@RequestMapping("/payoffUsersDelete")
    public ModelAndView payoffUsersDelete(@RequestParam("pay_u_uids") String pay_u_uids) throws Exception {
		
		payoffService.payoffUsersDelete(pay_u_uids);
		
		return new ModelAndView("payoff/payoffMsg");
	}
	
	@RequestMapping("/payoffCfmUpdate")
	public ModelAndView payoffCfmUpdate(@RequestParam("pay_m_uids") String pay_m_uids) throws Exception {
		
		payoffService.payoffCfmUpdate(pay_m_uids);

		return new ModelAndView("payoff/payoffMsg");
	}
	
	
}
