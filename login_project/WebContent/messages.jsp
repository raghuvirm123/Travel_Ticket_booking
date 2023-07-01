

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="adminpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	 <link rel="stylesheet" href="style.css"> 
</head>
<body>
<%
	
//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
 session.getAttribute("uname");
 //session.setAttribute("uname");

 if(session.getAttribute("uname") == null)
 {
 	
 	response.sendRedirect("login.jsp");
 	
 } 
//welcome ${uname}
%>


   


    <h2>MESSAGES</h2>
    <hr>
    <table class="table" >
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NAME</th>
            <th scope="col">EMAIL ID</th>
            <th scope="col">CONTACT NO</th>
            <th scope="col">MESSAGE</th>
            <th scope="col">DELETE</th>
        </tr>
        <% 
        
        PreparedStatement pstatement=null;
        try{
        	
        	 pstatement=(PreparedStatement) request.getAttribute("pst");
             ResultSet resultset=pstatement.executeQuery();
             while (resultset.next()) { 
        %>
        <tr>
 
             <td><%= resultset.getInt(1) %></td>
            <td><%= resultset.getString(2) %></td>
            <td><%= resultset.getString(3) %></td>
            <td><%= resultset.getString(4) %></td>
            <td><%= resultset.getString(5) %></td>
            <td>  
            <form action="deleteRecord" method="post">
                    <input type="hidden" name="id" value="<%= resultset.getInt(1) %>">
                    <input type="submit" value="Delete">
                </form>
            
              </td>
            
        </tr>
        <% } }
        catch(Exception e){
        	
        	e.printStackTrace();
        }
        %>
        
    </table>
    


</body>
</html>

<style>
    body h2{
        color: #3f4a3c;
    }
    .table tr th{
        color: white;
        background-color: green;
        
        border: 1px solid white;
    }

    .table tr td{
        background-color: #e8ffec;
        border: 1px solid white;
    }

table {
	border-radius: 20px
}

.uaname h5{
    margin-left: 10px;
  } 
</style>

