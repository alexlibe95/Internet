
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
	My app
</h1>
<section>
<table>
	<tr>
	<th> Amka </th>
	<th> Name </th>
	<th> Surname </th>
	<th> Tameio </th>
	<th> Examination </th>
	<th> Emergency </th>
	<th> Date </th>
	<th> Time </th>
	</tr>
	<c:forEach items="${checks}" var="check"> 
  <tr>
    <td>${check.amka}</td>
    <td>${check.name}</td>
    <td>${check.surname}</td>
    <td>${check.tameio}</td>
    <td>${check.ejetash}</td>
    <td>${check.emergency}</td>
    <td>${check.date}</td>
    <td>${check.time}</td>
    
  </tr>
</c:forEach>
</table>
</section>
</body>
</html>