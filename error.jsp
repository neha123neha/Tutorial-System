<html>
    <body>
        <center>
		
		<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session != null) {
			if (session.getAttribute("user") != null) {
				response.sendRedirect("success.jsp");
			}
		}
	%>
 
 
<h3>Your creadentials are wrong.</h3>
 
 
            <a href="./login.jsp">Login again.</a>
        </center>
    </body>
</html>