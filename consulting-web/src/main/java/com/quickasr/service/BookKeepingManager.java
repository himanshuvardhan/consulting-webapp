package com.quickasr.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.BookKeepingRequestDao;
import com.quickasr.data.dao.UserQueryDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.BookKeepingRequest;
import com.quickasr.data.entity.UserQuery;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.BookKeepingOrderModel;
import com.quickasr.web.model.ContactModel;

public class BookKeepingManager implements IBookKeepingManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private BookKeepingRequestDao bookKeepingRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private UserQueryDao userQueryDao;

	@Override
	public void applyForBookKeeping(BookKeepingOrderModel bookKeepingOrderModel) throws ApplicationException {
		logger.debug("applyForBookKeeping() is executed", "quickasr");
		try {
			BookKeepingRequest bookKeepingRequest = new BookKeepingRequest();
			bookKeepingRequest.setRequestorEmailId(bookKeepingOrderModel.getEmailId());
			bookKeepingRequest.setRequestorFullName(bookKeepingOrderModel.getName());
			bookKeepingRequest.setRequestorPhoneNumber(bookKeepingOrderModel.getPhoneNumber());
			bookKeepingRequest.setRequestorPanNo(bookKeepingOrderModel.getPanNumber());
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
			String body = "Hi " + bookKeepingRequest.getRequestorFullName() + ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "Your order have been placed for the following <br>" + "Service : BookKeeping" + "\n"
					+ "Request Id : " + bookKeepingRequest.getBookKeepingRequestId() + "<br>" + "Request Time : "
					+ new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail("quickconsulting@gmail.com", bookKeepingRequest.getRequestorEmailId(), getBccAddress(),
					"BookKeeping Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	private boolean sendQueryConfirmationEmail(UserQuery userQuery) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + userQuery.getFullName() + ",<br><br>" + "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "\nYour Query has been submitted successfully </b>" + "Request Id : " + userQuery.getQueryId()
					+ "</b>" + "Request Time : " + new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail("quickconsulting@gmail.com", userQuery.getUserEmailId(), getBccAddress(),
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

	@Override
	public void updateApplicationStylePreset(String stylePreset) throws ApplicationException {

		try {
			List<ApplicationConfig> stylePresetList = applicationConfigDao.findByName("config_name",
					"application_style");
			for (ApplicationConfig applicationConfig : stylePresetList) {
				applicationConfig.setConfigValue(stylePreset);
				applicationConfigDao.saveOrUpdate(applicationConfig);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error updating application style", e);
		}
	}

	@Override
	public Map<String, String> getUIMetric() throws ApplicationException {
		Map<String, String> metricMap = new HashMap<String, String>();
		try {
			List<ApplicationConfig> uiMetric = applicationConfigDao.findByName("config_categ", "UI_METRIC");
			if (uiMetric.size() > 0) {
				for (ApplicationConfig applicationConfig : uiMetric) {
					metricMap.put(applicationConfig.getConfigName(), applicationConfig.getConfigValue());
				}
			}
		} catch (Exception e) {
			throw new ApplicationException("Error updating application style", e);
		}
		return metricMap;
	}

	@Override
	public void submitUserQuery(ContactModel contactModel) throws ApplicationException {
		logger.debug("applyForBookKeeping() is executed", "quickasr");
		try {
			UserQuery userQuery = new UserQuery();
			userQuery.setQueryMessage(contactModel.getQueryMessage());
			userQuery.setQuerySubject(contactModel.getQuerySubject());
			userQuery.setUserEmailId(contactModel.getEmailId());
			userQuery.setFullName(contactModel.getFullName());
			userQuery.setCreatedDt(new Date());
			userQuery.setUpdatedDt(new Date());
			userQueryDao.saveOrUpdate(userQuery);
			if (emailNotificationsEnabled) {
				sendQueryConfirmationEmail(userQuery);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error applying for bookkeeping", e);
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

	public String getBccAddress() {
		return bccAddress;
	}

	public void setBccAddress(String bccAddress) {
		this.bccAddress = bccAddress;
	}

	public UserQueryDao getUserQueryDao() {
		return userQueryDao;
	}

	public void setUserQueryDao(UserQueryDao userQueryDao) {
		this.userQueryDao = userQueryDao;
	}

}
