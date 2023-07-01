
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="heading">

    <div class="headline">
        <h2>GALLARY</h2>
    </div>
    <div class="template">
        
        <img src="pics/slider-pattern.png" alt="">
    </div>
</section>
<div>

<div class="images" id="im1">
<div class="gal">
   <img alt="" src="pics/istockphoto-1145064928-612x612.jpg">
   <p>Thar Desert</p>
</div>

<div class="gal" id="im2">
   <img alt="" src="pics/istockphoto-482557081-612x612.jpg">
   <p>Hawa Mahal, Jaipur</p>
</div>
</div>


<div class="images" id="im1">
<div class="gal">
   <img alt="" src="pics/istockphoto-516984446-612x612.jpg">
   <p>Varanasi city</p>
</div>

<div class="gal" id="im2">
   <img alt="" src="pics/istockphoto-952763206-612x612.jpg">
   <p>Taj Mahal</p>
</div>
</div>


<div class="images" id="im1">
<div class="gal">
   <img alt="" src="pics/istockphoto-1227505443-612x612.jpg">
   <p>Saree sailer</p>
</div>

<div class="gal" id="im2">
   <img alt="" src="pics/istockphoto-154894958-612x612.jpg">
   <p>Amber Fort,Jaipur</p>
</div>
</div>




</body>
</html>

<style>

p{
  font-size: 20px; 
  margin-left: 110px;
}


.gal {
	border: 1px solid #5b4c46;
	border-radius:10px;
	padding: 10px;
	margin-left: 222px;

}

.gal img {
	width: 402px;
	height: 262px;
	border-radius: 10px;

}

.images {
	display: flex;
	margin-top: 20px;
	}

.heading {
	background-image: url(pics/contact-banner1.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 0%;
}

.form-label {
	margin-top: 10px;
}

#btn {
	color: white;
	margin-top: 10px;
	background-color: green;
	border-color: green;
}

#btn:hover {
	color: black;
	background-color: white;
}

form {
	border: none;
	padding: 20px;
	padding-left: 101px;
	border-radius: 10px;
	box-shadow: 0.5;
}

.mb-3 h2 {
	color: #3f4a3c;
}

.mb-3 input {
	background-color: #e8ffec;
}

.mb-3 textarea {
	background-color: #e8ffec;
}

.chilad {
	display: flexbox;
	width: 50%;
	float: left;
	padding: 20px;
}

#coinfo {
	margin-top: 152px;
}

.chilad h5 {
	color: green;
}
</style>