package com.vardhan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CreateCompanyController {
	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyController.class);

	@RequestMapping(value = "createCompany", method = RequestMethod.POST)
	public ModelAndView createCompany() {
		logger.debug("createCompany() is executed", "vardhan");

		return new ModelAndView("error/404");
	}
}
