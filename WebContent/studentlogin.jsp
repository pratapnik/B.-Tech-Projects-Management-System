<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>

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



<c:if test="${ empty param.username or empty param.password}">
      <c:redirect url="gotostudent.jsp" >
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.username and not empty param.password}">
      <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/projectpool"
                       user="root" password="8800705345"/>
 
      <sql:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from student
        where student_ID='${param.username}'
        and student_password='${param.password}'
      </sql:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.username}"/>
            <c:redirect url="index.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="gotostudent.jsp" >
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>


</body>
</html>