package com.quickasr.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.IncomeTaxRequestDao;
import com.quickasr.data.dao.PaymentTxnSummaryDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.IncomeTaxRequest;
import com.quickasr.data.entity.PaymentTxnSummary;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.IncomeTaxModel;
import com.quickasr.web.model.PayUMoneyModel;

public class IncomeTaxManager implements IIncomeTaxManager {

	private static final Logger logger = LoggerFactory.getLogger(ILoansManager.class);
	private Emailer emailer;
	private String rootPath;
	private IncomeTaxRequestDao incomeTaxRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private PaymentTxnSummaryDao paymentTxnSummaryDao;
	private String bccAddress;
	private String fromAddress;

	private String serviceProvider;
	private String baseUrl;
	private String fUrl;
	private String sUrl;

	@Override
	public boolean validateIncomeTaxForm(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		boolean result = false;
		try {
			if (incomeTaxModel.getBankName().trim().length() == 0 || incomeTaxModel.getEmailId().trim().length() == 0
					|| incomeTaxModel.getFiles().size() == 0 || incomeTaxModel.getFullName().trim().length() == 0
					|| incomeTaxModel.getIfscCode().trim().length() == 0
					|| incomeTaxModel.getPhoneNumber().trim().length() == 0) {
				throw new ApplicationException("Form data incomplete");
			} else {
				result = true;
			}
		} catch (ApplicationException e) {
			throw new ApplicationException("Error Validating Form", e);
		} catch (Exception e) {
			throw new ApplicationException("Error Validating Form", e);
		}
		return result;
	}

	@Override
	public boolean uploadForm16(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		boolean result = true;
		try {

			String fileLocation = this.rootPath + "tax_documents/" + incomeTaxModel.getEmailId() + "_"
					+ incomeTaxModel.getIncomeTaxRequestId() + "/";

			Path path = Paths.get(fileLocation);
			if (!Files.exists(path)) {
				try {
					logger.debug("uploadForm16() is executed path:" + path, "quickasr");
					Files.createDirectory(path);
				} catch (IOException e) {
					throw e;
				}
			}

			for (MultipartFile multipartFile : incomeTaxModel.getFiles()) {

				String fileName = multipartFile.getOriginalFilename();
				String fileNameToCreate = fileLocation + fileName;
				File destinationFile = null;
				try {
					logger.debug("uploadForm16() is executed tranfering:" + fileNameToCreate, "quickasr");
					destinationFile = new File(fileNameToCreate);
					multipartFile.transferTo(destinationFile);
					multipartFile = null;

				} catch (IOException | IllegalStateException e) {
					multipartFile = null;
				}
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Uploading File", e);
		}
		return result;
	}

	@Override
	public int requestIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		int result = 0;
		try {
			IncomeTaxRequest incomeTaxRequest = new IncomeTaxRequest();
			incomeTaxRequest.setRequestorBankName(incomeTaxModel.getBankName());
			incomeTaxRequest.setRequestorEmailId(incomeTaxModel.getEmailId());
			incomeTaxRequest.setRequestorFullName(incomeTaxModel.getFullName());
			incomeTaxRequest.setRequestorIfscCode(incomeTaxModel.getIfscCode());
			incomeTaxRequest.setRequestorPhoneNumber(incomeTaxModel.getPhoneNumber());
			if (incomeTaxModel.isCorporateUser()) {
				incomeTaxRequest.setUserType("corporate_user");
			} else {
				incomeTaxRequest.setUserType("individual_user");
			}
			incomeTaxRequest.setUpdatedDt(new Date());
			incomeTaxRequest.setCreatedDt(new Date());

			result = incomeTaxRequestDao.create(incomeTaxRequest);

			if (emailNotificationsEnabled) {
				sendConfirmationEmail(incomeTaxRequest);
			}

		} catch (Exception e) {
			throw new ApplicationException("Error Applying for income tax", e);
		}
		return result;
	}

	@Override
	public IncomeTaxRequest getIncomeTaxFilling(int incomeTaxRequestId) throws ApplicationException {
		IncomeTaxRequest incomeTaxRequest = new IncomeTaxRequest();
		try {

			incomeTaxRequest = incomeTaxRequestDao.read(incomeTaxRequestId);

		} catch (Exception e) {
			throw new ApplicationException("Error getting income tax data", e);
		}
		return incomeTaxRequest;
	}

	@Override
	public String getApplicationStylePreset(String stylePreset) throws ApplicationException {

		try {
			List<ApplicationConfig> stylePresetList = applicationConfigDao.findByName("config_name", stylePreset);
			if (stylePresetList.size() > 0) {
				return stylePresetList.get(0).getConfigValue();
			} else {
				return "preset1.css";
			}
		} catch (Exception e) {
			return "preset1.css";
		}
	}

