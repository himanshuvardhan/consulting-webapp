package com.vardhan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CreateCompanyController {
	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyController.class);

	@RequestMapping(value = "/createCompany", method = RequestMethod.GET)
	public ModelAndView createCompany(Model model) {
		logger.debug("createCompany() is executed", "vardhan");
		
		return new ModelAndView("createCompany");
	}

	@RequestMapping(value = "/createCompany", method = RequestMethod.POST)
	public ModelAndView createCompany(@RequestParam(value = "companyName") String companyName, Model model) {
		logger.debug("createCompany() is executed", "vardhan");
		model.addAttribute("companyName", companyName);
		return new ModelAndView("createCompany");
	}
}
