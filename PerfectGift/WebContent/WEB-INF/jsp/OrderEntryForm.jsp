<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="order" method="post" action="purchase/submitItems">
   <table border = "1">
	<tr>
     	<td> ${order.items[0].name}</td>
        <form:hidden path = "items[0].name" value = "${items[0].quantity}"></form:hidden>
        <td><form:input path = "items[0].quantity"/></td>
	</tr>
	<tr>
        <td> ${order.items[1].name}</td>
        <form:hidden path = "items[1].name" value = "${items[1].quantity}"></form:hidden>
        <td><form:input path = "items[1].quantity"/></td>
	</tr>
	<tr>
        <td> ${order.items[2].name}</td>
        <form:hidden path = "items[2].name" value = "${items[0].quantity}"></form:hidden>
        <td><form:input path = "items[2].quantity"/></td>
     </tr>
    </table>
<input type = "submit" value = "submit">
</form:form>

</body>
</html>