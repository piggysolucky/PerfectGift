<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page = "header.jsp"/>
<body>
<div class = "bodyContainer innerCenter">
	<h1>Please Enter the Shipping Details</h1>
	<div>
		<form:form modelAttribute="shipping" method="post" action="submitShipping">
		 <table>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="address1"/></td>
			</tr>
			<tr>
				<td></td><td><form:input path="address2"/></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><form:input path="city"/></td>
			</tr>
			<tr>
		    	<td>State:</td>
		    	<td><form:input path="state"/></td>
		    </tr>
			<tr>
				<td>Postal Code (ZIP in U.S.):</td>
		    	<td><form:input path="postalCode"/></td>
		    </tr>
			<tr>
				<td>Country:</td>
				<td><form:input path="country"/></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><form:input path="email"/></td>
			</tr>
		</table>
	<div class = "innerCenter">
		<input type="submit" value="Confirm" class = "submitButton"/>
	</div>
	</form:form>
	</div>
	
	
	
	<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
</div>
</body>
</html>