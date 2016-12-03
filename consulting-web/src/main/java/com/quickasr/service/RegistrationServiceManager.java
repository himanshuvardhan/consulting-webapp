package com.quickasr.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.BookKeepingRequestDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.BookKeepingRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.ServiceRegistrationModel;

public class RegistrationServiceManager implements IRegistrationServiceManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private BookKeepingRequestDao bookKeepingRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;

	@Override
	public void applyForRegistrationService(ServiceRegistrationModel serviceRegistrationModel) throws ApplicationException {
		logger.debug("applyForBookKeeping() is executed", "quickasr");
		try {
			BookKeepingRequest bookKeepingRequest = new BookKeepingRequest();
			bookKeepingRequest.setRequestorEmailId(serviceRegistrationModel.getEmailId());
			bookKeepingRequest.setRequestorFullName(serviceRegistrationModel.getName());
			bookKeepingRequest.setRequestorPhoneNumber(serviceRegistrationModel.getPhoneNumber());
			bookKeepingRequest.setRequestorPanNo(serviceRegistrationModel.getPanNumber());
			bookKeepingRequest.setCreatedDt(new Date());
			bookKeepingRequest.setUpdatedDt(new Date());
			bookKeepingRequestDao.saveOrUpdate(bookKeepingRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(bookKeepingRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error applying for bookkeeping", e);
		}
	}

	private boolean sendConfirmationEmail(BookKeepingRequest bookKeepingRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + bookKeepingRequest.getRequestorFullName()
					+ "\n Your order have been placed for the following \n" + "Service : Registration" + "\n"
					+ "Request Id : " + bookKeepingRequest.getBookKeepingRequestId() + "\n" + "Request Time : "
					+ new Date() + "\n";

			emailer.sendMail("quickconsulting@gmail.com", bookKeepingRequest.getRequestorEmailId(), "",
					"BookKeeping Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
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
	
	public BookKeepingRequestDao getBookKeepingRequestDao() {
		return bookKeepingRequestDao;
	}

	public void setBookKeepingRequestDao(BookKeepingRequestDao bookKeepingRequestDao) {
		this.bookKeepingRequestDao = bookKeepingRequestDao;
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

}
