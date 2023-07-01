<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	 
	 <style>


  .uaname h5{
    margin-left: 10px;
  } 
  
 
</style>
</head>
<body>
 <%
	
//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
 session.getAttribute("uname");
 session.getAttribute("name");
 if(session.getAttribute("uname")==null)
 {
 	
 	response.sendRedirect("login.jsp");
 	
 }
//welcome ${uname}
%>


    <!-- nav bar starts -->
    <nav id="demo" class="navbar navbar-expand-lg bg-body-tertiary" >
        <div id="logo">
            <img src="pics/logo.com.png" alt="">
        </div>
        <div class="uaname">
            <h5> ${uname}</h5>
        </div>
        <div  class="container-fluid"> 
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="setNewTrip.jsp">Set trips</a></li>
                    <li class="nav-item"><a class="nav-link" href="bookk">Bookings</a>
                    </li>
                    
                    <li class="nav-item"><a class="nav-link" href="messages">Messages</a>
                    </li>
                    
                     <li class="nav-item"><a class="nav-link" href="getcancelreq">Cancel Requests</a>
                    </li>

                    


                    
                </ul>
            </div>
            <div class="button1">
              
                <a id="btn2"  href="logout"><button id="indexbtn" type="button"
                    class="btn btn-outline-primary">Log out</button></a>
             </div>
        </div>
    </nav>




</body>
</html>
