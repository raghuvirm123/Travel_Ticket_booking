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
import jakarta.servlet.http.HttpSession;

@WebServlet("/cancelTicket")
public class cancel_ticket extends HttpServlet {
     
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("cancel");
		HttpSession session=req.getSession();
		String name=(String)session.getAttribute("name");
		System.out.println(name);
		String pno=(String)session.getAttribute("pno");
		System.out.println(pno);
		int id=Integer.parseInt(req.getParameter("id"));
		
		String url = "jdbc:mysql://localhost:3306?user=root & password=root";
		String qry = "insert into login_project.cancelrequest(id,name,pno) values(?, ?, ?)";
		Connection con = null; 
		PreparedStatement pst = null;
		RequestDispatcher disp=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url);
			pst = con.prepareStatement(qry);
			pst.setInt(1, id);
			pst.setString(2, name);
			pst.setString(3, pno);
            int rowCount=0;
			
			try {
				rowCount=pst.executeUpdate();
			}
			catch(Exception e) 
			{
				disp=req.getRequestDispatcher("cancelSuccess.jsp");
				
			}
			
			
			if(rowCount > 0)
			{
				
				disp=req.getRequestDispatcher("cancelSuccess.jsp");
				
			}
			else {
				disp=req.getRequestDispatcher("cancelSuccess.jsp");
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
