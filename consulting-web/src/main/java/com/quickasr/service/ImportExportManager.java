package com.quickasr.service;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.ImportExportDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.ImportExportRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.ImportExportOrderModel;
import com.quickasr.web.model.PayUMoneyModel;

public class ImportExportManager implements IImportExportManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private ImportExportDao importExportRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private String fromAddress;

	private String serviceProvider;
	private String baseUrl;
	private String fUrl;
	private String sUrl;

	@Override
	public int applyForImportExport(ImportExportOrderModel importExportOrderModel) throws ApplicationException {
		logger.debug("applyForImportExport() is executed", "quickasr");
		int result = 0;
		try {
			ImportExportRequest importExportRequest = new ImportExportRequest();
			importExportRequest.setRequestorEmailId(importExportOrderModel.getEmailId());
			importExportRequest.setRequestorFullName(importExportOrderModel.getName());
			importExportRequest.setRequestorPhoneNumber(importExportOrderModel.getPhoneNumber());
			importExportRequest.setRequestorPanNo(importExportOrderModel.getPanNumber());
			importExportRequest.setCreatedDt(new Date());
			importExportRequest.setUpdatedDt(new Date());
			result = importExportRequestDao.create(importExportRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(importExportRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Aplying for Import/Export", e);
		}
		return result; 
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
	public Map<String, String> getImportExportPrice() throws ApplicationException {
		Map<String, String> priceMap = new HashMap<String, String>();
		try {
			List<ApplicationConfig> prices = applicationConfigDao.findByName("config_categ", "APPLICATION_AMOUNT");
			if (prices.size() > 0) {
				for (ApplicationConfig applicationConfig : prices) {
					if (applicationConfig.getConfigName().equalsIgnoreCase("IMPORT_EXPORT"))
						priceMap.put(applicationConfig.getConfigName(), applicationConfig.getConfigValue());
				}
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
		return priceMap;
	}

	@Override
	public ImportExportRequest getImportExport(int importExportRequestId) throws ApplicationException {
		ImportExportRequest importExportRequest = new ImportExportRequest();
		try {

			importExportRequest = importExportRequestDao.read(importExportRequestId);

		} catch (Exception e) {
			throw new ApplicationException("Error getting income tax data", e);
		}
		return importExportRequest;
	}

	@Override
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		PayUMoneyAPI payUMoneyAPI = new PayUMoneyAPI();
		Map<String, String> values = new HashMap<String, String>();
		try {

			payUMoneyModel
					.setAmount(applicationConfigDao.findByNameSingle("config_name", "IMPORT_EXPORT").getConfigValue());
			payUMoneyModel.setProductInfo(String.valueOf("Import Export"));
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

	private boolean sendConfirmationEmail(ImportExportRequest importExportRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + importExportRequest.getRequestorFullName() + ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "Your order have been placed for the following <br>" + "Service : Import/Export" + "<br>"
					+ "Request Id : " + importExportRequest.getImportExportRequestId() + "<br>" + "Request Time : "
					+ new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(fromAddress, importExportRequest.getRequestorEmailId(), bccAddress,
					"Import/Export Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	public void setEmailer(Emailer emailer) {
		this.emailer = emailer;
	}

	public void setImportExportRequestDao(ImportExportDao importExportRequestDao) {
		this.importExportRequestDao = importExportRequestDao;
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

}
