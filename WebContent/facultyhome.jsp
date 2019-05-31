<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>

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
    
    
<body>

	<div class="collapse navbar-collapse" id="-navbar-collapse-1">
	
        <ul class="nav navbar-nav navbar-right">
        
        	<li><a href="facultypool.jsp" class="nav-item">Project Pool</a></li>
            <li><a href="facultyapplications.jsp" class="nav-item">Submitted Applications</a></li>
            <li><a href="facultyallproposals.jsp" class="nav-item">Submitted Proposals</a></li>
            
        </ul>
                            
     </div>
	
	<section>
   
   	<div class="container">
   	
   		<div class="row">
   		
   			<div class="col-md-12">
   			
   				<h2 class="rules-header">RULES</h2>
   				
   				<marquee direction="up">
   				
   				<ul class="rules">
   					<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>
   					<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
   					<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</li>
   					<li>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>
   					<li>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</li>
   				</ul>
   				
   				</marquee>
   			
   			</div>
   		
   		</div>
   	
   	</div>
   
   </section>
   
   <section class="own-proposal">
    
    	<div class="container">
    	
    		<div class="row">
    		
    			<div class="col-md-9">
    			
    				<p>To post a NOTICE, click on the button.</p>
    			
    			</div>
    			
    			<div class="col-md-3">
    			
    				<a class="btn btn-primary btn-proposal" href="notice.jsp">Add a notice</a>
    			
    			</div>
    		
    		</div>
    	
    	</div>
    
    </section>

 <%@include file="header.jsp" %>
     <%
           // session.removeAttribute("loginUser");
        %> 
</body>
</html>