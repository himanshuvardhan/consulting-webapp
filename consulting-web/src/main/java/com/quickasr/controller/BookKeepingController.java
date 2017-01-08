package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.base.ApplicationException;
import com.quickasr.service.IBookKeepingManager;
import com.quickasr.web.model.BookKeepingOrderModel;

@Controller
public class BookKeepingController {

	private static final Logger logger = LoggerFactory.getLogger(BookKeepingController.class);

	@Autowired
	private IBookKeepingManager bookKeepingManager;

	@RequestMapping(value = "/bookKeeping", method = RequestMethod.GET)
	public ModelAndView bookKeeping(Model model) throws ApplicationException {
		logger.debug("bookKeeping() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		return new ModelAndView("bookKeeping", "bookKeepingOrderModel", new BookKeepingOrderModel());
	}

	@RequestMapping(value = "/applyForBookKeeping", method = RequestMethod.POST)
	public String applyForBookKeeping(@ModelAttribute BookKeepingOrderModel bookKeepingOrderModel, Model model) {
		logger.debug("applyForBookKeeping(bookKeepingOrderModel, model) is executed", "quickasr");
		try {
			bookKeepingManager.applyForBookKeeping(bookKeepingOrderModel);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "redirect:/bookKeepingSuccess.htm";
	}

	@RequestMapping(value = "/bookKeepingSuccess", method = RequestMethod.GET)
	public String bookKeepingSuccess(Model model) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "bookKeepingSuccess";
	}

	@RequestMapping(value = "/gst", method = RequestMethod.GET)
	public ModelAndView gst(Model model) throws ApplicationException {
		logger.debug("gst() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		return new ModelAndView("gst", "bookKeepingOrderModel", new BookKeepingOrderModel());
	}

	@RequestMapping(value = "/applyForGST", method = RequestMethod.POST)
	public String applyForGST(@ModelAttribute BookKeepingOrderModel bookKeepingOrderModel, Model model) {
		logger.debug("applyForGST(bookKeepingOrderModel, model) is executed", "quickasr");
		try {
			bookKeepingManager.applyForGST(bookKeepingOrderModel);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "redirect:/gstSuccess.htm";
	}

	@RequestMapping(value = "/gstSuccess", method = RequestMethod.GET)
	public String gstSuccess(Model model) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + bookKeepingManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "gstSuccess";
	}

	public void setBookKeepingManager(IBookKeepingManager bookKeepingManager) {
		this.bookKeepingManager = bookKeepingManager;
	}

}
