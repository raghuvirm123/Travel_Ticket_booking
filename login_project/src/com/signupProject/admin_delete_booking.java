package com.signupProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deletebooking")
public class admin_delete_booking extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("servelet called");
		int id=Integer.parseInt(req.getParameter("id")) ;
		System.out.println(id);
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "DELETE from login_project.bookings where id='" + id + "' ";
		String qry1 = "DELETE from login_project.cancelrequest where id='" + id + "' ";
		Connection con = null; 
		Statement pst=null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(url);
			 pst = con.createStatement();
			 pst.addBatch(qry);
			 pst.addBatch(qry1);
			 pst.executeBatch();   
			 resp.sendRedirect("getcancelreq");   
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
			
		}
		finally
		{
			try 
			{
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
	
}
}