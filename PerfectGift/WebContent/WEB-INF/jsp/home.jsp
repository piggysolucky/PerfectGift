<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <!--This section is for the header section -->
    <jsp:include page = "header.jsp" />
    
    <!-- Body of the homepage-->
	<body>
		<div class = "bodyContainer">
		
		<!-- This section is for the company introduction.-->
		<div>
			<table width = "100%" id = "companyIntro" class = "center">
			<tr>
				<td>
					<h3> Vision</h3>
				</td>
				<td>
					<h3> Mission </h3>
				</td>
				<td>
					<h3>Product & Service</h3>
				</td>
			</tr>
			<tr>
				<td class = "introHeader">
					
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
				
				<td class = "introHeader">
				    We aim to make your occassions more special by bringing to you a wide catalog of gifts
				    from fresh flowers to personalized items and more.Every item you buy is not only a
				    gift for your loved ones but also to the makers of it who get what they deserve out of the purchase. 
				</td>
				<td class = "introHeader">
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
		</div>

		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
   </div>
		
	</body>
</html>