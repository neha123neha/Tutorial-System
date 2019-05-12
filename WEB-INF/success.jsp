<html>
    <body>
        <center>
 
 
<h3>You are successfully logged-in</h3>

<%
		if (session != null) {
			if (session.getAttribute("user") != null) {
				String name = (String) session.getAttribute("user");
				out.print("Hello, " + name + "  Welcome to ur Profile");
			} else {
				response.sendRedirect("login.html");
			}
		}
	%>
 
 
            <a href="./login.jsp">back</a>
        </center>
    </body>
</html>