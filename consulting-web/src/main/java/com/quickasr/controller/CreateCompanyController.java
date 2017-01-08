package com.quickasr.controller;

import java.util.ArrayList;
import java.util.List;

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

import com.quickasr.base.ApplicationException;
import com.quickasr.service.ICreateCompanyManager;
import com.quickasr.web.model.CompanyModel;
import com.quickasr.web.model.CompanyOrderModel;

@Controller
public class CreateCompanyController {
	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyController.class);

	@Autowired
	private ICreateCompanyManager createCompanyManager;

	@RequestMapping(value = "/createCompany", method = RequestMethod.GET)
	public ModelAndView createCompany(Model model) {
		logger.debug("createCompany() is executed", "quickasr");
		List<CompanyModel> companyList = new ArrayList<CompanyModel>();
		try {
			companyList = createCompanyManager.getAvailableCompany();
			model.addAttribute("stylePreset",
					"resources/style/presets/" + createCompanyManager.getApplicationStylePreset("application_style"));
			model.addAttribute("price", createCompanyManager.getCompanyPrices());
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		model.addAttribute("companyAlreadyExists", false);
		return new ModelAndView("createCompany", "companyList", companyList);
	}

	@RequestMapping(value = "/createCompany", method = RequestMethod.POST)
	public ModelAndView createCompany(@RequestParam(value = "companyName") String companyName, Model model) {
		logger.debug("createCompany() is executed", "quickasr");
		boolean result = true;
		try {
			result = createCompanyManager.checkCompanyStatus(companyName);
			model.addAttribute("stylePreset",
					"resources/style/presets/" + createCompanyManager.getApplicationStylePreset("application_style"));
			model.addAttribute("price", createCompanyManager.getCompanyPrices());
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		model.addAttribute("companyName", companyName);
		model.addAttribute("companyAlreadyExists", result);
		return new ModelAndView("createCompany");
	}

	@RequestMapping(value = "/companyOrder", method = RequestMethod.POST)
	public ModelAndView companyOrder(@RequestParam(value = "companyName", required = true) String companyName,
			@RequestParam(value = "companyId", required = true) int companyId, Model model) {
		logger.debug("companyOrder() is executed", "quickasr");
		CompanyModel companyModel = new CompanyModel();
		try {
			companyModel = createCompanyManager.getAvailableCompanyById(companyId);
			companyModel.setCompanyType(companyModel.getCompanyName());
			companyModel.setCompanyName(companyName);
			model.addAttribute("stylePreset",
					"resources/style/presets/" + createCompanyManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}
		model.addAttribute("companyName", companyName);
		model.addAttribute("companyDetail", companyModel);
		return new ModelAndView("companyOrder", "companyOrderModel", new CompanyOrderModel());
	}

	@RequestMapping(value = "/confirmCompanyOrder", method = RequestMethod.POST)
	public String confirmCompanyOrder(@ModelAttribute CompanyOrderModel companyOrderModel, Model model) {
		try {
			createCompanyManager.requestCompanyOrder(companyOrderModel);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}

		return "redirect:/companySuccess.htm";
	}

	@RequestMapping(value = "/companySuccess", method = RequestMethod.GET)
	public String companySuccess(@ModelAttribute CompanyOrderModel companyOrderModel, Model model) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + createCompanyManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "companySuccess";
	}

	public void setCreateCompanyManager(ICreateCompanyManager createCompanyManager) {
		this.createCompanyManager = createCompanyManager;
	}

}
