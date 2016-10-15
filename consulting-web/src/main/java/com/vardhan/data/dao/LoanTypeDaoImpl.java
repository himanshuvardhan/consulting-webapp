package com.vardhan.data.dao;

import com.vardhan.data.entity.LoanTypes;
import com.vardhan.data.generic.GenericDaoImpl;

public class LoanTypeDaoImpl extends GenericDaoImpl<LoanTypes, Integer>  implements LoanTypesDao{

	public LoanTypeDaoImpl(Class<LoanTypes> type) {
		super(type);
	}

}
