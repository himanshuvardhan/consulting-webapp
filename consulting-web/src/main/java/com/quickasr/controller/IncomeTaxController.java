/**
 * 
 */
package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Himanshu_quickasr
 *
 */
@Controller
public class IncomeTaxController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoansController.class);
	
	@RequestMapping(value = "/incomeTax", method = RequestMethod.GET)
	public ModelAndView incomeTax(ModelMap modelMap) {
		logger.debug("incomeTax() is executed", "quickasr");

		return new ModelAndView("incomeTax");
	}

}
