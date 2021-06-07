package com.forms.dao;

import com.forms.exceptions.DaoException;

public interface DaoOperations {
	void insret(String name, String mobile, String city, String state, String country, String email) throws DaoException;

}
