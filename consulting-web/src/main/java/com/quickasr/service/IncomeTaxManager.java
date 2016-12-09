package com.quickasr.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.ApplicationConfigDao;
import com.quickasr.data.dao.IncomeTaxRequestDao;
import com.quickasr.data.entity.ApplicationConfig;
import com.quickasr.data.entity.IncomeTaxRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.IncomeTaxModel;

public class IncomeTaxManager implements IIncomeTaxManager {

	private static final Logger logger = LoggerFactory.getLogger(ILoansManager.class);
	private Emailer emailer;
	private String rootPath;
	private IncomeTaxRequestDao incomeTaxRequestDao;
	private boolean emailNotificationsEnabled;
	private ApplicationConfigDao applicationConfigDao;
	private String bccAddress;

	@Override
	public boolean validateIncomeTaxForm(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		boolean result = false;
		try {
			if (incomeTaxModel.getBankName().trim().length() == 0 || incomeTaxModel.getEmailId().trim().length() == 0
					|| incomeTaxModel.getFiles().size() == 0 || incomeTaxModel.getFullName().trim().length() == 0
					|| incomeTaxModel.getIfscCode().trim().length() == 0
					|| incomeTaxModel.getPhoneNumber().trim().length() == 0) {
				throw new ApplicationException("Form data incomplete");
			} else {
				result = true;
			}
		} catch (ApplicationException e) {
			throw new ApplicationException("Error Validating Form", e);
		} catch (Exception e) {
			result = false;
		}
		return result;
	}

	@Override
	public boolean uploadForm16(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		boolean result = true;
		try {

			String fileLocation = this.rootPath + "tax_documents\\" + incomeTaxModel.getEmailId() + "\\";

			Path path = Paths.get(fileLocation);
			if (!Files.exists(path)) {
				try {
					Files.createDirectories(path);
				} catch (IOException e) {
					throw e;
				}
			}

			for (MultipartFile multipartFile : incomeTaxModel.getFiles()) {

				String fileName = multipartFile.getOriginalFilename();
				String fileNameToCreate = fileLocation + fileName;
				File destinationFile = null;
				try {
					destinationFile = new File(fileNameToCreate);
					multipartFile.transferTo(destinationFile);
					multipartFile = null;

				} catch (IOException | IllegalStateException e) {
					multipartFile = null;
				}
			}
		} catch (Exception e) {
			throw new ApplicationException("Error Uploading File", e);
		}
		return result;
	}

	@Override
	public int requestIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		int result = 0;
		try {
			IncomeTaxRequest incomeTaxRequest = new IncomeTaxRequest();
			incomeTaxRequest.setRequestorBankName(incomeTaxModel.getBankName());
			incomeTaxRequest.setRequestorEmailId(incomeTaxModel.getEmailId());
			incomeTaxRequest.setRequestorFullName(incomeTaxModel.getFullName());
			incomeTaxRequest.setRequestorIfscCode(incomeTaxModel.getIfscCode());
			incomeTaxRequest.setRequestorPhoneNumber(incomeTaxModel.getPhoneNumber());
			incomeTaxRequest.setUpdatedDt(new Date());
			incomeTaxRequest.setCreatedDt(new Date());

			result = incomeTaxRequestDao.create(incomeTaxRequest);

			if (emailNotificationsEnabled) {
				sendConfirmationEmail(incomeTaxRequest);
			}

		} catch (Exception e) {
			throw new ApplicationException("Error Applying for income tax", e);
		}
		return result;
	}

	private boolean sendConfirmationEmail(IncomeTaxRequest incomeTaxRequest) throws ApplicationException {
		logger.debug("sendConfirmationEmail() is executed", "quickasr");
		boolean result = false;
		try {
			String body = "Hi " + incomeTaxRequest.getRequestorFullName()
					+ "\n Your order have been placed for the following \n" + "Service : Income Tax Filling" + "\n"
					+ "Request Id : " + incomeTaxRequest.getIncomeTaxRequestId() + "\n" + "Request Time : " + new Date()
					+ "\n";

			emailer.sendMail("quickconsulting@gmail.com", incomeTaxRequest.getRequestorEmailId(), getBccAddress(),
					"BookKeeping Order Confirmation", body);
			result = true;
		} catch (Exception e) {
			throw new ApplicationException("Error Sending Email", e);
		}
		return result;
	}

	@Override
	public String getIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		IncomeTaxRequest incomeTaxRequest = new IncomeTaxRequest();
		try {

			incomeTaxRequest = incomeTaxRequestDao.read(incomeTaxModel.getIncomeTaxRequestId());

		} catch (Exception e) {
			throw new ApplicationException("Error getting income tax data", e);
		}
		return incomeTaxRequest.getRequestorEmailId();
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

	public Emailer getEmailer() {
		return emailer;
	}

	public void setEmailer(Emailer emailer) {
		this.emailer = emailer;
	}

	public String getRootPath() {
		return rootPath;
	}

	public void setRootPath(String rootPath) {
		this.rootPath = rootPath;
	}

	public IncomeTaxRequestDao getIncomeTaxRequestDao() {
		return incomeTaxRequestDao;
	}

	public void setIncomeTaxRequestDao(IncomeTaxRequestDao incomeTaxRequestDao) {
		this.incomeTaxRequestDao = incomeTaxRequestDao;
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
