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
import jakarta.servlet.http.HttpSession;

@WebServlet("/modifydetails")
public class userDetails extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String name = req.getParameter("name");
		String pno = req.getParameter("pno");
		String uname = req.getParameter("username");
		String pass = req.getParameter("pass");
		
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		
		String qry1="update login_project.user set pno=?,uname=?,pass=? where name=?" ;
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry1);
			
			pst.setString(1, pno);
			pst.setString(2, uname);
			pst.setString(3, pass);
			pst.setString(4, name);
			boolean b=pst.execute();
			
			if(b = true)
			{
				
				disp=req.getRequestDispatcher("userpage.jsp");
//				HttpSession session= req.getSession();
//				session.invalidate();
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
			if(con!=null) 
			{
				try 
				{
					con.close();
				} catch (SQLException e) 
				{
					
					e.printStackTrace();
				}
			}
			
			if(pst!=null) 
			{
				try
				{
					pst.close();
				}
				catch (SQLException e) 
				{
					
					e.printStackTrace();
				}
			}
			
		}
	
	}
}


