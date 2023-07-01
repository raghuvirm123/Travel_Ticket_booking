package com.signupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bookk")
public class get_All_Bookings extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("called");
		resp.setContentType("text/html");
		 PrintWriter out=resp.getWriter();
		 String url="jdbc:mysql://localhost:3306?user=root&&password=root";
		 String qry=" select * from login_project.bookings";
		 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=	DriverManager.getConnection(url);
			PreparedStatement pst=con.prepareStatement(qry);
			req.setAttribute("pst", pst);
			req.getRequestDispatcher("get_all_bookings.jsp").forward(req, resp);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
}
}