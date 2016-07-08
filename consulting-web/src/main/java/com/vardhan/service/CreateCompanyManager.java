package com.vardhan.service;

import java.util.List;

import org.jsoup.Connection.Method;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.vardhan.data.dao.CompanyDetailDao;
import com.vardhan.data.entity.Company;

public class CreateCompanyManager implements ICreateCompanyManager {
	
	private boolean proxyRequired;
	private String comapnyAvailabilityURL;
	private CompanyDetailDao companyDetailDao;

	@Override
	public boolean checkCompanyStatus(String companyName) throws Exception {
		try {
			if(companyDetailDao != null){
				List<Company> list = companyDetailDao.findAll();
				System.out.println(list.size());
			}
			if(isProxyRequired()){
				System.setProperty("http.proxyHost","10.68.248.34");
				System.setProperty("http.proxyPort","80");
			}
			
			Document document = Jsoup.connect(getComapnyAvailabilityURL())
										.header("Content-Type","application/x-www-form-urlencoded;charset=UTF-8")
											.method(Method.POST)
												.data("counter", "1")
							                		.data("name1", companyName)
							                			.data("name2", "")
							                				.data("name3", "")
							                					.data("name4", "")
							                						.data("name5", "")
							                							.data("name6", "")
							                								.data("activityType1", "")
							                									.data("activityType2", "")
							                										.timeout(60*1000)
							                											.get();
			Elements companyList = document.select("#companyList");
			if(companyList == null || companyList.isEmpty()){
				return false;
			}
		} catch (Exception e) {
			throw e;
		}
		return true;
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
	public CompanyDetailDao getCompanyDetailDao() {
		return companyDetailDao;
	}
	public void setCompanyDetailDao(CompanyDetailDao companyDetailDao) {
		this.companyDetailDao = companyDetailDao;
	}
}
