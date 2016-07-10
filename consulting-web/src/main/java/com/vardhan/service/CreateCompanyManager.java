package com.vardhan.service;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection.Method;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.vardhan.base.ApplicationException;
import com.vardhan.data.dao.CompanyDao;
import com.vardhan.data.entity.Company;
import com.vardhan.web.model.CompanyModel;

public class CreateCompanyManager implements ICreateCompanyManager {

	private boolean proxyRequired;
	private String comapnyAvailabilityURL;
	private CompanyDao companyDao;

	@Override
	public boolean checkCompanyStatus(String companyName) throws ApplicationException {
		try {
			if (isProxyRequired()) {
				System.setProperty("http.proxyHost", "10.68.248.34");
				System.setProperty("http.proxyPort", "80");
			}

			Document document = Jsoup.connect(getComapnyAvailabilityURL()).header("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8").method(Method.POST).data("counter", "1")
					.data("name1", companyName).data("name2", "").data("name3", "").data("name4", "").data("name5", "").data("name6", "").data("activityType1", "").data("activityType2", "")
					.timeout(60 * 1000).get();

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

}
