
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.util.*" %>
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
				    <c:forEach var = "i" begin = "0" end = "${inventory.items.size()-1}">
				        <tr>
				    	<td>${inventory.items[i].name}</td>
				    	<form:hidden path = "items[${i}].name" value = "${inventory.items[i].name}"></form:hidden>
				    	<td> ${inventory.items[i].price}</td>
				        <td><form:input path = "items[${i}].quantity"/></td>
				        </tr>
				    	 </c:forEach>
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