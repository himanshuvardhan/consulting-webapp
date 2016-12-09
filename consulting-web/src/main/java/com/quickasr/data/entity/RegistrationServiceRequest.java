package com.quickasr.data.entity;

import java.util.Date;

public class RegistrationServiceRequest implements java.io.Serializable {

	private static final long serialVersionUID = -352707685846934331L;

	private int registrationServiceRequestId;
	private String requestorFullName;
	private String requestorPhoneNumber;
	private String requestorEmailId;
	private String requestorPanNo;
	private RegistrationServiceType registrationServiceType;
	private Date createdDt;
	private Date updatedDt;

	public RegistrationServiceType getRegistrationServiceType() {
		return registrationServiceType;
	}

	public void setRegistrationServiceType(RegistrationServiceType registrationServiceType) {
		this.registrationServiceType = registrationServiceType;
	}

	public int getRegistrationServiceRequestId() {
		return registrationServiceRequestId;
	}

	public void setRegistrationServiceRequestId(int registrationServiceRequestId) {
		this.registrationServiceRequestId = registrationServiceRequestId;
	}

	public String getRequestorPanNo() {
		return requestorPanNo;
	}

	public void setRequestorPanNo(String requestorPanNo) {
		this.requestorPanNo = requestorPanNo;
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
