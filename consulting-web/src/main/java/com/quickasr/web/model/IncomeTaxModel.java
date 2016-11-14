package com.quickasr.web.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class IncomeTaxModel {
	
	private String fullName;
	private String phoneNumber;
	private String bankName;
	private String ifscCode;
	private String emailId;
	private int incomeTaxRequestId;
	private List<MultipartFile> files;
	private boolean otherDocuments;
	
	public int getIncomeTaxRequestId() {
		return incomeTaxRequestId;
	}
	public void setIncomeTaxRequestId(int incomeTaxRequestId) {
		this.incomeTaxRequestId = incomeTaxRequestId;
	}
	public boolean isOtherDocuments() {
		return otherDocuments;
	}
	public void setOtherDocuments(boolean otherDocuments) {
		this.otherDocuments = otherDocuments;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

}
