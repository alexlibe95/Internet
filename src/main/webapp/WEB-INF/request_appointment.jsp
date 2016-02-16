<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Appointment's Information</title>
<style>
body{
background-color:  #f2f2f2;
}

.error {
    color: #ff0000;
    font-style: italic;
    font-weight: bold;
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
<h2>Appointment's Information</h2>
<form:form method="POST"  modelAttribute="newappointment" action="/InternetAssignment/addappointment">
   <table>
   
   <tr>
        <td><form:label path="amka">Amka</form:label></td>
        <td><form:input path="amka"/></td>
        
    </tr>
     <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
        <td><form:errors path="name" cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="surname">Surname</form:label></td>
        <td><form:input path="surname" />  </td>
        <td><form:errors path="surname" cssClass="error" /></td>
    </tr>
     <tr>
        <td><form:label path="tameio">Tameio</form:label></td>
        <td><form:input path="tameio" />  </td>
        <td><form:errors path="tameio" cssClass="error" /></td>

    </tr> 
    <tr>
        <td><form:label path="ejetash">Examination</form:label></td>
        <td><form:input path="ejetash" />  </td>
        <td><form:errors path="ejetash" cssClass="error" /></td>
        
    </tr>
     <tr>
        <td><form:label path="emergency">Emergency</form:label></td>
        <td><form:input path="emergency" />  </td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table> 
</form:form>
</body>
</html>