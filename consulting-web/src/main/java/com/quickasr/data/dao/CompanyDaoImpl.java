package com.quickasr.data.dao;

import com.quickasr.data.entity.Company;
import com.quickasr.data.generic.GenericDaoImpl;

public class CompanyDaoImpl extends GenericDaoImpl<Company, Integer> implements CompanyDao{

	public CompanyDaoImpl(Class<Company> type) {
		super(type);
	}

}
