package com.signupProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contactus")
public class conatctdeatils extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contactno = req.getParameter("contactno");
		String message = req.getParameter("message");
		
		
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "insert into login_project.messages(name,email,contactno,message) values(?, ?, ?, ?)";
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry);
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, contactno);
			pst.setString(4, message);
			
			int rowCount=0;
			
			try {
				rowCount=pst.executeUpdate();
			}
			catch(Exception e) {
				disp=req.getRequestDispatcher("contactus.jsp");
				
			}
			
			
			
			if(rowCount > 0)
			{
				
				disp=req.getRequestDispatcher("contactus.jsp");
				req.setAttribute("status","success" );
				
			}
			else {
				req.setAttribute("status", "failed");
			}
			
			disp.forward(req, resp);
		
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
			
			try
			{
				pst.close();
			}
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
