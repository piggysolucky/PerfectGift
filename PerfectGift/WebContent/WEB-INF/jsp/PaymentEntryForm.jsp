<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--This section is for the header section -->
    <jsp:include page = "header.jsp" />
<body>
	<div class = "bodyContainer">
		<h1>Please enter your billing information</h1>
		<form:form modelAttribute="payment" method="post" action="submitPayment">
			<table>
				<tr>
					<td>Name (as it appears on credit card):</td>
		    		<td><form:input path="holder_name"/></td>
		    	</tr>
				<tr>
					<td>Credit Card:</td>
					<td><select name="creditCardType">
		    			<option value="amex">American Express</option>
		    			<option value="visa">Visa</option>
		    			<option value="mc">MasterCard</option>
		    			<option value="discover">Discover</option>
		    			</select></td>
		    	</tr>
				<tr>
					<td>Credit Card Number:</td>
		    		<td><form:input path="credit_card"/></td>
		    	</tr>
				<tr>
					<td>Expiration Date:</td>
		    		<td><form:input path="exp_date"/></td>
		    	</tr>
		    	<tr>
					<td>CVV:</td>
		    		<td><form:input path="CVV"/></td>
		    	</tr>
		</table>
		<input type="submit" value="Complete Order"/>
		</form:form>
	</div>
</body>
</html>