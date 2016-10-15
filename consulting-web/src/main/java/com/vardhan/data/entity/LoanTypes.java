package com.vardhan.data.entity;

public class LoanTypes implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private int loanId;
	private String loanType;
	private String loanName;
	public int getLoanId() {
		return loanId;
	}
	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	
}
