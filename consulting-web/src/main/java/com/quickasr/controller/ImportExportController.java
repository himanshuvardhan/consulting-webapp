package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.web.model.ImportExportOrderModel;

@Controller
public class ImportExportController {
	private static final Logger logger = LoggerFactory.getLogger(ImportExportController.class);

	@RequestMapping(value = "/importExport", method = RequestMethod.GET)
	public ModelAndView importExport(Model model) {
		logger.debug("importExport() is executed", "quickasr");

		return new ModelAndView("importExport", "importExportOrderModel", new ImportExportOrderModel());
	}
	
	@RequestMapping(value = "/applyForImportExport", method = RequestMethod.POST)
	public String applyForImportExport(@ModelAttribute ImportExportOrderModel importExportOrderModel, Model model) {
		logger.debug("applyForImportExport(importExportOrderModel, model) is executed", "quickasr");
		try {
			
		} catch (Exception e) {
			
		}
		return "redirect:/importExportSuccess.htm";
	}
	
	@RequestMapping(value = "/importExportSuccess", method = RequestMethod.GET)
	public String importExportSuccess() {

		return "importExportSuccess";
	}

}
