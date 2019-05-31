<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:500italic,600italic,600,700,700italic,300italic,300,400,400italic,800,900' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,300italic,400italic,600italic,700,900' rel='stylesheet' type='text/css'>


	<!-- CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

        <!-- Fontawesome  -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Animate CSS -->
    <link rel="stylesheet" type="text/css" href="css/animate.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">

        <!-- BX slider CSS -->
    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">

        <!-- responsive css -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    
</head>
<body>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="loginnew.html" />
</c:if>
 
	<div class="container">
	
		<div class="row">
		
			<div class="col-md-10"></div>
			
			<div class="col-md-2">
			
				<a href="loginnew.html">
				
					<i class="fa fa-power-off fa-2x" aria-hidden="true"></i>
					
				</a>
			
			</div>
		
		</div>

	</div>


 <!-- <a href="logout.jsp">Logout 
    <c:out value="${sessionScope['loginUser']}" />
</a> -->

</body>
</html>