
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
				   <th>Perfect Gift</th>
				    <tr>
				    	<td class = "center-col">Product Name</td>
				    	<td class = "right-col">Quantity</td>
				    </tr>
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
			</div>
			
		</div>
		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
	</div>

</body>
</html>