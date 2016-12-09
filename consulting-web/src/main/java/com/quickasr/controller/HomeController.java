package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.base.ApplicationException;
import com.quickasr.service.BookKeepingManager;
import com.quickasr.web.model.BookKeepingOrderModel;
import com.quickasr.web.model.ContactModel;

/**
 * @author quickasr
 *
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private BookKeepingManager bookKeepingManager;

	@RequestMapping("/index")
	public ModelAndView home(Model model) {
		logger.debug("home() is executed", "quickasr");

		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
			model.addAttribute("metricMap", bookKeepingManager.getUIMetric());
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return new ModelAndView("index");
	}

	@RequestMapping("/")
	public ModelAndView index(Model model) {
		logger.debug("index() is executed", "quickasr");

		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
			model.addAttribute("metricMap", bookKeepingManager.getUIMetric());
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/updateStyle", method = RequestMethod.POST)
	public @ResponseBody String updateStyle(@RequestParam(name = "presetStyle", required = true) String presetStyle) {
		try {
			bookKeepingManager.updateApplicationStylePreset(presetStyle);
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return "success";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact(Model model) {
		logger.debug("contact() is executed", "quickasr");

		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return new ModelAndView("contact", "contactModel", new ContactModel());
	}

	@RequestMapping(value = "/contactQuery", method = RequestMethod.POST)
	public String contactQuery(@ModelAttribute ContactModel contactModel, Model model) {
		logger.debug("contact() is executed", "quickasr");

		try {
			bookKeepingManager.submitUserQuery(contactModel);
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}

		return "redirect:/contactSuccess.htm";
	}

	@RequestMapping(value = "/contactSuccess", method = RequestMethod.GET)
	public ModelAndView contactSuccess(Model model) {
		logger.debug("contact() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return new ModelAndView("contactSuccess");
	}

	public BookKeepingManager getBookKeepingManager() {
		return bookKeepingManager;
	}

	public void setBookKeepingManager(BookKeepingManager bookKeepingManager) {
		this.bookKeepingManager = bookKeepingManager;
	}

}
