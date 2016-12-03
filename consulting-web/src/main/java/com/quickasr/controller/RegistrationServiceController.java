package com.quickasr.controller;

import java.util.LinkedHashMap;
import java.util.Map;

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
import com.quickasr.service.IRegistrationServiceManager;
import com.quickasr.web.model.ServiceRegistrationModel;

@Controller
public class RegistrationServiceController {

	private static final Logger logger = LoggerFactory.getLogger(RegistrationServiceController.class);

	@Autowired
	private IRegistrationServiceManager registrationServiceManager;

	@RequestMapping(value = "/serviceRegistration", method = RequestMethod.GET)
	public ModelAndView serviceRegistration(Model model) throws ApplicationException {
		logger.debug("serviceRegistration() is executed", "quickasr");
		Map<String, String> serviceMap = new LinkedHashMap<String, String>();
		try {

			serviceMap.put("1", "FSSAI Food License");
			serviceMap.put("2", "IEC Registration");
			serviceMap.put("3", "Trade License");
			serviceMap.put("4", "ISO Registration");
			serviceMap.put("5", "Digital Signature (DSC)");
			serviceMap.put("6", "Employee State Insurance (ESI) Registration");
			serviceMap.put("7", "Employees Provident Fund");

			serviceMap.put("8", "Service Tax Registration");
			serviceMap.put("9", "Sales Tax Registration");
			serviceMap.put("10", "Professional Tax Registration");
			serviceMap.put("11", "Excise Tax Registration");

			model.addAttribute("stylePreset",
					"resources/style/presets/" + registrationServiceManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		model.addAttribute("serviceMap", serviceMap);
		return new ModelAndView("serviceRegistration", "serviceRegistrationModel", new ServiceRegistrationModel());
	}

	@RequestMapping(value = "/applyForServiceRegistration", method = RequestMethod.POST)
	public String applyForServiceRegistration(@ModelAttribute ServiceRegistrationModel serviceRegistrationModel,
			Model model) {
		logger.debug("applyForBookKeeping(bookKeepingOrderModel, model) is executed", "quickasr");
		/*
		 * try {
		 * 
		 * } catch (ApplicationException e) { logger.error(e.getErrorCode()); }
		 */
		return "redirect:/serviceRegistrationSuccess.htm";
	}

	@RequestMapping(value = "/serviceRegistrationSuccess", method = RequestMethod.GET)
	public String serviceRegistrationSuccess(Model model) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + registrationServiceManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return "serviceRegistrationSuccess";
	}

	public IRegistrationServiceManager getRegistrationServiceManager() {
		return registrationServiceManager;
	}

	public void setRegistrationServiceManager(IRegistrationServiceManager registrationServiceManager) {
		this.registrationServiceManager = registrationServiceManager;
	}
}
