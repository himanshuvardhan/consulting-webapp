package com.quickasr.data.dao;

import com.quickasr.data.entity.LoanTypes;
import com.quickasr.data.generic.GenericDaoImpl;

public class LoanTypeDaoImpl extends GenericDaoImpl<LoanTypes, Integer>  implements LoanTypesDao{

	public LoanTypeDaoImpl(Class<LoanTypes> type) {
		super(type);
	}

}
