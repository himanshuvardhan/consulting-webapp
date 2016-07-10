package com.vardhan.data.dao;

import com.vardhan.data.entity.Company;
import com.vardhan.data.generic.GenericDaoImpl;

public class CompanyDaoImpl extends GenericDaoImpl<Company, Integer> implements CompanyDao{

	public CompanyDaoImpl(Class<Company> type) {
		super(type);
	}

}
