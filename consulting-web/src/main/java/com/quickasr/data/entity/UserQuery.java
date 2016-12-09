package com.quickasr.data.entity;

import java.util.Date;

public class UserQuery implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private int queryId;
	private String querySubject;
	private String queryMessage;
	private String userEmailId;
	private String fullName;
	private Date createdDt;
	private Date updatedDt;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Date getCreatedDt() {
		return createdDt;
	}

	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}

	public Date getUpdatedDt() {
		return updatedDt;
	}

	public void setUpdatedDt(Date updatedDt) {
		this.updatedDt = updatedDt;
	}

	public int getQueryId() {
		return queryId;
	}

	public void setQueryId(int queryId) {
		this.queryId = queryId;
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

	public String getUserEmailId() {
		return userEmailId;
	}

	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}

}
