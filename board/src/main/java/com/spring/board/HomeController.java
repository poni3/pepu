package com.spring.board;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String test(Locale locale, Model model) throws Exception {
		//List<mainTest> mainList = mainservice.getTestList();
		  
		return "index";
		
	}
	
	@RequestMapping(value = "/login_check", method = RequestMethod.POST)
	public String login(Locale locale, Model model) throws Exception {
		//List<mainTest> mainList = mainservice.getTestList();
		  
		return "index";
		
	}
	
}
