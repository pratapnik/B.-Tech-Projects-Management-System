<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Pool</title>

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

     <sql:setDataSource var ="projects" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:query var="rs" dataSource="${projects}">select * from pool</sql:query>

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
			
				<div class="col-md-6 project-pool">
				<sql:setDataSource var ="projects" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345" scope="session"/>
    <sql:query var="rs" dataSource="${projects}">select * from pool</sql:query>
				
				<c:forEach items ="${rs.rows}" var="row">
         			<p>&#9989 Project ID: <c:out value="${row.project_ID}"></c:out><br>
          			<p>Project Title: <c:out value="${row.project_title}"></c:out><br>
          			<p>Technology Stack: <c:out value="${row.technology}"></c:out><br>
          			<p>Faculties: <c:out value="${row.faculty}"></c:out></p>
          			<br>
				</c:forEach>
				
				</div>
				<div class="col-md-6 project-pool-apply">
				
					<h1>Apply for BTP</h1><br>
   				 	<form>
  						Project ID:<br>
  						<input type="number" name="project_id">
  						<br><br>
  						Team Leader:<br>
  						<input type="text" name="teamleader">
  						<br><br>
  						Email:<br>
  						<input type="text" name="email">
  						<br><br>
  						<input class="btn btn-primary btn-proposal" type="submit" value="Apply">
  					</form>
				
				</div>
			
			</div>
		
		</div>
	
	</section>
	
  
  <c:if test="${(not empty param.project_id) and (not empty param.teamleader) and (not empty param.email)}">
	<sql:setDataSource var ="apply" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <c:forEach items ="${rs.rows}" var="row">
          <c:if test="${param.project_id == row.project_ID}">
                 <sql:update dataSource="${apply}" var="updatedTable">
	insert into applications(project_ID,leader, email) values (?, ?, ?);
   
	<sql:param value="${param.project_id}" />
	<sql:param value="${param.teamleader}" />
	<sql:param value="${param.email}" />
	

	</sql:update>
	<p>Form Submitted!</p>
          </c:if>
    </c:forEach>
   
	
    
</c:if>
    
</body>

</html>