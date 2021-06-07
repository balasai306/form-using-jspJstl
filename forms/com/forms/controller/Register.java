package com.forms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forms.exceptions.ServiceException;
import com.forms.services.DataOperation;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String city=request.getParameter("city");
		String state=request.getParameter("state");	
		String country=request.getParameter("country");
		System.out.println(name+mobile+email+city+state+country);
	DataOperation data=new DataOperation();
	try {
		data.insert(name,mobile,city,state,country,email);
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		System.out.println("problem in insertion");
	}
		

	}
}
