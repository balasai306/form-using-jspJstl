<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Regestration form</title>
	<link rel="stylesheet" href="style.css">


</head>

<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="jquery.js"></script>
	<script src="validation.js"></script>


	<h1 style="text-align: center; font-size: 40px;">Register User</h1>
	<br>

	<form action="correct.jsp" method="post" id="form" name="Online Registration">



		<br /> <label>Name: </label> <br /> <input type="text" name="name" id="name" placeholder="enter  name "> <br />
		<br /> <label>email:
		</label> <br /> <input type="text" name="email" id="email" placeholder="enter  email "> <br /> <br />
		<label>Mobile
			number: </label> <br /> <input type="text" name="mobile" id="mobile" placeholder=" mobile number "> <br />
		<br /> <br /> <label>City:
		</label> <br /> <input type="text" name="city" id="city" placeholder="enter  city name "> <br /> <br />
		<label>State:
		</label> <br /> <input type="text" name="state" id="state" placeholder="enter state name "> <br /> <br />
		<label>Country:
		</label> <br /> <input type="text" name="country" id="country" placeholder="enter your country name "> <br />
		<br /> <br />
		<br />
		<p style="text-align: center">
			<button id="button" onclick="sub()"  type="button" center>validate
				Form</button>
			<br /> <br />
			<button id="submit"  type="submit" center  style="visibility: hidden;">submit
				Form</button>
		</p>
		<br />


	</form>











	
	<script>
		function sub() {
	var button=document.getElementById("submit")
	var val=validate();
	console.log(val);
	if(val==true){
		console.log("if");
		button.style.visibility="visible";

	}
	else{
		console.log("else");
		button.style.visibility="hidden";


	}

}
	</script>
  <!-- <div id="submission">
		
		<c:url var="entry" value="register">

			<c:param name="name" value="${param.name}" />
			<c:param name="mobile" value="${param.mobile}" />
			<c:param name="email" value="${param.email}" />

		</c:url>
		<button>
			<a href="${entry}"> submit data</a>
		</button>
	</div> 

	<br>
	<br>  -->






</body>


</html>