package com.quickasr.data.entity;

import java.util.Date;

public class LoanRequest implements java.io.Serializable{

	private static final long serialVersionUID = -352707685846934331L;
	
	private int loanRequestId;
	private String requestorName;
	private String requestorPhoneNumber;
	private String requestorEmailId;
	private String requestorPanNumber;
	private LoanTypes loanTypes;
	private Date createdDt;
	private Date updatedDt;
	
	public int getLoanRequestId() {
		return loanRequestId;
	}
	public void setLoanRequestId(int loanRequestId) {
		this.loanRequestId = loanRequestId;
	}
	public String getRequestorName() {
		return requestorName;
	}
	public void setRequestorName(String requestorName) {
		this.requestorName = requestorName;
	}
	public String getRequestorPhoneNumber() {
		return requestorPhoneNumber;
	}
	public void setRequestorPhoneNumber(String requestorPhoneNumber) {
		this.requestorPhoneNumber = requestorPhoneNumber;
	}
	public String getRequestorEmailId() {
		return requestorEmailId;
	}
	public void setRequestorEmailId(String requestorEmailId) {
		this.requestorEmailId = requestorEmailId;
	}
	public String getRequestorPanNumber() {
		return requestorPanNumber;
	}
	public void setRequestorPanNumber(String requestorPanNumber) {
		this.requestorPanNumber = requestorPanNumber;
	}
	public LoanTypes getLoanTypes() {
		return loanTypes;
	}
	public void setLoanTypes(LoanTypes loanTypes) {
		this.loanTypes = loanTypes;
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
}
