
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<!--This section is for the header section -->
    <jsp:include page = "header.jsp" />
<body>
	<div class = "bodyContainer">
		<div class = "orderContainer">
			<div class = "orderFormContainer">
				<form:form modelAttribute="order" method="post" action="purchase/submitItems">
				   <table border = "1" class = "orderForm">
				   <h3 style = "text-align:center; color:white;">Get the perfect gift for you!</h3>
				    <tr>
				    	<td class = "left-col">Product Name</td>
				    	<td class = "cneter-col">Unit Price</td>
				    	<td class = "right-col">Quantity</td>
				    </tr>
					<tr>
				     	<td> ${order.items[0].name}</td>
				        <form:hidden path = "items[0].name" value = "${items[0].quantity}"></form:hidden>
				        <td> ${order.items[0].price}</td>
				        <td><form:input path = "items[0].quantity"/></td>
					</tr>
					<tr>
				        <td> ${order.items[1].name}</td>
				        <form:hidden path = "items[1].name" value = "${items[1].quantity}"></form:hidden>
				        <td> ${order.items[1].price}</td>
				        <td><form:input path = "items[1].quantity"/></td>
					</tr>
					<tr>
				        <td> ${order.items[2].name}</td>
				        <form:hidden path = "items[2].name" value = "${items[0].quantity}"></form:hidden>
				        <td> ${order.items[2].price}</td>
				        <td><form:input path = "items[2].quantity"/></td>
				     </tr>
				    </table>
				<input type = "submit" value = "submit" style = "text-align:center">
				</form:form>
			</div>
			
		</div>
		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
	</div>

</body>
</html>