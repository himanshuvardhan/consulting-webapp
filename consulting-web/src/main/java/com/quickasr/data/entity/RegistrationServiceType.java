package com.quickasr.data.entity;

public class RegistrationServiceType implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private int serviceId;
	private String serviceType;
	private String serviceName;

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

}
