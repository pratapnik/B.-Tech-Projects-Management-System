<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Proposals</title>

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

   <sql:setDataSource var ="proposals" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>

   <sql:query var="rs" dataSource="${proposals}">select * from proposals order by project_ID</sql:query>
   <c:forEach items ="${rs.rows}" var="row">
    			
    <div>
        <br><p class="all-proposals">&#9989 Project ID: <c:out value="${row.project_ID}"></c:out> <br>
        Project Title: <c:out value="${row.project_title}"></c:out> <br> 
        Description: <c:out value="${row.project_description}"></c:out> <br> 
        Technology Stack: <c:out value="${row.technology}"></c:out> <br>
        Leader: <c:out value="${row.leader}"></c:out> <br> 
        Email: <c:out value="${row.email}"></c:out> <br> 
        Faculty: <c:out value="${row.faculty}"></c:out> </p>
    
    <br>
    </div>
</c:forEach>
    
    
    <form action ="index.jsp">
    	<input class="btn btn-primary btn-login" type="submit" value="Back">
    
    </form>
    

</body>
</html>