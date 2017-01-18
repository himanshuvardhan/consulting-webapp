package com.quickasr.service;

import java.util.Map;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.RegistrationServiceRequest;
import com.quickasr.web.model.PayUMoneyModel;
import com.quickasr.web.model.ServiceRegistrationModel;

public interface IRegistrationServiceManager {
	
	public int applyForRegistrationService(ServiceRegistrationModel serviceRegistrationModel) throws ApplicationException;

	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;

	public Map<String, String> getRegistrationServiceTypes() throws ApplicationException;

	public RegistrationServiceRequest getRegistrationService(int registrationServiceRequestId) throws ApplicationException;

	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;

}
