package com.signupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.Session;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/mybooking")
public class getUserBooking extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession  a=req.getSession();
		String nm= (String)a.getAttribute("name");
		  resp.setContentType("text/html");
		  String url="jdbc:mysql://localhost:3306?user=root&&password=root";
		  String qry=" select * from login_project.bookings where name='" + nm + "' ";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=	DriverManager.getConnection(url);
			PreparedStatement pst=con.prepareStatement(qry);
			req.setAttribute("pst", pst);
			req.getRequestDispatcher("mybookings.jsp").forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
}
}
