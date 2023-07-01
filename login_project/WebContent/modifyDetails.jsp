

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


</head>
<body>

<%
	
session.getAttribute("name");
session.getAttribute("pno");
session.getAttribute("uname");
session.getAttribute("pass");

%>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    
    <form method="post" action="modifydetails" class="form-group col-md-4 offset-4">
        <h1 >Set Details</h1>
      
        <div class="det">
            <i class="fa fa-user-o" aria-hidden="true"></i>
            <input   value="${name}" name="name" id="input" class="form-control m-2" >

       </div>

       <div class="det">
        <i class="fa fa-phone" aria-hidden="true"></i>
        <input  type="text" value="${pno}"  name="pno" id="input" class="form-control m-2" >

        </div>

        <div class="det">
            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
             <input  type="text" value="${uname}"  name="username" id="input" class="form-control m-2" required>

        </div>
        <div class="det">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" value="${pass}"  name="pass" id="input" class="form-control m-2" required>

        </div>

       
        
        <div id="alme">
        <button class="btn btn-success m-2" id="signup-button">Save</button>
        
        
        
        </div>
    </form>
    
    
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	  <link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success")
		{
		swal("Congrats","Account Created Successfully","success");
		}
	</script>


</body>
</html>
<style >

body{
background-image: url("pics/SCOTT-A-WOODWARD_1SW1943.jpg");
}



</style>
