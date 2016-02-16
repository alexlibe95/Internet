<%@ page language="java" contentType=" charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Events</title>
<style>
body{
background-color:  #f2f2f2;
}
</style>
</head>
<style>
table{
border: 2px solid black;
}
</style>
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
<h1>
	Events
</h1>
<section>
<table>
	<tr>
		<th> Id </th>
	<th> Date </th>
	<th> Name </th>
	</tr>
	<c:forEach items="${events}" var="event"> 
  <tr>
      <td>${event.id}</td>
  
    <td>${event.date}</td>
    <td>${event.name}</td>
    
  </tr>
</c:forEach>
</table>
</section>
<p> <a href="/InternetAssignment/newsletter">Newsletter</a>
</p>

</body>
</html>