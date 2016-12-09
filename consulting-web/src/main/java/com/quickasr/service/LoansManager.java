package com.quickasr.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.LoanRequestDao;
import com.quickasr.data.dao.LoanTypesDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.LoanRequest;
import com.quickasr.data.entity.LoanTypes;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.LoanOrderModel;
import com.quickasr.web.model.LoanTypeModel;

public class LoansManager implements ILoansManager {

	private static final Logger logger = LoggerFactory.getLogger(ILoansManager.class);
	private LoanTypesDao loanTypesDao;
	private Emailer emailer;
	private LoanRequestDao loanRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;

	@Override
	public List<LoanTypeModel> getLoanTypes() throws ApplicationException {
		logger.debug("getLoanTypes() is executed", "quickasr");
		List<LoanTypeModel> loanTypesModelList = new ArrayList<LoanTypeModel>();
		List<LoanTypes> loanTypesList = new ArrayList<LoanTypes>();
		try {
			loanTypesList = loanTypesDao.findAll();
			for (LoanTypes loanTypes : loanTypesList) {
				LoanTypeModel loanTypeModel = new LoanTypeModel();
				loanTypeModel.setLoanId(loanTypes.getLoanId());
				loanTypeModel.setLoanName(loanTypes.getLoanName());
				loanTypeModel.setLoanType(loanTypes.getLoanType());
				loanTypesModelList.add(loanTypeModel);
			}
		} catch (Exception e) {
			throw new ApplicationException("Erro Getting Loan types", e);
		}
		return loanTypesModelList;
	}

	@Override
	public boolean applyForLoan(LoanOrderModel loanOrderModel) throws ApplicationException {
		logger.debug("applyForLoan(LoanOrderModel) is executed", "quickasr");
		boolean result = false;

		try {

			LoanRequest loanRequest = new LoanRequest();

			loanRequest.setLoanTypes(loanTypesDao.read(loanOrderModel.getLoanId()));
			loanRequest.setRequestorEmailId(loanOrderModel.getEmailId());
			loanRequest.setRequestorName(loanOrderModel.getName());
			loanRequest.setRequestorPanNumber(loanOrderModel.getPanNumber());
			loanRequest.setRequestorPhoneNumber(loanOrderModel.getPhoneNumber());
			loanRequest.setUpdatedDt(new Date());
			loanRequest.setCreatedDt(new Date());

			loanRequestDao.saveOrUpdate(loanRequest);
			if (emailNotificationsEnabled) {
				result = sendConfirmationEmail(loanRequest);
			} else {
				result = false;
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Applying for Loan", e);
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

	private boolean sendConfirmationEmail(LoanRequest loanRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail(loanRequest) is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + loanRequest.getRequestorName() + "\n Your order have been placed for the following \n"
					+ "Loan Type : " + loanRequest.getLoanTypes().getLoanName() + "\n" + "Request Id : "
					+ loanRequest.getLoanRequestId() + "\n" + "Request Time : " + new Date() + "\n";

			emailer.sendMail("quickasr@gmail.com", loanRequest.getRequestorEmailId(), getBccAddress(), "Loan Order Confirmation",
					body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	public LoanTypesDao getLoanTypesDao() {
		return loanTypesDao;
	}

	public void setLoanTypesDao(LoanTypesDao loanTypesDao) {
		this.loanTypesDao = loanTypesDao;
	}

	public Emailer getEmailer() {
		return emailer;
	}

	public void setEmailer(Emailer emailer) {
		this.emailer = emailer;
	}

	public LoanRequestDao getLoanRequestDao() {
		return loanRequestDao;
	}

	public void setLoanRequestDao(LoanRequestDao loanRequestDao) {
		this.loanRequestDao = loanRequestDao;
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
	

}
