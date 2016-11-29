package com.quickasr.base;

public class ApplicationException extends Exception{
	
	private static final String APP_ERR = "Application Error";
	
	private static final long serialVersionUID = 1L;
	private final String errorCode;
	private String errorMsg;
	@SuppressWarnings("unused")
	private String stackTrace;
	public Exception originalException;
	
	public ApplicationException(String errorMsg) {
		errorCode = APP_ERR;
		this.errorMsg = errorMsg;
		this.stackTrace = errorMsg;
	}
	
	public ApplicationException(String errCode, String errMsg, Exception e) {
		super(errMsg);
		errorCode = errCode;
	}
	
	public ApplicationException(String errorCode, Exception e){
		this.errorCode = errorCode;
		this.errorMsg = e.getMessage();
	}
	
	public ApplicationException(String errorCode, String errorMsg) {
		this.errorCode = errorCode;
		this.errorMsg = errorMsg;
		this.stackTrace = errorMsg;
	}
	
	public ApplicationException(Exception e) {
		super(e.toString());
		errorCode = APP_ERR;
		originalException = e;
		this.errorMsg = e.toString();
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public void setStackTrace(String stackTrace) {
		this.stackTrace = stackTrace;
	}

	public Exception getOriginalException() {
		return originalException;
	}

	public void setOriginalException(Exception originalException) {
		this.originalException = originalException;
	}

	public String getErrorCode() {
		return errorCode;
	}
}
