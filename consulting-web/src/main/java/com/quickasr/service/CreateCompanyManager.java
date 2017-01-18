package com.quickasr.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.jsoup.Connection.Method;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.CompanyDao;
import com.quickasr.data.dao.CompanyRequestDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.Company;
import com.quickasr.data.entity.CompanyRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.CompanyModel;
import com.quickasr.web.model.CompanyOrderModel;
import com.quickasr.web.model.PayUMoneyModel;

public class CreateCompanyManager implements ICreateCompanyManager {

	private static final Logger logger = LoggerFactory.getLogger(CreateCompanyManager.class);
	private boolean proxyRequired;
	private String comapnyAvailabilityURL;
	private CompanyDao companyDao;
	private CompanyRequestDao companyRequestDao;
	private Emailer emailer;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;
	private String fromAddress;

	private String serviceProvider;
	private String baseUrl;
	private String fUrl;
	private String sUrl;

	@Override
	public boolean checkCompanyStatus(String companyName) throws ApplicationException {
		logger.debug("checkCompanyStatus(String) is executed", "quickasr");
		try {
			if (isProxyRequired()) {
				System.setProperty("http.proxyHost", "10.68.248.34");
				System.setProperty("http.proxyPort", "80");
			}

			long startTime = System.currentTimeMillis();

			Response response = Jsoup.connect(getComapnyAvailabilityURL())
					.header("Content-Type", "application/x-www-form-urlencoded").method(Method.POST)
					.data("counter", "1").data("name1", companyName).data("name2", "").data("name3", "")
					.data("name4", "").data("name5", "").data("name6", "").data("activityType1", "")
					.data("activityType2", "").timeout(60 * 1000).ignoreContentType(true).execute();

			long endTime = System.currentTimeMillis();

			Document document = response.parse();

			logger.debug("External Request took " + (endTime - startTime) + " milliseconds");

			Elements companyList = document.select("#companyList");

			if (companyList == null || companyList.isEmpty()) {
				return false;
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Checking Company Status", e);
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
			throw new ApplicationException("Error getting available companies", e);
		}
		return companyList;
	}

	@Override
	public Map<String, String> getCompanyPrices() throws ApplicationException {
		logger.debug("getAvailableCompany(String) is executed", "quickasr");
		Map<String, String> companyPriceMap = new HashMap<String, String>();
		try {
			if (companyDao != null) {
				List<Company> list = companyDao.findAll();
				for (Company company : list) {
					companyPriceMap.put(String.valueOf(company.getCompanyId()),
							String.format("%.0f", company.getCompanyPrice()));
				}
			}
		} catch (Exception e) {
			throw new ApplicationException("Error getting available companies", e);
		}
		return companyPriceMap;
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
			throw new ApplicationException("Error getting available country by id", e);
		}
		return companyModel;
	}

	@Override
	public int requestCompanyOrder(CompanyOrderModel companyOrderModel) throws ApplicationException {
		logger.debug("requestCompanyOrder(CompanyOrderModel) is executed", "quickasr");
		int result = 0;

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

			result = companyRequestDao.create(companyRequest);
			if (emailNotificationsEnabled) {
				sendConfirmationEmail(companyRequest);
			}
		} catch (Exception e) {
			throw new ApplicationException("Error requesting company creation", e);
		}

		return result;
	}

	private boolean sendConfirmationEmail(CompanyRequest companyRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + companyRequest.getRequestorFirstName() + ",<br><br>"
					+ "<b>Thanks for choosing us.</b>" + "<br><br>"
					+ "<br> Your order have been placed for the following <br>" + "Company Name : "
					+ companyRequest.getRequestedCompanyName() + "<br>" + "Request Id : "
					+ companyRequest.getCompanyRequestId() + "<br>" + "Request Time : " + new Date() + "<br><br>"
					+ "We are Quick Accounting & Consultants Pvt Ltd, India's  First Techno Based Finance consultants "
					+ "<br>"
					+ "platform for SME businesses, Individual Investors and Retail Business Group. As of today, we have  "
					+ "<br>" + "helped over 200 business owners in regard of their finance and accounting solutions. "
					+ "<br><br>" + "<b>Have a great day.</b>" + "<br>" + "<b>Quick Accounting Team</b>" + "<br>"
					+ "<b>For any queries please contact us on 0183-5060470</b>" + "<br>"
					+ "<b>Office Timings :11 AM to 8PM (Monday-Saturday)</b>";

			emailer.sendMail(getFromAddress(), companyRequest.getRequestorEmail(), getBccAddress(),
					"Company Order Confirmation", body);
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
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException {
		PayUMoneyAPI payUMoneyAPI = new PayUMoneyAPI();
		Map<String, String> values = new HashMap<String, String>();
		try {
			
			payUMoneyModel
					.setAmount(String.valueOf(companyDao.read(payUMoneyModel.getCompanyId()).getCompanyPrice()));
			payUMoneyModel.setProductInfo(String.valueOf("Company Request"));
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
	public CompanyRequest getCompanyRequest(int companyRequestId) throws ApplicationException {
		CompanyRequest companyRequest = new CompanyRequest();
		try {
			companyRequest = companyRequestDao.read(companyRequestId);
		} catch (Exception e) {
			throw new ApplicationException("Error getting compnay request data", e);
		}

		return companyRequest;
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
