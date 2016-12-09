package com.quickasr.web.model;

public class ContactModel {

	private String fullName;
	private String emailId;
	private String querySubject;
	private String queryMessage;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getQuerySubject() {
		return querySubject;
	}

	public void setQuerySubject(String querySubject) {
		this.querySubject = querySubject;
	}

	public String getQueryMessage() {
		return queryMessage;
	}

	public void setQueryMessage(String queryMessage) {
		this.queryMessage = queryMessage;
	}

}
