package com.quickasr.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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
import com.quickasr.web.model.ServiceRegistrationModel;

public class RegistrationServiceManager implements IRegistrationServiceManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private Emailer emailer;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private RegistrationServiceTypeDao registrationServiceTypeDao;
	private RegistrationServiceRequestDao registrationServiceRequestDao;

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
	public void applyForRegistrationService(ServiceRegistrationModel serviceRegistrationModel)
			throws ApplicationException {
		logger.debug("applyForRegistrationService() is executed", "quickasr");
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
			registrationServiceRequestDao.saveOrUpdate(registrationServiceRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(registrationServiceRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error applying for RegistrationService", e);
		}
	}

	private boolean sendConfirmationEmail(RegistrationServiceRequest registrationServiceRequest)
			throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + registrationServiceRequest.getRequestorFullName()
					+ "\n Your order have been placed for the following \n" + "Service : Registration" + "\n"
					+ "Request Id : " + registrationServiceRequest.getRegistrationServiceRequestId() + "\n"
					+ "Service Type : " + registrationServiceRequest.getRegistrationServiceType().getServiceName()
					+ "\n" + "Request Time : " + new Date() + "\n";

			emailer.sendMail("quickconsulting@gmail.com", registrationServiceRequest.getRequestorEmailId(),
					getBccAddress(), "BookKeeping Order Confirmation", body);
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

}
