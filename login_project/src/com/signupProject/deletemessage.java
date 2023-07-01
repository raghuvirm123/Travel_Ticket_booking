package com.signupProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteRecord")
public class deletemessage extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("servelet called");
		int id=Integer.parseInt(req.getParameter("id")) ;
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "DELETE from login_project.messages where id='" + id + "' ";
		Connection con = null; 
		RequestDispatcher disp=null;
		Statement pst=null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(url);
			 pst = con.createStatement();
			 pst.execute(qry);   
			 resp.sendRedirect("messages");   
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
