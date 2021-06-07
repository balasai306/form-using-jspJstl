package com.forms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.forms.exceptions.DaoException;
import com.forms.util.Closing;
import com.forms.util.Connector;

public class DaoOperationsImpl implements DaoOperations {




	@Override
	public void insret(String name, String mobile, String city, String state, String country, String email) throws DaoException {
		// TODO Auto-generated method stub
		Closing close = new Closing();
		String sql="insert into user_details(name,mobileNum,city,state,country,email) values(?,?,?,?,?,?)";
		Connector connection =new Connector();
		Connection con = null;
		PreparedStatement stmt= null;
		
		try {
			con=connection.getConnector();
			stmt= con.prepareStatement(sql);
			stmt.setString(1, name);
			stmt.setString(2, mobile);
			stmt.setString(3, city);
			stmt.setString(4, state);
			stmt.setString(5, country);
			stmt.setString(6, email);
			int count=stmt.executeUpdate();
			if(count==1) {
				System.out.println("updation sucess");
			}
			else {
				System.out.println("updation failed");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new DaoException("error in dao"+e.getMessage()+e.getCause());
		}
		
		
	}
	

}
