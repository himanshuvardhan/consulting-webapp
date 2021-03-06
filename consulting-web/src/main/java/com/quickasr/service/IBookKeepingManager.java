package com.quickasr.service;

import java.util.Map;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.BookKeepingOrderModel;
import com.quickasr.web.model.ContactModel;

public interface IBookKeepingManager {
	
	public void applyForBookKeeping(BookKeepingOrderModel bookKeepingOrderModel) throws ApplicationException;

	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;

	public void updateApplicationStylePreset(String stylePreset) throws ApplicationException;

	public Map<String, String> getUIMetric() throws ApplicationException;

	public void submitUserQuery(ContactModel contactModel) throws ApplicationException;

	public void applyForGST(BookKeepingOrderModel bookKeepingOrderModel) throws ApplicationException;

}
