package com.forms.services;

import com.forms.dao.DaoOperations;
import com.forms.dao.DaoOperationsImpl;
import com.forms.exceptions.DaoException;
import com.forms.exceptions.ServiceException;

public class DataOperation {
	public void insert(String name, String mobile, String city, String state, String country, String email) throws ServiceException {
		DaoOperations daoOperations = new DaoOperationsImpl();
		try {
			daoOperations.insret(name,mobile,city,state,country,email);
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			throw new ServiceException("error in dao"+e.getMessage()+e.getCause());
		}
	}
}
