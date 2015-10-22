<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
</head>
<body>
<%@ page import = "edu.osu.cse5234.model.*" %>
<%@ page import = "edu.osu.cse5234.business.*" %>
<%@ page import = "java.util.*" %>
<div class = "bodyContainer innerCenter">
	Please Confirm Your Orders: <br/>
	<% Order order = (Order)request.getSession().getAttribute("order");
	   PaymentInfo payment = (PaymentInfo)request.getSession().getAttribute("payment");
	   ShippingInfo shipping = (ShippingInfo)request.getSession().getAttribute("shipping");
	    List<Item> l = order.getItems();
	    Iterator<Item> itr = l.iterator();
	    out.println("************************************ </br>");
	    out.println("Order Summary" + "</br>");
	    out.println("************************************ </br>");
	    while(itr.hasNext())
	    {
	    Item it = itr.next();
	    out.print(it.name + ":");
	    out.println(it.quantity);
	    out.println("</br>");
	    
	    out.println("</br>");
	    }
	    out.println("************************************</br>");
	    out.println("Payment Information" + "</br>");
	    out.println("************************************</br>");
	    out.println("Holder Name:" + payment.getHolder_name()+ "</br>");
	    out.println("Credit Card Number:" + payment.getCredit_card()+ "</br>");
	    out.println("Expiration Date:"+ payment.getExp_date()+ "</br>");
	    out.println("CVV:"+ payment.getCVV()+ "</br>");
	    out.println("</br>");
	    out.println("*************************************</br>");
	    out.println("Shipping Information" + "</br>");
	    out.println("*************************************</br>");
	    out.println("Address: </br>"+ shipping.getAddress1()+ "</br>" + shipping.getAddress2()+ "</br>" +shipping.getCity()+ "</br>" +
	                shipping.getState()+ "</br>" +shipping.getCountry()+ "</br>" +shipping.getPostalCode()
	                + "</br>" +shipping.email+ "</br>");
	   
	   %>
	<form:form modelAttribute="order" method="post" action="confirmOrder">
	 <div class = "innerCenter">
	 	<input type = "submit" value = "confirm" class = "submitButton">
	 </div>
	
	</form:form>
	<jsp:include page = "footer.jsp" />
</div>

   
</body>
</html>

