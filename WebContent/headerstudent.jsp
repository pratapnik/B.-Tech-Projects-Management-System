<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty sessionScope['loginUser']}">
    <c:redirect url="loginnew.html" />
</c:if>
 
<a href="logout.jsp">Logout 
    <c:out value="${sessionScope['loginUser']}" />
</a>
</body>
</html>