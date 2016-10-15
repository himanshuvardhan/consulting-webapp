package com.vardhan.service;

import java.util.List;

import com.vardhan.base.ApplicationException;
import com.vardhan.web.model.LoanOrderModel;
import com.vardhan.web.model.LoanTypeModel;

public interface ILoansManager {

	public List<LoanTypeModel> getLoanTypes() throws ApplicationException;

	public boolean applyForLoan(LoanOrderModel loanOrderModel) throws ApplicationException;
}
