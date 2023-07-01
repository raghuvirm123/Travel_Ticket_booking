package com.signupProject;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/settrip")
public class setTrip extends HttpServlet {
   
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String place1 = req.getParameter("from");
		String place2 = req.getParameter("to");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String price =req.getParameter("price");
		
		
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "insert into login_project.settrips(place1,place2,date,time,price) values(?, ?, ?, ?, ?)";
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry);
			pst.setString(1, place1);
			pst.setString(2, place2);
			pst.setString(3, date);
			pst.setString(4, time);
			pst.setString(5, price);
			pst.executeUpdate();
			System.out.println("hhh");

			disp=req.getRequestDispatcher("setNewTrip.jsp");
			disp.include(req, resp);

		
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
