package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.base.ApplicationException;

@Controller
public class BookKeepingController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookKeepingController.class);
	
	@RequestMapping(value = "/bookKeeping", method = RequestMethod.GET)
	public ModelAndView bookKeeping(Model model) throws ApplicationException{
		logger.debug("bookKeeping() is executed", "quickasr");
		
		return new ModelAndView("bookKeeping");
	}

}
