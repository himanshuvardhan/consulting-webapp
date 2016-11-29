package com.quickasr.data.entity;

public class ApplicationConfig implements java.io.Serializable {

	private static final long serialVersionUID = -352707685846934331L;

	private int applicationConfigId;
	private String configName;
	private String configValue;
	private String configCateg;

	public int getApplicationConfigId() {
		return applicationConfigId;
	}

	public void setApplicationConfigId(int applicationConfigId) {
		this.applicationConfigId = applicationConfigId;
	}

	public String getConfigName() {
		return configName;
	}

	public void setConfigName(String configName) {
		this.configName = configName;
	}

	public String getConfigValue() {
		return configValue;
	}

	public void setConfigValue(String configValue) {
		this.configValue = configValue;
	}

	public String getConfigCateg() {
		return configCateg;
	}

	public void setConfigCateg(String configCateg) {
		this.configCateg = configCateg;
	}

}
