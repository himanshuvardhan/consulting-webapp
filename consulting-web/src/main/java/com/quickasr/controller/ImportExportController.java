package com.quickasr.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.ImportExportRequest;
import com.quickasr.service.ImportExportManager;
import com.quickasr.service.IncomeTaxManager;
import com.quickasr.web.model.ImportExportOrderModel;
import com.quickasr.web.model.PayUMoneyModel;

@Controller
public class ImportExportController {
	private static final Logger logger = LoggerFactory.getLogger(ImportExportController.class);
	@Autowired
	private ImportExportManager importExportManager;
	@Autowired
	private IncomeTaxManager incomeTaxManager; 
	

	@RequestMapping(value = "/importExport", method = RequestMethod.GET)
	public ModelAndView importExport(ModelMap modelMap, Model model) {
		logger.debug("importExport() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + importExportManager.getApplicationStylePreset("application_style"));
			Map<String, String> priceMap = importExportManager.getImportExportPrice();
			for (Map.Entry<String, String> entry : priceMap.entrySet()) {
				modelMap.addAttribute(entry.getKey(), entry.getValue());
			}
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		return new ModelAndView("importExport", "importExportOrderModel", new ImportExportOrderModel());
	}

	@RequestMapping(value = "/applyForImportExport", method = RequestMethod.POST)
	public String applyForImportExport(@ModelAttribute ImportExportOrderModel importExportOrderModel, Model model, final RedirectAttributes redirectAttributes) {
		logger.debug("applyForImportExport(importExportOrderModel, model) is executed", "quickasr");
		try {
			int result = importExportManager.applyForImportExport(importExportOrderModel);
			redirectAttributes.addFlashAttribute("importExportRequestIdForPayment", result);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "redirect:/importExportSuccess.htm";
	}

	@RequestMapping(value = "/importExportSuccess", method = RequestMethod.GET)
	public String importExportSuccess(Model model) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + importExportManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "importExportSuccess";
	}
	
	@RequestMapping(value = "/importExportPayment", method = RequestMethod.POST)
	public String importExportPayment(@RequestParam(name = "importExportRequestIdForPayment") String importExportRequestIdForPayment,
			Model modelMap, final RedirectAttributes redirectAttributes) throws ApplicationException {
		logger.debug("payMoney() is executed", "quickasr");

		PayUMoneyModel payUMoneyModel = new PayUMoneyModel();

		try {
			ImportExportRequest importExportRequest = importExportManager.getImportExport(Integer.parseInt(importExportRequestIdForPayment));
			payUMoneyModel.setRequestId(String.valueOf(importExportRequest.getImportExportRequestId()));
			payUMoneyModel.setEmail(String.valueOf(importExportRequest.getRequestorEmailId()));
			payUMoneyModel.setFirstName(String.valueOf(importExportRequest.getRequestorFullName().split(" ")[0]));
			payUMoneyModel.setPhone(String.valueOf(importExportRequest.getRequestorPhoneNumber()));

			payUMoneyModel = importExportManager.generatePayment(payUMoneyModel);
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

	public void setImportExportManager(ImportExportManager importExportManager) {
		this.importExportManager = importExportManager;
	}
}
