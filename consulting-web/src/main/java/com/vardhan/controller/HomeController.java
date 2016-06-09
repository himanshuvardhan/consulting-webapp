package com.vardhan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author vardhan
 *
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/index")
	public ModelAndView home() {
		logger.debug("home() is executed", "vardhan");

		return new ModelAndView("index");
	}
	
	@RequestMapping("/")
	public ModelAndView index() {
		logger.debug("index() is executed", "vardhan");

		return new ModelAndView("index");
	}
	
}
