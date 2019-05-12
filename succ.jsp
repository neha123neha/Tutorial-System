<html>
    <body>
        <center>
 
 
			
	 
			 <%
			 response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
					if (session != null) {
						if (session.getAttribute("user") != null) {
							String name = (String) session.getAttribute("user");
							out.print("Hello, " + name + ",");
						} else {
							response.sendRedirect("login.jsp");
						}
					}
				%>
	 		  <h3>You are successfully logged-in.</h3>
	          <h3>Please select questions to practice.</h3>
           
     <form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
        

	</center>
	
    </body>
</html>