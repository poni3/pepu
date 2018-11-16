package com.spring.board.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class userController {
	
	@Autowired
	private userService userService;
	
	@RequestMapping("/userList")
	public ModelAndView userList() throws Exception {
		
		List<userDto> userList = userService.getUserList();
		ModelAndView view = new ModelAndView();
		
		view.addObject("list",userList);
		view.setViewName("user/userList");
		
		return view;
	}
	
	@RequestMapping("/userDelete")
	public ModelAndView userDelete(@RequestParam("u_uids") String u_uids) throws Exception {
		//String u_uid = request.getParameter("u_uids");
		
		userService.userDelete(u_uids);
		
		return new ModelAndView("user/userMsg");
	}
	
	@RequestMapping("/userInsert")
	public ModelAndView usertInsert(userDto userdto) throws Exception {
		
		userService.userInsert(userdto);
		
		if(userdto.getRida() != 85) {
			return new ModelAndView("user/oldUserMsg");
		}
		
		return new ModelAndView("user/userMsg");
	}
	
	@RequestMapping("/oldUserList")
	public ModelAndView oldUserList() throws Exception {
		
		List<userDto> userList = userService.getOldUserList();
		ModelAndView view = new ModelAndView();
		
		view.addObject("list",userList);
		view.setViewName("user/oldUserList");
		
		return view;
	}
	
	@RequestMapping("/oldUserDelete")
	public ModelAndView oldUserDelete(@RequestParam("u_uids") String u_uids) throws Exception {
		//String u_uid = request.getParameter("u_uids");
		
		userService.userDelete(u_uids);
		
		return new ModelAndView("user/oldUserMsg");
	}
	
}
