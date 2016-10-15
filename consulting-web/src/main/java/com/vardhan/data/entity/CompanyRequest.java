/**
 * 
 */
package com.vardhan.data.entity;

import java.util.Date;

/**
 * @author vardhan
 *
 */
public class CompanyRequest  implements java.io.Serializable{

	private static final long serialVersionUID = 1084004325945424103L;
	
	private int companyRequestId;
	private String requestedCompanyName;
	private String requestorLastName;
	private String requestorFirstName;
	private String requestorEmail;
	private String requestorPhoneNo;
	private String requestorPanNo;
	private String message;
	private Company company;
	private Date createdDt;
	private Date updatedDt;
	
	public int getCompanyRequestId() {
		return companyRequestId;
	}
	public void setCompanyRequestId(int companyRequestId) {
		this.companyRequestId = companyRequestId;
	}
	public String getRequestorLastName() {
		return requestorLastName;
	}
	public void setRequestorLastName(String requestorLastName) {
		this.requestorLastName = requestorLastName;
	}
	public String getRequestorFirstName() {
		return requestorFirstName;
	}
	public void setRequestorFirstName(String requestorFirstName) {
		this.requestorFirstName = requestorFirstName;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getRequestorEmail() {
		return requestorEmail;
	}
	public void setRequestorEmail(String requestorEmail) {
		this.requestorEmail = requestorEmail;
	}
	public String getRequestorPhoneNo() {
		return requestorPhoneNo;
	}
	public void setRequestorPhoneNo(String requestorPhoneNo) {
		this.requestorPhoneNo = requestorPhoneNo;
	}
	public String getRequestorPanNo() {
		return requestorPanNo;
	}
	public void setRequestorPanNo(String requestorPanNo) {
		this.requestorPanNo = requestorPanNo;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
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
	public String getRequestedCompanyName() {
		return requestedCompanyName;
	}
	public void setRequestedCompanyName(String requestedCompanyName) {
		this.requestedCompanyName = requestedCompanyName;
	}
}
