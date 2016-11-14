package com.quickasr.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.jsoup.Connection.Method;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.CompanyDao;
import com.quickasr.data.dao.CompanyRequestDao;
import com.quickasr.data.entity.Company;
import com.quickasr.data.entity.CompanyRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.CompanyModel;
import com.quickasr.web.model.CompanyOrderModel;

public class CreateCompanyManager implements ICreateCompanyManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private boolean proxyRequired;
	private String comapnyAvailabilityURL;
	private CompanyDao companyDao;
	private CompanyRequestDao companyRequestDao;
	private Emailer emailer;
	private boolean emailNotificationsEnabled;

	@Override
	public boolean checkCompanyStatus(String companyName) throws ApplicationException {
		logger.debug("checkCompanyStatus(String) is executed", "quickasr");
		try {
			if (isProxyRequired()) {
				System.setProperty("http.proxyHost", "10.68.248.34");
				System.setProperty("http.proxyPort", "80");
			}

			long startTime = System.currentTimeMillis();

			Document document = Jsoup.connect(getComapnyAvailabilityURL())
					.header("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8").method(Method.POST)
					.data("counter", "1").data("name1", companyName).data("name2", "").data("name3", "")
					.data("name4", "").data("name5", "").data("name6", "").data("activityType1", "")
					.data("activityType2", "").timeout(60 * 1000).get();

			long endTime = System.currentTimeMillis();

			logger.debug("External Request took " + (endTime - startTime) + " milliseconds");

			Elements companyList = document.select("#companyList");

			if (companyList == null || companyList.isEmpty()) {
				return false;
			}
		} catch (Exception e) {
			throw new ApplicationException("101", e);
		}
		return true;
	}

	@Override
	public List<CompanyModel> getAvailableCompany() throws ApplicationException {
		logger.debug("getAvailableCompany(String) is executed", "quickasr");
		List<CompanyModel> companyList = new ArrayList<CompanyModel>();
		try {
			if (companyDao != null) {
				List<Company> list = companyDao.findAll();
				for (Company company : list) {
					CompanyModel companyModel = new CompanyModel();
					companyModel.setCompanyId(company.getCompanyId());
					companyModel.setCompanyName(company.getCompanyName());
					companyModel.setCompanyPrice(company.getCompanyPrice());
					companyModel.setCompanyType(company.getCompanyType());
					companyModel.setCreatedDt(company.getCreatedDt());
					companyModel.setUpdatedDt(company.getUpdatedDt());
					companyList.add(companyModel);
					companyModel = null;
				}
			}
		} catch (Exception e) {
			throw new ApplicationException("101", e);
		}
		return companyList;
	}

	@Override
	public CompanyModel getAvailableCompanyById(int companyId) throws ApplicationException {
		logger.debug("getAvailableCompanyById(int) is executed", "quickasr");
		CompanyModel companyModel = new CompanyModel();
		try {
			if (companyDao != null) {
				Company company = companyDao.read(companyId);
				companyModel.setCompanyId(company.getCompanyId());
				companyModel.setCompanyName(company.getCompanyName());
				companyModel.setCompanyPrice(company.getCompanyPrice());
				companyModel.setCompanyType(company.getCompanyType());
				companyModel.setCreatedDt(company.getCreatedDt());
				companyModel.setUpdatedDt(company.getUpdatedDt());
			}
		} catch (Exception e) {
			throw new ApplicationException("101", e);
		}
		return companyModel;
	}

	@Override
	public boolean requestCompanyOrder(CompanyOrderModel companyOrderModel) throws ApplicationException {
		logger.debug("requestCompanyOrder(CompanyOrderModel) is executed", "quickasr");
		boolean result = false;

		try {

			CompanyRequest companyRequest = new CompanyRequest();
			companyRequest.setCompany(companyDao.read(companyOrderModel.getCompanyId()));
			companyRequest.setRequestorEmail(companyOrderModel.getEmail());
			companyRequest.setRequestorFirstName(companyOrderModel.getFirstName());
			companyRequest.setRequestorLastName(companyOrderModel.getLastName());
			companyRequest.setRequestorPanNo(companyOrderModel.getPanNumber());
			companyRequest.setRequestorPhoneNo(companyOrderModel.getPhoneNumber());
			companyRequest.setMessage(companyOrderModel.getMessage());
			companyRequest.setRequestedCompanyName(companyOrderModel.getRequestedCompanyName());
			companyRequest.setUpdatedDt(new Date());
			companyRequest.setCreatedDt(new Date());

			companyRequestDao.saveOrUpdate(companyRequest);
			if(emailNotificationsEnabled){					
				result = sendConfirmationEmail(companyRequest);
			}else{
				result = true;
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}

		return result;
	}

	private boolean sendConfirmationEmail(CompanyRequest companyRequest)
			throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + companyRequest.getRequestorFirstName() + "\n Your order have been placed for the following \n" +
					"Company Name : " + companyRequest.getRequestedCompanyName() +"\n"+
							"Request Id : " + companyRequest.getCompanyRequestId() + "\n"+
								"Request Time : " + new Date()+"\n";
			
			emailer.sendMail("quickconsulting@gmail.com", companyRequest.getRequestorEmail(), "", "Company Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
		return result;
	}

	public boolean isProxyRequired() {
		return proxyRequired;
	}

	public void setProxyRequired(boolean proxyRequired) {
		this.proxyRequired = proxyRequired;
	}

	public String getComapnyAvailabilityURL() {
		return comapnyAvailabilityURL;
	}

	public void setComapnyAvailabilityURL(String comapnyAvailabilityURL) {
		this.comapnyAvailabilityURL = comapnyAvailabilityURL;
	}

	public CompanyDao getCompanyDao() {
		return companyDao;
	}

	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	public CompanyRequestDao getCompanyRequestDao() {
		return companyRequestDao;
	}

	public void setCompanyRequestDao(CompanyRequestDao companyRequestDao) {
		this.companyRequestDao = companyRequestDao;
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

	public Emailer getEmailer() {
		return emailer;
	}
	
}
