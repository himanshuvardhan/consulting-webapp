package com.quickasr.service;

import java.util.List;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.LoanOrderModel;
import com.quickasr.web.model.LoanTypeModel;

public interface ILoansManager {

	public List<LoanTypeModel> getLoanTypes() throws ApplicationException;

	public boolean applyForLoan(LoanOrderModel loanOrderModel) throws ApplicationException;
}
