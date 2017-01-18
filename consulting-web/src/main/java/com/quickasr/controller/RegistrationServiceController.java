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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.ImportExportRequest;
import com.quickasr.data.entity.RegistrationServiceRequest;
import com.quickasr.service.IRegistrationServiceManager;
import com.quickasr.service.IncomeTaxManager;
import com.quickasr.web.model.PayUMoneyModel;
import com.quickasr.web.model.ServiceRegistrationModel;

@Controller
public class RegistrationServiceController {

	private static final Logger logger = LoggerFactory.getLogger(RegistrationServiceController.class);

	@Autowired
	private IRegistrationServiceManager registrationServiceManager;
	@Autowired
	private IncomeTaxManager incomeTaxManager;

	@RequestMapping(value = "/serviceRegistration", method = RequestMethod.GET)
	public ModelAndView serviceRegistration(Model model) throws ApplicationException {
		logger.debug("serviceRegistration() is executed", "quickasr");
		Map<String, String> serviceMap = new LinkedHashMap<String, String>();
		try {
			serviceMap = registrationServiceManager.getRegistrationServiceTypes();
			model.addAttribute("stylePreset", "resources/style/presets/"
					+ registrationServiceManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		model.addAttribute("serviceMap", serviceMap);
		return new ModelAndView("serviceRegistration", "serviceRegistrationModel", new ServiceRegistrationModel());
	}

	@RequestMapping(value = "/applyForServiceRegistration", method = RequestMethod.POST)
	public String applyForServiceRegistration(@ModelAttribute ServiceRegistrationModel serviceRegistrationModel,
			Model model, final RedirectAttributes redirectAttributes) {
		logger.debug("applyForServiceRegistration(serviceRegistrationModel, model) is executed", "quickasr");

		try {
			int result =  registrationServiceManager.applyForRegistrationService(serviceRegistrationModel);
			redirectAttributes.addFlashAttribute("serviceRequestIdForPayment", result);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}

		return "redirect:/serviceRegistrationSuccess.htm";
	}

	@RequestMapping(value = "/serviceRegistrationSuccess", method = RequestMethod.GET)
	public String serviceRegistrationSuccess(Model model) {
		try {
			model.addAttribute("stylePreset", "resources/style/presets/"
					+ registrationServiceManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "serviceRegistrationSuccess";
	}
	
	@RequestMapping(value = "/serviceRegistrationPayment", method = RequestMethod.POST)
	public String serviceRegistrationPayment(@RequestParam(name = "serviceRequestIdForPayment") String serviceRequestIdForPayment,
			Model modelMap, final RedirectAttributes redirectAttributes) throws ApplicationException {
		logger.debug("payMoney() is executed", "quickasr");

		PayUMoneyModel payUMoneyModel = new PayUMoneyModel();

		try {
			RegistrationServiceRequest registrationServiceRequest = registrationServiceManager.getRegistrationService(Integer.parseInt(serviceRequestIdForPayment));
			payUMoneyModel.setRequestId(String.valueOf(registrationServiceRequest.getRegistrationServiceRequestId()));
			payUMoneyModel.setEmail(String.valueOf(registrationServiceRequest.getRequestorEmailId()));
			payUMoneyModel.setFirstName(String.valueOf(registrationServiceRequest.getRequestorFullName().split(" ")[0]));
			payUMoneyModel.setPhone(String.valueOf(registrationServiceRequest.getRequestorPhoneNumber()));
			payUMoneyModel.setServiceId(registrationServiceRequest.getRegistrationServiceType().getServiceId());
			
			payUMoneyModel = registrationServiceManager.generatePayment(payUMoneyModel);
			incomeTaxManager.updateIncomeTaxRequestBeforePayment(payUMoneyModel);

		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		redirectAttributes.addFlashAttribute("payUMoneyModel", payUMoneyModel);
		return "redirect:/payment.htm";
	}

	public void setRegistrationServiceManager(IRegistrationServiceManager registrationServiceManager) {
		this.registrationServiceManager = registrationServiceManager;
	}

	public void setIncomeTaxManager(IncomeTaxManager incomeTaxManager) {
		this.incomeTaxManager = incomeTaxManager;
	}
	
}
