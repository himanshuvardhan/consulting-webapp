package com.vardhan.data.dao;

import com.vardhan.data.entity.Company;
import com.vardhan.data.generic.GenericDaoImpl;

public class CompanyDetailDaoImpl extends GenericDaoImpl<Company, Integer> implements CompanyDetailDao{

	public CompanyDetailDaoImpl(Class<Company> type) {
		super(type);
	}

}
