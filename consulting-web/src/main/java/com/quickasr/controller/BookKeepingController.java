package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.BookKeepingOrderModel;
import com.quickasr.web.model.LoanOrderModel;

@Controller
public class BookKeepingController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookKeepingController.class);
	
	@RequestMapping(value = "/bookKeeping", method = RequestMethod.GET)
	public ModelAndView bookKeeping(Model model) throws ApplicationException{
		logger.debug("bookKeeping() is executed", "quickasr");
		
		return new ModelAndView("bookKeeping", "bookKeepingOrderModel", new BookKeepingOrderModel());
	}
	
	@RequestMapping(value = "/applyForBookKeeping", method = RequestMethod.POST)
	public String applyForBookKeeping(@ModelAttribute BookKeepingOrderModel bookKeepingOrderModel, Model model) {
		logger.debug("applyForBookKeeping(bookKeepingOrderModel, model) is executed", "quickasr");
		try {
			
		} catch (Exception e) {
			
		}
		return "redirect:/bookKeepingSuccess.htm";
	}
	
	@RequestMapping(value = "/bookKeepingSuccess", method = RequestMethod.GET)
	public String bookKeepingSuccess() {

		return "bookKeepingSuccess";
	}

}
