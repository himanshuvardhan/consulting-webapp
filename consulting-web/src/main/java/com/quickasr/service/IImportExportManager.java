package com.quickasr.service;

import java.util.Map;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.entity.ImportExportRequest;
import com.quickasr.web.model.ImportExportOrderModel;
import com.quickasr.web.model.PayUMoneyModel;

public interface IImportExportManager {
	
	public int applyForImportExport(ImportExportOrderModel importExportOrderModel) throws ApplicationException;

	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;

	public Map<String, String> getImportExportPrice() throws ApplicationException;

	public ImportExportRequest getImportExport(int importExportRequestId) throws ApplicationException;

	public PayUMoneyModel generatePayment(PayUMoneyModel payUMoneyModel) throws ApplicationException;

}
