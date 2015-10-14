<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <!--This section is for the header section -->
    <jsp:include page = "header.jsp" />
    
    <!-- Body of the homepage-->
	<body style = "background-color:#484848; color:white;">
		<div class = "bodyContainer" style = "width: 80%; padding-left: 100px;">
		
		
		<!-- This section is for the company introduction.-->
		<div>
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
		</div>

		<!-- This section is for the footer-->
		<jsp:include page = "footer.jsp" />
   </div>
		
	</body>
</html>