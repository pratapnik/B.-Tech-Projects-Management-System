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

	<div class="collapse navbar-collapse" id="-navbar-collapse-1">
	
        <ul class="nav navbar-nav navbar-right">
        
        	<li><a href="facultyhome.jsp" class="nav-item">Home</a></li>
        	<li><a href="facultypool.jsp" class="nav-item">Project Pool</a></li>
            <li><a href="facultyapplications.jsp" class="nav-item">Submitted Applications</a></li>
            <li><a href="facultyallproposals.jsp" class="nav-item">Submitted Proposals</a></li>
            
        </ul>
                            
     </div>
	
	<sql:setDataSource var ="projects" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:query var="rs" dataSource="${projects}">select * from pool</sql:query>

	<section>
	
		<div class="container">
		
			<div class="row">
			
				<div class="col-md-6 project-pool">
				
				<c:forEach items ="${rs.rows}" var="row">
         			<p>&#9989 Project ID: <c:out value="${row.project_ID}"></c:out></p>
          			<p>Project Title: <c:out value="${row.project_title}"></c:out></p>
          			<p>Technology Stack: <c:out value="${row.technology}"></c:out></p>
          			<p>Faculties: <c:out value="${row.faculty}"></c:out></p>
				</c:forEach>
				
				</div>
				<div class="col-md-6 project-pool-apply">
				
					<h1>Add a new Project</h1><br>
   				 	<form>
  						Project ID:<br>
  						<input type="text" name="project_id">
  						<br><br>
  						Project Title:<br>
  						<input type="text" name="project_title">
  						<br><br>
  						Technology:<br>
  						<input type="text" name="technology">
  						<br><br>
  						Faculty:<br>
  						<input type="text" name="faculty">
  						<br><br>
  						<input class="btn btn-primary btn-proposal" type="submit" value="Add">
  					</form>
				
				</div>
			
			</div>
		
		</div>
	
	</section>
    
  


  <c:if test="${(not empty param.project_id) and (not empty param.project_title) and (not empty param.technology) and (not empty param.faculty)}">
	<sql:setDataSource var ="apply" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:update dataSource="${apply}" var="updatedTable">
    insert into pool(project_ID, project_title, technology, faculty) values (?, ?, ?, ?);
       
	<sql:param value="${param.project_id}" />
	<sql:param value="${param.project_title}" />
	<sql:param value="${param.technology}" />
	<sql:param value="${param.faculty}" />
	

	</sql:update>
	</c:if> 
    
    
</body>

</html>