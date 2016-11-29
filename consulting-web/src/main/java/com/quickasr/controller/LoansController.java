package com.quickasr.controller;

import java.util.LinkedHashMap;
import java.util.List;
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
import com.quickasr.service.ILoansManager;
import com.quickasr.web.model.LoanOrderModel;
import com.quickasr.web.model.LoanTypeModel;

@Controller
public class LoansController {
	private static final Logger logger = LoggerFactory.getLogger(LoansController.class);

	@Autowired
	private ILoansManager loansManager;

	@RequestMapping(value = "/loans", method = RequestMethod.GET)
	public ModelAndView loans(Model model) {
		logger.debug("loans() is executed", "quickasr");
		Map<String, String> loanTypesMap = new LinkedHashMap<String, String>();
		try {
			List<LoanTypeModel> loanTypes = loansManager.getLoanTypes();

			for (LoanTypeModel loanTypeModel : loanTypes) {
				loanTypesMap.put(String.valueOf(loanTypeModel.getLoanId()), loanTypeModel.getLoanName());
			}
			
			model.addAttribute("stylePreset", "resources/style/presets/"+loansManager.getApplicationStylePreset("application_style"));
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		model.addAttribute("loanTypesMap", loanTypesMap);
		return new ModelAndView("loans", "loanOrderModel", new LoanOrderModel());
	}

	@RequestMapping(value = "/applyForLoan", method = RequestMethod.POST)
	public String applyForLoan(@ModelAttribute LoanOrderModel loanOrderModel, Model model) {
		logger.debug("applyForLoan(loanOrderModel, model) is executed", "quickasr");
		try {
			loansManager.applyForLoan(loanOrderModel);
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		}
		return "redirect:/loanSuccess.htm";
	}

	@RequestMapping(value = "/loanSuccess", method = RequestMethod.GET)
	public String loanSuccess(@ModelAttribute LoanOrderModel loanOrderModel, Model model) {

		return "loanSuccess";
	}

	public ILoansManager getLoansManager() {
		return loansManager;
	}

	public void setLoansManager(ILoansManager loansManager) {
		this.loansManager = loansManager;
	}

}
