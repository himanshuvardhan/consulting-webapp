package com.quickasr.service;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.ServiceRegistrationModel;

public interface IRegistrationServiceManager {
	
	public void applyForRegistrationService(ServiceRegistrationModel serviceRegistrationModel) throws ApplicationException;

	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;

}
