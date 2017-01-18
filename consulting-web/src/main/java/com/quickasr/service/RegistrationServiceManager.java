package com.quickasr.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.RegistrationServiceRequestDao;
import com.quickasr.data.dao.RegistrationServiceTypeDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.RegistrationServiceRequest;
import com.quickasr.data.entity.RegistrationServiceType;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.PayUMoneyModel;
import com.quickasr.web.model.ServiceRegistrationModel;

public class RegistrationServiceManager implements IRegistrationServiceManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private RegistrationServiceTypeDao registrationServiceTypeDao;
	private RegistrationServiceRequestDao registrationServiceRequestDao;
	private String fromAddress;
	
	private String serviceProvider;
	private String baseUrl;
	private String fUrl;
	private String sUrl;

	@Override
	public Map<String, String> getRegistrationServiceTypes() throws ApplicationException {
		logger.debug("getRegistrationServiceTypes() is executed", "quickasr");
		Map<String, String> serviceMap = new LinkedHashMap<String, String>();
		List<RegistrationServiceType> registrationServiceList = new ArrayList<RegistrationServiceType>();
		try {
			registrationServiceList = registrationServiceTypeDao.findAll();
			for (RegistrationServiceType itr : registrationServiceList) {
				serviceMap.put(String.valueOf(itr.getServiceId()), itr.getServiceName());
			}
		} catch (Exception e) {
			throw new ApplicationException("Erro Getting Registration Service Types", e);
		}
		return serviceMap;
	}

	@Override
	public int applyForRegistrationService(ServiceRegistrationModel serviceRegistrationModel)
			throws ApplicationException {
		logger.debug("applyForRegistrationService() is executed", "quickasr");
		int result = 0;
		try {
			RegistrationServiceRequest registrationServiceRequest = new RegistrationServiceRequest();
			registrationServiceRequest.setRequestorEmailId(serviceRegistrationModel.getEmailId());
			registrationServiceRequest.setRequestorFullName(serviceRegistrationModel.getName());
			registrationServiceRequest.setRequestorPhoneNumber(serviceRegistrationModel.getPhoneNumber());
			registrationServiceRequest.setRequestorPanNo(serviceRegistrationModel.getPanNumber());
			registrationServiceRequest.setRegistrationServiceType(
					registrationServiceTypeDao.read(Integer.parseInt(serviceRegistrationModel.getServiceType())));
			registrationServiceRequest.setCreatedDt(new Date());
			registrationServiceRequest.setUpdatedDt(new Date());
			result = registrationServiceRequestDao.create(registrationServiceRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(registrationServiceRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error applying for RegistrationService", e);
		}
		return result;
	}

	private boolean sendConfirmationEmail(RegistrationServiceRequest registrationServiceRequest)
			throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + registrationServiceRequest.getRequestorFullName() + ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "Your order have been placed for the following <br>" + "Service : Registration" + "<br>"
					+ "Request Id : " + registrationServiceRequest.getRegistrationServiceRequestId() + "<br>"
					+ "Service Type : " + registrationServiceRequest.getRegistrationServiceType().getServiceName()
					+ "<br>" + "Request Time : " + new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(getFromAddress(), registrationServiceRequest.getRequestorEmailId(), getBccAddress(),
					"Service Registration Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	@Override
	public RegistrationServiceRequest getRegistrationService(int registrationServiceRequestId)
			throws ApplicationException {
		RegistrationServiceRequest registrationServiceRequest = new RegistrationServiceRequest();
		try {
			registrationServiceRequest = registrationServiceRequestDao.read(registrationServiceRequestId);
		} catch (Exception e) {
			throw new ApplicationException("Error getting income tax data", e);
		}
		return registrationServiceRequest;
	}
	
	@Override
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		PayUMoneyAPI payUMoneyAPI = new PayUMoneyAPI();
		Map<String, String> values = new HashMap<String, String>();
		try {
			RegistrationServiceType registrationService = registrationServiceTypeDao.read(payUMoneyModel.getServiceId());
			payUMoneyModel
					.setAmount(String.valueOf(registrationService.getServicePrice()));
			payUMoneyModel.setProductInfo(String.valueOf(registrationService.getServiceName()));
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

	public RegistrationServiceTypeDao getRegistrationServiceTypeDao() {
		return registrationServiceTypeDao;
	}

	public void setRegistrationServiceTypeDao(RegistrationServiceTypeDao registrationServiceTypeDao) {
		this.registrationServiceTypeDao = registrationServiceTypeDao;
	}

	public RegistrationServiceRequestDao getRegistrationServiceRequestDao() {
		return registrationServiceRequestDao;
	}

	public void setRegistrationServiceRequestDao(RegistrationServiceRequestDao registrationServiceRequestDao) {
		this.registrationServiceRequestDao = registrationServiceRequestDao;
	}

	public String getFromAddress() {
		return fromAddress;
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
