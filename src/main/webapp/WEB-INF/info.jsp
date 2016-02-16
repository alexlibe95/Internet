
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Informations</title>
<style>
table{
border: 2px solid black;
}
body{
background-color:  #f2f2f2;
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
<h1>General hospital</h1>
<p>Μαυρομιχάλη 35, Αθήνα</p>

<table border="1">
<tr>
<th colspan="3">Παθολογικό</th>
</tr>
<tr>
<td width="100">Γραφείο_1</td>
<td width="100">4ος όροφος</td>
<td width="100">210-9655443</td>
</tr>
<tr>
<td width="100">Γραφείο_2</td>
<td width="100">4ος όροφος</td>
<td width="100">210-9665445</td>
</tr>
<tr>
<td width="100">Γραφείο_3</td>
<td width="100">5ος όροφος</td>
<td width="100">210-9666745</td>
</tr>
</table>
<p></p>
<table border="1">
<tr>
<th  colspan="3">Αιματολογικό</th>
</tr>
<tr>
<td width="100">Γραφείο_1</td>
<td width="100">2ος όροφος</td>
<td width="100">210-9452443</td>
</tr>
<tr>
<td width="100">Γραφείο_2</td>
<td width="100">3ος όροφος</td>
<td width="100">210-9665489</td>
</tr>
</table>
<p></p>
<table border="1">
<tr>
<th  colspan="3">Νευρολογικό</th>
</tr>
<tr>
<td width="100">Γραφείο_1</td>
<td width="100">1ος όροφος</td>
<td width="100">210-9654323</td>
</tr>
<tr>
<td width="100">Γραφείο_2</td>
<td width="100">1ος όροφος</td>
<td width="100">210-9432245</td>
</tr>
<tr>
<td width="100">Γραφείο_3</td>
<td width="100">2ος όροφος</td>
<td width="100">210-9437645</td>
</tr>
</table>
<p></p>
<table border="1">
<tr>
<th  colspan="3">Ουρολογικό</th>
</tr>
<tr>
<td width="100">Γραφείο_1</td>
<td width="100">6ος όροφος</td>
<td width="100">210-9456543</td>
</tr>

</table>
</body>
</html>