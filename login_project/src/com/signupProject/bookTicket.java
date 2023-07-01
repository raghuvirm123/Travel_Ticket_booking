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

@WebServlet("/done")
public class bookTicket extends HttpServlet {

	
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("done");
		String name = req.getParameter("name");
		String pno = req.getParameter("pno");
		String pl1 = req.getParameter("place1");
		String pl2 = req.getParameter("place2");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String price = req.getParameter("price");
		
		
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "insert into login_project.bookings(name,pno,place1,place2,date,time,price) values(?, ?, ?, ?, ?, ?, ?)";
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry);
			//pst.setInt(1, id);
			pst.setString(1, name);
			pst.setString(2, pno);
			pst.setString(3, pl1);
			pst.setString(4, pl2);
			pst.setString(5, date);
			pst.setString(6, time);
			pst.setString(7, price);
			
           int rowCount=pst.executeUpdate();
			if(rowCount > 0)
			{
				
				disp=req.getRequestDispatcher("bookingSuccess.jsp");
				
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
