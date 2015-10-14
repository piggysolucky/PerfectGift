<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta  http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type ="text/css" href = "/CSS/mystyle.css"/>
		<title>Perfect Gift</title>
	</head>
	
	<body style = "background-color:#484848; color:white;">
		<jsp:include page = "header.jsp" />
		
		<!-- This section is for the company introduction.-->
		<table width = "100%" id = "companyIntro">
			<tr>
				<td class = "introHeader" style = "width:33%; padding: 10px 5px;">
					 Vision<br/>
					<table>
						<tr>
						Make the world more creative and special<br/>
						</tr>
						<tr>
						Encourage and help talented people and artists<br/>
						</tr>
						<tr>
						Help people find unique and special gifts for their loved ones
						</tr>
					</table>
				</td>
				<img src = "sources/divLine.png"/>
				<td class = "introHeader" style = "width:33%; padding: 10px 5px;">
				    Mission<br/>
				    We aim to make your occassions more special by bringing to you a wide catalog of gifts
				    from fresh flowers to personalized items and more.Every item you buy is not only a
				    gift for your loved ones but also to the makers of it who get what they deserve out of the purchase. 
				</td>
				<td class = "introHeader" style = "width:33%; padding: 10px 15px;">
					Product & Service<br/>
	                <table>
	                	<tr>
	                		Handmade gift.<br/>
	                	</tr>
	                	<tr>
	                		Self-grown vegetables.
	                	</tr>
	                </table>
				</td>
			</tr>
		</table>
		
		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
		
		
	</body>
</html>