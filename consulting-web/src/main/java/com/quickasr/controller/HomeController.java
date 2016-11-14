package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author quickasr
 *
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/index")
	public ModelAndView home(Model model) {
		logger.debug("home() is executed", "quickasr");

		model.addAttribute("stylePreset","resources/style/presets/preset2.css");
		return new ModelAndView("index");
	}

	@RequestMapping("/")
	public ModelAndView index(Model model) {
		logger.debug("index() is executed", "quickasr");

		model.addAttribute("stylePreset","resources/style/presets/preset2.css");
		return new ModelAndView("index");
	}

}
