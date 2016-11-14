package com.quickasr.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.quickasr.base.ApplicationException;
import com.quickasr.data.dao.IncomeTaxRequestDao;
import com.quickasr.data.entity.IncomeTaxRequest;
import com.quickasr.util.Emailer;
import com.quickasr.web.model.IncomeTaxModel;

public class IncomeTaxManager implements IIncomeTaxManager {

	private static final Logger logger = LoggerFactory.getLogger(ILoansManager.class);
	private Emailer emailer;
	private String rootPath;
	private IncomeTaxRequestDao incomeTaxRequestDao;

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
			throw e;
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

		} catch (Exception e) {

		}
		return result;
	}

	@Override
	public String getIncomeTaxFilling(IncomeTaxModel incomeTaxModel) throws ApplicationException {
		IncomeTaxRequest incomeTaxRequest = new IncomeTaxRequest();
		try {

			incomeTaxRequest = incomeTaxRequestDao.read(incomeTaxModel.getIncomeTaxRequestId());

		} catch (Exception e) {

		}
		return incomeTaxRequest.getRequestorEmailId();
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

}
