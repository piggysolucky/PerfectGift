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
			    	<h2 style = "text-align:center;">Get to know Us</h2>
			    </tr>
				<tr>
					<td class = "col4">
						<img src = "images/sang.jpg"  class = "us"/>
					</td>
					<td class = "col4">
						<h3>Contact:</h3>
						x..117@buckeyemail.osu.edu
					</td>
					<td class = "col4">
						<img src = "images/rui.jpg" class = "us"/>
					</td>
					<td class = "col4">
						<h3>Contact:</h3>
						yan.656@osu.edu
					</td>
				</tr>
			</table>
		</div>
		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
	</div>
		
</body>
</html>