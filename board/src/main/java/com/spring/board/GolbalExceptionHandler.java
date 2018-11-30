package com.spring.board;

import org.mybatis.spring.MyBatisSystemException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.spring.board.exception.BizException;

@ControllerAdvice
public class GolbalExceptionHandler {

		@ExceptionHandler(BizException.class)
		public String handleBizException(Exception e, Model model) {
			
			model.addAttribute("type", e.getClass().getSimpleName());
			model.addAttribute("msg", e.getMessage());
			
			return "error/error";
		}
		
		@ExceptionHandler(MyBatisSystemException.class)
		public String handleBsException(Exception e, Model model) {
			
			model.addAttribute("type", e.getClass().getSimpleName());
			model.addAttribute("msg", e.getMessage());
			
			return "error/error";
		} 
		
		
}
