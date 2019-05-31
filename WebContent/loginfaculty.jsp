<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix= "sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>

<body>



<c:if test="${ empty param.username or empty param.password}">
      <c:redirect url="samelogin.jsp" >
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.username and not empty param.password}">
      <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/projectpool"
                       user="root" password="8800705345"/>
 
      <sql:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from faculty
        where faculty_ID='${param.username}'
        and faculty_pass='${param.password}'
      </sql:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.username}"/>
            <c:redirect url="facultyhome.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="samelogin.jsp" >
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>

<form action ="Backtohome">
    	<h4 style="text-align:center;"><input type="submit" value="Home">
    	</h4>
      </form>
</body>
</html>