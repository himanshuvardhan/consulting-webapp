package com.quickasr.service;

import java.util.List;
import java.util.Map;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.CompanyRequest;
import com.quickasr.web.model.CompanyModel;
import com.quickasr.web.model.CompanyOrderModel;
import com.quickasr.web.model.PayUMoneyModel;

public interface ICreateCompanyManager {
	
	public boolean checkCompanyStatus(String companyName) throws ApplicationException;
	public List<CompanyModel> getAvailableCompany() throws ApplicationException;
	public CompanyModel getAvailableCompanyById(int companyId) throws ApplicationException;
	public int requestCompanyOrder(CompanyOrderModel companyOrderModel) throws ApplicationException;
	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;
	public Map<String, String> getCompanyPrices() throws ApplicationException;
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;
	public CompanyRequest getCompanyRequest(int companyRequestId) throws ApplicationException;

}
