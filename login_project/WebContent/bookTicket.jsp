<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="userpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/0ae591a448.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet">
<style>
body{
 background: url("pics/SCOTT-A-WOODWARD_1SW1943.jpg");
 background-repeat: no-repeat;
  background-size: cover;
}

h5{
color: green;
}

.btn{
margin-top: 3px;
}
.table{
width: 70%;
margin-left: 10%;
margin-top: 50px;

}


td{
margin-top: 50px !important;
color: black;
border: none !important;

}

.clsd {
background-color: #f8f8f8;
opacity:0.6 !important ;

margin-top: 20px !important;
border: 20px double transparent;


}
</style>
</head>
<body >
     <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="bd">
    <table class="table" >
        
        <% 
        String a=(String)session.getAttribute("name");
        String b=(String)session.getAttribute("pno");
        System.out.println(a);
        System.out.println(b);
        PreparedStatement pstatement=null;
        try{
        	 
        	 pstatement=(PreparedStatement) request.getAttribute("pst");
             ResultSet resultset=pstatement.executeQuery();
             while (resultset.next()) { 
        %>
        <tr class="clsd">
            
 
            <td hidden="">
            <%= resultset.getInt(1) %>
            </td>
           
          
            <td class="rec">
             <div>
             <h5>FROM</h5>
             </div>
             <div>
             <%= resultset.getString(2) %>
             </div>
            
            </td>
            <td>
            <div>
             <h5>TO</h5>
             </div>
             <div>
             <%= resultset.getString(3) %>
             </div>
            </td>
            <td>
            <div>
             <h5>DATE</h5>
             </div>
             <div>
             <%= resultset.getString(4) %>
             </div>
            
            </td>
            <td>
            <div>
             <h5>TIME</h5>
             </div>
             <div>
             <%= resultset.getString(5) %>
             </div>
            </td>
            <td>
             <div>
             <h5>FAIR</h5>
             </div>
             <div>
             <%= resultset.getString(6) %>
             </div>
           </td>
            <td>  
            <form class="btn" action="done" method="post">
                   <input type="hidden" name="id" value="<%= resultset.getInt(1) %>">
                    <input type="hidden" name="name" value="<%= a %>">
                        <input type="hidden" name="pno" value="<%= b %>">
                     <input type="hidden" name="place1" value="<%= resultset.getString(2) %>">
                      <input type="hidden" name="place2" value="<%= resultset.getString(3) %>">
                       <input type="hidden" name="date" value="<%= resultset.getString(4) %>">
                        <input type="hidden" name="time" value="<%= resultset.getString(5) %>">
                         <input type="hidden" name="price" value="<%= resultset.getString(6) %>">
                           <button>book</button>
                </form>
              </td>
            
        </tr>
        <% } }
        catch(Exception e){
        	
        	e.printStackTrace();
        }
        %>
        
    </table>
    </div>
    
    
    
    
</body>
</html>

