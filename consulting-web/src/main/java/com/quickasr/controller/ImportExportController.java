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
import com.quickasr.service.ImportExportManager;
import com.quickasr.web.model.ImportExportOrderModel;

@Controller
public class ImportExportController {
	private static final Logger logger = LoggerFactory.getLogger(ImportExportController.class);
	@Autowired
	private ImportExportManager importExportManager;

	@RequestMapping(value = "/importExport", method = RequestMethod.GET)
	public ModelAndView importExport(Model model) {
		logger.debug("importExport() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset", "resources/style/presets/"+importExportManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return new ModelAndView("importExport", "importExportOrderModel", new ImportExportOrderModel());
	}
	
	@RequestMapping(value = "/applyForImportExport", method = RequestMethod.POST)
	public String applyForImportExport(@ModelAttribute ImportExportOrderModel importExportOrderModel, Model model) {
		logger.debug("applyForImportExport(importExportOrderModel, model) is executed", "quickasr");
		try {
			importExportManager.applyForImportExport(importExportOrderModel);
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return "redirect:/importExportSuccess.htm";
	}
	
	@RequestMapping(value = "/importExportSuccess", method = RequestMethod.GET)
	public String importExportSuccess(Model model) {
		try {
			model.addAttribute("stylePreset", "resources/style/presets/"+importExportManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return "importExportSuccess";
	}

	public ImportExportManager getImportExportManager() {
		return importExportManager;
	}

	public void setImportExportManager(ImportExportManager importExportManager) {
		this.importExportManager = importExportManager;
	}
}
