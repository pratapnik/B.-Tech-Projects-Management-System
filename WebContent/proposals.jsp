<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proposals</title>

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
     
     <section>
     
     	<div class="container">
     	
     		<div class="row">
     		
     			<div class="col-md-3"></div>
     			
     			<div class="col-md-6 proposal-form">   			 				   					
     			
     				<form>
						  Project Title: 
						  <input type="text" name="title">
						  <br><br>
						  Project Description:
						  <input type="text" name="description">
						  <br><br>
						  Technology Stack:
						  <input type="text" name="technology">
						  <br><br>
						  Team Leader:
						  <input type="text" name="teamleader">
						  <br><br>
						  Email:
						  <input type="text" name="email">
						  <br><br>
						  Number of students (max 4):
						  <input type="text" name="students">
						  <br><br>
						  Names of other students (put commas):
						  <input type="text" name="names">
						  <br><br>
						  Faculty Name:
						  <input type="text" name="faculty">
						  <br><br>
						  <input class="btn btn-primary btn-proposal" type="submit" value="Submit">
					</form> 
					
     			</div>
     			
     			<div class="col-md-3"></div>
     		
     		</div>
     	
     	</div>
     
     </section>

<c:if test="${(not empty param.title) and (not empty param.description) and (not empty param.technology) and (not empty param.teamleader) and (not empty param.email) and (not empty param.students) and (not empty param.names) and (not empty param.faculty) and (param.students <=4) and (param.students > 0)}">
	<sql:setDataSource var ="submit" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:update dataSource="${submit}" var="updatedTable">
	insert into proposals(project_title, project_description, technology, leader, email, num_students, students, faculty) values (?, ?, ?, ?, ?, ?, ?, ?);
   
	<sql:param value="${param.title}" />
	<sql:param value="${param.description}" />
	<sql:param value="${param.technology}" />
	<sql:param value="${param.teamleader}" />
	<sql:param value="${param.email}" />
	<sql:param value="${param.students}" />
	<sql:param value="${param.names}" />
	<sql:param value="${param.faculty}" />
	

	</sql:update>
    
</c:if>

</body>
</html>