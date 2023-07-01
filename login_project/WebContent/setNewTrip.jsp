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


<form action="settrip" method="post">
        <input type="text" name="from" placeholder="From"> 
        <input type="text" name="to" placeholder="To">
        <input type="date" name="date" placeholder="Date">
        <input type="time" name="time" placeholder="Time">
        <input type="text" name="price" placeholder="Fair">
        <button type="submit" class="btn btn-primary">SAVE</button>
    </form>
</body>
</html>

<style>

.uaname h5{
    margin-left: 10px;
  } 

    form{
        padding: 10px 10px 10px 10px;
        width: fit-content;
        border-radius: 4px;
        margin-left: 15%;
        margin-top: 10%;
        background-color:gainsboro;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    button{
        margin-left: 10px;
        margin-bottom: 5px;
        background-color: green;
        border: none;
    }

    .btn:hover{
        
        background-color: rgb(54, 98, 54);
        
    }

    input{
        border: none;
        height: 40px;
        padding-left: 20px;
        padding-right: 20px;
        border-radius: 5px;
    }
</style>