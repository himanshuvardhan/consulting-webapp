package com.vardhan.service;

import java.util.List;

import com.vardhan.base.ApplicationException;
import com.vardhan.web.model.CompanyModel;

public interface ICreateCompanyManager {
	
	public boolean checkCompanyStatus(String companyName) throws ApplicationException;
	public List<CompanyModel> getAvailableCompany() throws ApplicationException;
	public CompanyModel getAvailableCompanyById(int companyId) throws ApplicationException;

}
