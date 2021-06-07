package com.forms.exceptions;

public class DaoException extends Exception {
	String message;
	public DaoException(String message) {
		
	super();
	this.message=message;
	}
	public String getMessage() {
		return message;
	}



}
