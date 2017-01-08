package com.quickasr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExceptionHandlerController {
	String path = "error";

	@RequestMapping("/404")
	public String error404() {
		System.out.println("custom error handler");
		return path + "/404";
	}
	
	@RequestMapping("/error")
	public ModelAndView error() {
		System.out.println("error handler");
		return new ModelAndView("error");
	}
	
}
