<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notice</title>

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
     
     <section>
     
     	<div class="container">
     	
     		<div class="row">
     		
     			<div class="col-md-12">
     			
     				<h1>Post a notice</h1><br>
     				
   				 	<form>
  						Faculty Name:<br>
  						<input type="text" name="faculty_name">
  						<br><br>
  						Notice Body:<br>
  						<textarea rows="5" cols="40" name="body"></textarea><br>
  						<br><br>
  						<input class="btn btn-primary btn-proposal" type="submit" value="Post">
  					</form>
     			
     			</div>
     		
     		</div>
     	
     	</div>
     
     </section>
     <c:if test="${(not empty param.faculty_name) and (not empty param.body)}">
	<sql:setDataSource var ="notice" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/projectpool" user ="root" password="8800705345"/>
    <sql:update dataSource="${notice}" var="updatedTable">
	insert into notice(faculty_name, body) values (?, ?);
   
	<sql:param value="${param.faculty_name}" />
	<sql:param value="${param.body}" />
	

	</sql:update>
    
</c:if>

</body>
</html>