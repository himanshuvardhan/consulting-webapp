package com.quickasr.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.ImportExportDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.ImportExportRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.ImportExportOrderModel;

public class ImportExportManager implements IImportExportManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private ImportExportDao importExportRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private String fromAddress;

	@Override
	public void applyForImportExport(ImportExportOrderModel importExportOrderModel) throws ApplicationException {
		logger.debug("applyForImportExport() is executed", "quickasr");
		try {
			ImportExportRequest importExportRequest = new ImportExportRequest();
			importExportRequest.setRequestorEmailId(importExportOrderModel.getEmailId());
			importExportRequest.setRequestorFullName(importExportOrderModel.getName());
			importExportRequest.setRequestorPhoneNumber(importExportOrderModel.getPhoneNumber());
			importExportRequest.setRequestorPanNo(importExportOrderModel.getPanNumber());
			importExportRequest.setCreatedDt(new Date());
			importExportRequest.setUpdatedDt(new Date());
			importExportRequestDao.saveOrUpdate(importExportRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(importExportRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Aplying for Import/Export", e);
		}
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

	private boolean sendConfirmationEmail(ImportExportRequest importExportRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + importExportRequest.getRequestorFullName()+ ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "Your order have been placed for the following <br>" + "Service : Import/Export" + "<br>"
					+ "Request Id : " + importExportRequest.getImportExportRequestId() + "<br>" + "Request Time : "
					+ new Date() + "<br><br>"
							+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants " + "<br>"
							+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  " + "<br>"
							+ "helped over 200 business owners in regard of their finance and accounting solutions. " + "<br><br>"
							+ "<b>Have a great day.</b>" + "<br>"
							+ "<b>Quick Accounting Team</b>" + "<br>"
							+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
							+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(getFromAddress(), importExportRequest.getRequestorEmailId(), getBccAddress(),
					"Import/Export Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	public ImportExportDao getImportExportRequestDao() {
		return importExportRequestDao;
	}

	public void setImportExportRequestDao(ImportExportDao importExportRequestDao) {
		this.importExportRequestDao = importExportRequestDao;
	}

	public Emailer getEmailer() {
		return emailer;
	}

	public void setEmailer(Emailer emailer) {
		this.emailer = emailer;
	}

	public boolean isEmailNotificationsEnabled() {
		return emailNotificationsEnabled;
	}

	public void setEmailNotificationsEnabled(boolean emailNotificationsEnabled) {
		this.emailNotificationsEnabled = emailNotificationsEnabled;
	}

	public ApplicationConfigDao getApplicationConfigDao() {
		return applicationConfigDao;
	}

	public void setApplicationConfigDao(ApplicationConfigDao applicationConfigDao) {
		this.applicationConfigDao = applicationConfigDao;
	}

	public void setBccAddress(String bccAddress) {
		this.bccAddress = bccAddress;
	}

	public String getBccAddress() {
		return bccAddress;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}
	
}
