package com.quickasr.data.entity;

import java.util.Date;

public class IncomeTaxRequest implements java.io.Serializable {

	private static final long serialVersionUID = -352707685846934331L;

	private int incomeTaxRequestId;
	private String requestorFullName;
	private String requestorPhoneNumber;
	private String requestorEmailId;
	private String requestorBankName;
	private String requestorIfscCode;
	private String userType;
	private String paymentTxnid;
	private String payuTxnid;
	private String paymentStatus;
	private String amountPaid;
	private Date createdDt;
	private Date updatedDt;
	
	
	public String getAmountPaid() {
		return amountPaid;
	}

	public void setAmountPaid(String amountPaid) {
		this.amountPaid = amountPaid;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getPaymentTxnid() {
		return paymentTxnid;
	}

	public void setPaymentTxnid(String paymentTxnid) {
		this.paymentTxnid = paymentTxnid;
	}

	public String getPayuTxnid() {
		return payuTxnid;
	}

	public void setPayuTxnid(String payuTxnid) {
		this.payuTxnid = payuTxnid;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public int getIncomeTaxRequestId() {
		return incomeTaxRequestId;
	}

	public void setIncomeTaxRequestId(int incomeTaxRequestId) {
		this.incomeTaxRequestId = incomeTaxRequestId;
	}

	public String getRequestorFullName() {
		return requestorFullName;
	}

	public void setRequestorFullName(String requestorFullName) {
		this.requestorFullName = requestorFullName;
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

	public String getRequestorBankName() {
		return requestorBankName;
	}

	public void setRequestorBankName(String requestorBankName) {
		this.requestorBankName = requestorBankName;
	}

	public String getRequestorIfscCode() {
		return requestorIfscCode;
	}

	public void setRequestorIfscCode(String requestorIfscCode) {
		this.requestorIfscCode = requestorIfscCode;
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