	@Override
	public Map<String, String> getIncomeTaxPrice() throws ApplicationException {
		Map<String, String> priceMap = new HashMap<String, String>();
		try {
			List<ApplicationConfig> prices = applicationConfigDao.findByName("config_categ", "APPLICATION_AMOUNT");
			if (prices.size() > 0) {
				for (ApplicationConfig applicationConfig : prices) {
					if (applicationConfig.getConfigName().equalsIgnoreCase("INCOME_TAX_INDIVIDULA")
							|| applicationConfig.getConfigName().equalsIgnoreCase("INCOME_TAX_CORPORATE"))
						priceMap.put(applicationConfig.getConfigName(), applicationConfig.getConfigValue());
				}
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
		return priceMap;
	}

	@Override
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		PayUMoneyAPI payUMoneyAPI = new PayUMoneyAPI();
		Map<String, String> values = new HashMap<String, String>();
		try {

			if (payUMoneyModel.getUserType().equalsIgnoreCase("individual_user")) {
				payUMoneyModel.setAmount(
						applicationConfigDao.findByNameSingle("config_name", "INCOME_TAX_INDIVIDULA").getConfigValue());
			} else {
				payUMoneyModel.setAmount(
						applicationConfigDao.findByNameSingle("config_name", "INCOME_TAX_CORPORATE").getConfigValue());
			}
			payUMoneyModel.setProductInfo(String.valueOf("Income Tax Return"));
			payUMoneyModel.setFailureURI(String.valueOf(fUrl));
			payUMoneyModel.setSuccessURI(String.valueOf(sUrl));
			payUMoneyModel.setServiceProvider(serviceProvider);
			payUMoneyModel.setBaseUrl(baseUrl);
			// payUMoneyModel.setKey("UFu3ed");
			payUMoneyModel.setKey("r8USItVb");

			values = payUMoneyAPI.hashCalMethod(payUMoneyModel);

			payUMoneyModel.setHash(values.get("hash").trim());
			payUMoneyModel.setTxnid(values.get("txnid").trim());

		} catch (ServletException | IOException e) {
			throw new ApplicationException(e);
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
		return payUMoneyModel;
	}

	@Override
	public void updateIncomeTaxRequestBeforePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		try {

			PaymentTxnSummary paymentTxnSummary = new PaymentTxnSummary();
			paymentTxnSummary.setAmountPaid(payUMoneyModel.getAmount());
			paymentTxnSummary.setPaymentStatus(payUMoneyModel.getPaymentStatus());
			if (payUMoneyModel.getTxnid() != null) {
				paymentTxnSummary.setPaymentTxnid(payUMoneyModel.getTxnid());
			}
			paymentTxnSummary.setServiceRequestId(Integer.parseInt(payUMoneyModel.getRequestId()));
			paymentTxnSummary.setServiceType(payUMoneyModel.getProductInfo());
			paymentTxnSummary.setUpdatedDt(new Date());
			paymentTxnSummary.setCreatedDt(new Date());
			paymentTxnSummaryDao.saveOrUpdate(paymentTxnSummary);

		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	@Override
	public void updateIncomeTaxRequestAfterPayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		try {

			PaymentTxnSummary paymentTxnSummary = paymentTxnSummaryDao.findByNameSingle("payment_txnid",
					payUMoneyModel.getTxnid());
			if (payUMoneyModel.getPayUMoneyTxnid() != null) {
				paymentTxnSummary.setPayuTxnid(payUMoneyModel.getPayUMoneyTxnid());
			}
			paymentTxnSummary.setAmountPaid(payUMoneyModel.getAmount());
			paymentTxnSummary.setPaymentStatus(payUMoneyModel.getPaymentStatus());
			paymentTxnSummary.setUpdatedDt(new Date());
			paymentTxnSummaryDao.saveOrUpdate(paymentTxnSummary);
			try {
				this.sendPaymentEmail(payUMoneyModel);
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	private boolean sendConfirmationEmail(IncomeTaxRequest incomeTaxRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + incomeTaxRequest.getRequestorFullName() + ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "Your order have been placed for the following <br>" + "Service : Income Tax Filling" + "<br>"
					+ "Request Id : " + incomeTaxRequest.getIncomeTaxRequestId() + "<br>" + "Request Time : "
					+ new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(fromAddress, incomeTaxRequest.getRequestorEmailId(), bccAddress,
					"Income Tax Return Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	private boolean sendPaymentEmail(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		logger.debug("sendPaymentEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + payUMoneyModel.getFirstName() + ",<br><br>" + "<b>Thanks for choosing us.</b>"
					+ "<br><br>" + "Your payment summary <br>" + "Service : " + payUMoneyModel.getProductInfo() + "<br>"
					+ "Request Id : " + payUMoneyModel.getTxnid() + "<br>" + "Amount : Rs." + payUMoneyModel.getAmount()
					+ "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(fromAddress, payUMoneyModel.getEmail(), bccAddress,
					"Payment Confirmation For " + payUMoneyModel.getProductInfo(), body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	public void setEmailer(Emailer emailer) {
		this.emailer = emailer;
	}

	public void setRootPath(String rootPath) {
		this.rootPath = rootPath;
	}

	public void setIncomeTaxRequestDao(IncomeTaxRequestDao incomeTaxRequestDao) {
		this.incomeTaxRequestDao = incomeTaxRequestDao;
	}

	public void setEmailNotificationsEnabled(boolean emailNotificationsEnabled) {
		this.emailNotificationsEnabled = emailNotificationsEnabled;
	}

	public void setApplicationConfigDao(ApplicationConfigDao applicationConfigDao) {
		this.applicationConfigDao = applicationConfigDao;
	}

	public void setBccAddress(String bccAddress) {
		this.bccAddress = bccAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public void setServiceProvider(String serviceProvider) {
		this.serviceProvider = serviceProvider;
	}

	public void setBaseUrl(String baseUrl) {
		this.baseUrl = baseUrl;
	}

	public void setfUrl(String fUrl) {
		this.fUrl = fUrl;
	}

	public void setsUrl(String sUrl) {
		this.sUrl = sUrl;
	}

	public void setPaymentTxnSummaryDao(PaymentTxnSummaryDao paymentTxnSummaryDao) {
		this.paymentTxnSummaryDao = paymentTxnSummaryDao;
	}

}
