package com.signupProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/messages")
public class getmessages extends HttpServlet {

	 
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/html");
		 String url="jdbc:mysql://localhost:3306?user=root&&password=root";
		 String qry=" select * from login_project.messages";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=	DriverManager.getConnection(url);
			PreparedStatement pst=con.prepareStatement(qry);	
			req.setAttribute("pst", pst);
			req.getRequestDispatcher("messages.jsp").forward(req, resp);

			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
