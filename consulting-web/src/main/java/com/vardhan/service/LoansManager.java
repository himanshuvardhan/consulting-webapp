package com.vardhan.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.vardhan.base.ApplicationException;
import com.vardhan.data.dao.LoanRequestDao;
import com.vardhan.data.dao.LoanTypesDao;
import com.vardhan.data.entity.LoanRequest;
import com.vardhan.data.entity.LoanTypes;
import com.vardhan.util.Emailer;
import com.vardhan.web.model.LoanOrderModel;
import com.vardhan.web.model.LoanTypeModel;

public class LoansManager implements ILoansManager {

	private static final Logger logger = LoggerFactory.getLogger(ILoansManager.class);
	private LoanTypesDao loanTypesDao;
	private Emailer emailer;
	private LoanRequestDao loanRequestDao;

	@Override
	public List<LoanTypeModel> getLoanTypes() throws ApplicationException {
		logger.debug("getLoanTypes() is executed", "vardhan");
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
			throw new ApplicationException(e);
		}
		return loanTypesModelList;
	}

	@Override
	public boolean applyForLoan(LoanOrderModel loanOrderModel) throws ApplicationException {
		logger.debug("applyForLoan(LoanOrderModel) is executed", "vardhan");
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

			result = sendConfirmationEmail(loanRequest);
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
		return result;

	}

	private boolean sendConfirmationEmail(LoanRequest loanRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail(loanRequest) is executed", "vardhan");
		boolean result = false;
		try {
			String body = "Hi " + loanRequest.getRequestorName() + "\n Your order have been placed for the following \n"
					+ "Loan Type : " + loanRequest.getLoanTypes().getLoanName() + "\n" + "Request Id : "
					+ loanRequest.getLoanRequestId() + "\n" + "Request Time : " + new Date() + "\n";

			emailer.sendMail("quickasr@gmail.com", loanRequest.getRequestorEmailId(), "", "Loan Order Confirmation",
					body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException(e);
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

}
