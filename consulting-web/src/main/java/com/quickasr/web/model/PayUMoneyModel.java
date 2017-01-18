package com.quickasr.web.model;

public class PayUMoneyModel {
	
	private String amount;
	private String firstName;
	private String email;
	private String phone;
	private String productInfo;
	private String successURI; 
	private String failureURI;
	private String txnid;
	private String key;
	private String serviceProvider;
	private String baseUrl;
	private String salt;
	private String requestId;
	private String payUMoneyTxnid;
	private String paymentStatus;
	private String userType;
	private int companyId;
	
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getPayUMoneyTxnid() {
		return payUMoneyTxnid;
	}
	public void setPayUMoneyTxnid(String payUMoneyTxnid) {
		this.payUMoneyTxnid = payUMoneyTxnid;
	}
	public String getRequestId() {
		return requestId;
	}
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getBaseUrl() {
		return baseUrl;
	}
	public void setBaseUrl(String baseUrl) {
		this.baseUrl = baseUrl;
	}
	private String hash;
	
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
	}
	public String getTxnid() {
		return txnid;
	}
	public void setTxnid(String txnid) {
		this.txnid = txnid;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getServiceProvider() {
		return serviceProvider;
	}
	public void setServiceProvider(String serviceProvider) {
		this.serviceProvider = serviceProvider;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public String getSuccessURI() {
		return successURI;
	}
	public void setSuccessURI(String successURI) {
		this.successURI = successURI;
	}
	public String getFailureURI() {
		return failureURI;
	}
	public void setFailureURI(String failureURI) {
		this.failureURI = failureURI;
	}
}
