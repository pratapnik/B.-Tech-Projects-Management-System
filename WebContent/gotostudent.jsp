<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>

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

	<section class="student-login-page">
	
		<div class="container">
		
			<div class="row">
			
				<div class="col-md-3"></div>
			
				<div class="col-md-6">
				
				<form action= "studentlogin.jsp">
				
					<p>Student ID</p>
					
					
						<input type="text" name="username">
					
					
					<p>Password</p>
					
					
						<input type="password" name="password">
					
					<br>
				      <input class="btn btn-primary btn-login" type="submit" name="LOGIN">
					
					</form>
				
				</div>
				
				
				<div class="col-md-3"></div>
			
			</div>
		
		</div>
	
	</section>

</body>
</html>