package com.quickasr.service;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.IncomeTaxModel;

public interface IIncomeTaxManager {
	
	public boolean uploadForm16(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public boolean validateIncomeTaxForm(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public int requestIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException;
	public String getIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException;

}
