package com.quickasr.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.IncomeTaxRequest;
import com.quickasr.service.IIncomeTaxManager;
import com.quickasr.web.model.IncomeTaxModel;
import com.quickasr.web.model.PayUMoneyModel;

@Controller
public class IncomeTaxController {

	private static final Logger logger = LoggerFactory.getLogger(LoansController.class);

	@Autowired
	private IIncomeTaxManager incomeTaxManager;

	@RequestMapping(value = "/incomeTax", method = RequestMethod.GET)
	public ModelAndView incomeTax(ModelMap modelMap, Model model) {
		logger.debug("incomeTax() is executed", "quickasr");
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + incomeTaxManager.getApplicationStylePreset("application_style"));
			Map<String, String> priceMap = incomeTaxManager.getIncomeTaxPrice();
			for (Map.Entry<String, String> entry : priceMap.entrySet()) {
				modelMap.addAttribute(entry.getKey(), entry.getValue());
			}
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
			return new ModelAndView("error");
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return new ModelAndView("error");
		}

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
				incomeTaxModel.setIncomeTaxRequestId(result);
				incomeTaxManager.uploadForm16(incomeTaxModel);
			} else if (incomeTaxManager.validateIncomeTaxForm(incomeTaxModel)) {
				result = incomeTaxModel.getIncomeTaxRequestId();
				incomeTaxModel.setEmailId(incomeTaxManager.getIncomeTaxFilling(incomeTaxModel.getIncomeTaxRequestId())
						.getRequestorEmailId());
				incomeTaxModel.setIncomeTaxRequestId(result);
				incomeTaxManager.uploadForm16(incomeTaxModel);
			}
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
			result = -1;
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			result = -1;
		}
		modelMap.addAttribute("incomeTaxModel", incomeTaxModel);
		return result;
	}

	@RequestMapping(value = "/payMoney", method = RequestMethod.POST)
	public String payMoney(@RequestParam(name = "incomeTaxRequestIdForPayment") String incomeTaxRequestIdForPayment,
			Model modelMap, final RedirectAttributes redirectAttributes) throws ApplicationException {
		logger.debug("payMoney() is executed", "quickasr");

		PayUMoneyModel payUMoneyModel = new PayUMoneyModel();

		try {
			IncomeTaxRequest incomeTaxRequest = incomeTaxManager
					.getIncomeTaxFilling(Integer.parseInt(incomeTaxRequestIdForPayment));
			payUMoneyModel.setRequestId(String.valueOf(incomeTaxRequest.getIncomeTaxRequestId()));
			payUMoneyModel.setUserType(incomeTaxRequest.getUserType());
			payUMoneyModel.setEmail(String.valueOf(incomeTaxRequest.getRequestorEmailId()));
			payUMoneyModel.setFirstName(String.valueOf(incomeTaxRequest.getRequestorFullName().split(" ")[0]));
			payUMoneyModel.setPhone(String.valueOf(incomeTaxRequest.getRequestorPhoneNumber()));

			payUMoneyModel = incomeTaxManager.generatePayment(payUMoneyModel);
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

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment(Model model, @ModelAttribute("payUMoneyModel") final PayUMoneyModel payUMoneyModel) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + incomeTaxManager.getApplicationStylePreset("application_style"));
			model.addAttribute("payUMoneyModel", payUMoneyModel);
		} catch (ApplicationException e) {
			logger.error(e.getErrorCode());
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "payment";
	}

	@RequestMapping(value = "/paymentSuccess", method = RequestMethod.POST)
	public String paymentSuccess(Model model, HttpServletRequest request, HttpServletResponse response) {
		try {
			model.addAttribute("stylePreset",
					"resources/style/presets/" + incomeTaxManager.getApplicationStylePreset("application_style"));
			PayUMoneyModel payUMoneyModel = new PayUMoneyModel();
			payUMoneyModel.setPayUMoneyTxnid(request.getParameter("mihpayid"));
			payUMoneyModel.setTxnid(request.getParameter("txnid"));
			payUMoneyModel.setPaymentStatus("SUCCESS");
			payUMoneyModel.setAmount(request.getParameter("amount"));
			incomeTaxManager.updateIncomeTaxRequestAfterPayment(payUMoneyModel);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "paymentSuccess";
	}

	@RequestMapping(value = "/paymentFailure", method = RequestMethod.POST)
	public String paymentFailure(Model model, HttpServletRequest request, HttpServletResponse response) {
		PayUMoneyModel payUMoneyModel = new PayUMoneyModel();
		try {
			payUMoneyModel.setPayUMoneyTxnid(request.getParameter("mihpayid"));
			payUMoneyModel.setTxnid(request.getParameter("txnid"));
			payUMoneyModel.setPaymentStatus("FAILED");
			payUMoneyModel.setAmount(request.getParameter("amount"));
			incomeTaxManager.updateIncomeTaxRequestAfterPayment(payUMoneyModel);
		} catch (ApplicationException e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		} catch (Exception e) {
			logger.error(e.getStackTrace().toString());
			return "redirect:/error.htm";
		}
		return "paymentFailure";
	}

	public void setIncomeTaxManager(IIncomeTaxManager incomeTaxManager) {
		this.incomeTaxManager = incomeTaxManager;
	}

}
