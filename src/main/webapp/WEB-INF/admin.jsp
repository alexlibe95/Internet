
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin's Interface</title>
<style>
table{
border: 2px solid black;
}
</style>
</head>
<body>
<table>
<tr>
<td><a href="/InternetAssignment/">Home</a></td>
<td><a href="/InternetAssignment/login">Log In</a></td>
<td><a href="/InternetAssignment/helloworld">Profile</a></td>
<td><a href="/InternetAssignment/info">Info</a></td>
<td><a href="/InternetAssignment/allevents">Events</a></td>

</tr>
</table>	
<p>
Admin's Interface
</p>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<a href="${logoutUrl}">Log Out</a>
 
</body>
</html>
