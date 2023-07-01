<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .heading{
        background-image: url(pics/contact-banner1.jpg);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;  
        margin-top: 0%; 
    } 

    .form-label{
        margin-top: 10px;
    }

    #btn{
        color: white;
        margin-top: 10px;
        background-color: green;
        border-color: green;
    }

    #btn:hover{
        color: black;
        background-color: white;
    }

form{
    border: none;
    padding: 20px;
    padding-left: 101px;
    border-radius: 10px;
    box-shadow: 0.5;
}

   .mb-3 h2{
    color: #3f4a3c;
   }

   .mb-3 input{
    background-color:#e8ffec;
   }

   .mb-3 textarea{
    background-color:#e8ffec;
   }

   .chilad {
    display: flexbox;
   width: 50%;
    float: left;
    padding: 20px;
    
}  

.chilad p{
margin-left: 28px;
}

.add{
display: flex;

}

.add i{
padding-right: 14px;
padding-top:8px;
color: green;

}


#coinfo{
    margin-top: 152px;
}

.chilad h5{
    color: green;
}



</style>


<script src="https://kit.fontawesome.com/0ae591a448.js" crossorigin="anonymous"></script>

</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<!-- about page starts -->

<section class="heading">

    <div class="headline">
        <h2>CONTACT</h2>
    </div>
    <div class="template">
        
        <img src="pics/slider-pattern.png" alt="">
    </div>
</section>
<div>


<div id="forminfo" class="chilad">

    <form action="contactus" method="post" class="mb-3 col-md-9 ">
      <h2>CONTACT US</h2> 
      <hr>
      <label for="exampleFormControlInput1" class="form-label ">Name</label>
      <input name="name" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Name">
   
      <label for="exampleFormControlInput1" class="form-label ">Email Id</label>
      <input name="email" type="text" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">

      <label for="exampleFormControlInput1" class="form-label ">Contact No</label>
      <input name="contactno" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Mobile No">
    
      <label for="exampleFormControlTextarea1" class="form-label">Message</label>
      <textarea name="message" class="form-control" id="exampleFormControlTextarea1" placeholder="Type Message Here.." rows="3"></textarea>
   
      <button id="btn" type="submit" class="btn btn-primary">SUBMIT</button>

</form>
</div>

<div id="coinfo" class="chilad">
    <div  >
    <div class="add">
    <i class="fa-sharp fa-solid fa-location-dot"></i>
    <h5>Location Address</h5>
    </div>
    
    <p>We drive Tours & travels <br>
        2nd Floor, ghatkopar <br>
        East,mumbai
    </div>

    <div>
    <div class="add">
    <i class="fa-solid fa-envelope"></i>
        <h5>Email Address</h5>
          </div>
        <p>info@wedrive.com</p>
        </div>

        <div>
        <div class="add">
        <i class="fa-solid fa-phone"></i>
            
            <h5>Phone Number</h5>
            </div>
            <p>Mobile: +(91) 1234567890</p>
            </div>




</div>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	  <link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success")
		{
		swal("Congrats","Your Message Recorded Successfully","success");
		}
	
	
	</script>


</body>
</html>

