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

@SuppressWarnings("serial")
@WebServlet("/signup")
public class SignupServlet extends HttpServlet
{
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String name = req.getParameter("name");
		String pno = req.getParameter("pno");
		String uname = req.getParameter("username");
		String pass = req.getParameter("pass");
		
		
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "insert into login_project.user(name,pno,uname,pass) values(?, ?, ?, ?)";
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry);
			pst.setString(1, name);
			pst.setString(2, pno);
			pst.setString(3, uname);
			pst.setString(4, pass);
			
			int rowCount=0;
			
			try {
				rowCount=pst.executeUpdate();
			}
			catch(Exception e) 
			{
				disp=req.getRequestDispatcher("login.jsp");
				
			}
			
			
			
			if(rowCount > 0)
			{
				
				disp=req.getRequestDispatcher("login.jsp");
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