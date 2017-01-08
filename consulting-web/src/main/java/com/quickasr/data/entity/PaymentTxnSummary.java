package com.quickasr.data.entity;

import java.util.Date;

public class PaymentTxnSummary implements java.io.Serializable  {
	
	private static final long serialVersionUID = 1L;
	private int paymentId;
	private int serviceRequestId;
	private String serviceType;
	private String paymentTxnid;
	private String payuTxnid;
	private String paymentStatus;
	private String amountPaid;
	private Date createdDt;
	private Date updatedDt;
	
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public int getServiceRequestId() {
		return serviceRequestId;
	}
	public void setServiceRequestId(int serviceRequestId) {
		this.serviceRequestId = serviceRequestId;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
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
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getAmountPaid() {
		return amountPaid;
	}
	public void setAmountPaid(String amountPaid) {
		this.amountPaid = amountPaid;
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
