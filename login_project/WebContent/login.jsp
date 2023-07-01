<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/0ae591a448.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet">
    <style type="text/css">
    body {
	background: url("pics/stock-photo-blue-suitcase-with-sun-glasses-hat-and-camera-on-pastel-blue-background-travel-concept-minimal-1094945555-transformed.jpeg");
}
    </style>
    </head>
<body id="bd">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    
    <form method="post" action="login" class="form-group col-md-4 offset-4">
        <h1 >login</h1>
      
        <div class="det">
             <i class="fa fa-user" aria-hidden="true"></i>
             <input  type="text" placeholder="enter username" name="username" id="input" class="form-control m-2" required="required" >

        </div>
        <div class="det">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" placeholder="enter password" name="pass" id="input" class="form-control m-2" required="required">

        </div>
        
        <button class="btn btn-success m-2" id="button">submit</button>

        <div class=" remember-me">
            <input type="checkbox" name="remember-me" id="remember-me"
                class="agree-term" /> <label for="remember-me"
                class="label-agree-term"><span><span></span></span>Remember
                me</label>
                
                <a href="signup.jsp" class="signup-image-link">Create an
                    account</a>
        </div>

        <div class="social-login">
            <span class="social-lable"> or login with</span>
            <ul class="social">
                <li> <a href="#" ><i class="fa-brands fa-facebook-f" id="fb"></i></a></li>
                <li> <a href="#" ><i class="fa-brands fa-twitter" id="tw"></i></a></li>
                <li> <a href="#" ><i class="fa-brands fa-google" id="gg"></i></a></li>
            </ul>
        </div>
    </form>

 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	  <link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "failed")
		{
		swal("Sorry","Wrong Username or Password","error");
		}
	
	if(status == "success")
	{
	swal("Congrats","Account Created Successfully","success");
	}
</script>
	</script>
</body>
</html>