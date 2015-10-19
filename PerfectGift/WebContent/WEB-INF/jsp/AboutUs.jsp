<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--This section is for the header section -->
    <jsp:include page = "header.jsp" />
<body >
	<div class = "bodyContainer">
		<div>
		<!-- About the information of team member -->
			<table >
			    <tr>
			    	<h2 style = "text-align:center;"></h2>
			    </tr>
				<tr>
					<td class = "col4">
						<img src = "images/sang.jpg"  class = "us"/>
					</td>
					<td class = "col4">
						<h3>Kumari Sangeeta</h3>
						<h4>Roles:</h4>
						<ul>
							<li>
							Plan proper course of action and work towards the mission of the company while keeping a good culture
							</li>
							<li>
							Act as interface between the sellers and the buyers, making sure the sellers get the true price for their effort.
							</li>
						</ul>
						
					</td>
				</tr>
				<tr>
					<td class = "col4">
						<img src = "images/rui.jpg" class = "us"/>
					</td>
					<td class = "col4">
						<h3>Rui</h3>
						<h4>Roles:</h4>
						<ul>
							<li>
							Daily operation of the company.
							</li>
							<li>
							Marshaling limited resources to the most productive uses with the aim of creating 
							maximum value for the company's stake holders.
							</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
	</div>
		
</body>
</html>