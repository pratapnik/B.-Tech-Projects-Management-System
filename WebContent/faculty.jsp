<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty</title>

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

	<div class="collapse navbar-collapse" id="-navbar-collapse-1">
	
        <ul class="nav navbar-nav navbar-right">
        
        	<li><a href="Backtohome" class="nav-item">Home</a></li>
        	<li><a href="Projects" class="nav-item">Project Pool</a></li>
            <li><a href="Faculty" class="nav-item">Faculty Info</a></li>
            <li><a href="Applications" class="nav-item">Submitted Applications</a></li>
            <li><a href="Allproposals" class="nav-item">All Submitted Proposals</a></li>
            <li><a href="studentrules.html" class="nav-item">Rules</a></li>
            
        </ul>
                            
     </div>

<sql:setDataSource var ="faculty" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:query var="rs" dataSource="${faculty}">select * from faculty</sql:query>
    
    <section>
    
    	<div class="container">
    	
    		<div class="row">
    		
    			<div class="col-md-12 all-proposals">
    			
    					<c:forEach items ="${rs.rows}" var="row">
         					<p>&#9989Faculty ID: <c:out value="${row.faculty_ID}"></c:out><br>
         					Faculty Name: <c:out value="${row.faculty_name}"></c:out><br>
         				 	Email: <c:out value="${row.email}"></c:out><br>
         				 	Contact: <c:out value="${row.phone}"></c:out><br>
         				 	Domain: <c:out value="${row.domain}"></c:out></p>
         				 	<br>
    					</c:forEach>
    			
    			</div>
    		
    		</div>
    	
    	</div>
    
    </section>

</body>
</html>