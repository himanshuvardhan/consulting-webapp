package com.quickasr.service;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.IncomeTaxRequest;
import com.quickasr.web.model.IncomeTaxModel;
import com.quickasr.web.model.PayUMoneyModel;

public interface IIncomeTaxManager {
	
	public boolean uploadForm16(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public boolean validateIncomeTaxForm(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public int requestIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public IncomeTaxRequest getIncomeTaxFilling(int incomeTaxRequestId) throws ApplicationException;
	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;
	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;
	public void updateIncomeTaxRequestBeforePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;
	public void updateIncomeTaxRequestAfterPayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;

}
