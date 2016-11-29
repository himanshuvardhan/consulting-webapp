package com.quickasr.service;

import com.quickasr.base.ApplicationException;
import com.quickasr.web.model.ImportExportOrderModel;

public interface IImportExportManager {
	
	public void applyForImportExport(ImportExportOrderModel importExportOrderModel) throws ApplicationException;

	public String getApplicationStylePreset(String stylePreset) throws ApplicationException;

}
