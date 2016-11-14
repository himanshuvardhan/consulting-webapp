/**
 * 
 */
package com.quickasr.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quickasr.base.ApplicationException;
import com.quickasr.service.IIncomeTaxManager;
import com.quickasr.web.model.IncomeTaxModel;

@Controller
public class IncomeTaxController {

	private static final Logger logger = LoggerFactory.getLogger(LoansController.class);

	@Autowired
	private IIncomeTaxManager incomeTaxManager;

	@RequestMapping(value = "/incomeTax", method = RequestMethod.GET)
	public ModelAndView incomeTax(ModelMap modelMap) {
		logger.debug("incomeTax() is executed", "quickasr");
		modelMap.addAttribute("incomeTaxModel", new IncomeTaxModel());
		return new ModelAndView("incomeTax");
	}

	@RequestMapping(value = "/uploadIncomeTaxData", method = RequestMethod.POST)
	public @ResponseBody int uploadIncomeTaxData(@ModelAttribute("incomeTaxModel") IncomeTaxModel incomeTaxModel,
			Model modelMap) throws ApplicationException {
		logger.debug("uploadIncomeTaxData() is executed", "quickasr");
		int result = 0;
		try {

			if (incomeTaxManager.validateIncomeTaxForm(incomeTaxModel) && incomeTaxModel.getIncomeTaxRequestId() == 0) {
				result = incomeTaxManager.requestIncomeTaxFilling(incomeTaxModel);
				incomeTaxManager.uploadForm16(incomeTaxModel);
			} else if (incomeTaxManager.validateIncomeTaxForm(incomeTaxModel)) {
				result = incomeTaxModel.getIncomeTaxRequestId();
				incomeTaxModel.setEmailId(incomeTaxManager.getIncomeTaxFilling(incomeTaxModel));
				incomeTaxManager.uploadForm16(incomeTaxModel);
			}
		} catch (Exception e) {

		}
		modelMap.addAttribute("incomeTaxModel", incomeTaxModel);
		return result;
	}

	public IIncomeTaxManager getIncomeTaxManager() {
		return incomeTaxManager;
	}

	public void setIncomeTaxManager(IIncomeTaxManager incomeTaxManager) {
		this.incomeTaxManager = incomeTaxManager;
	}

}
