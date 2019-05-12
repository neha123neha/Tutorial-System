<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session != null) {
			if (session.getAttribute("user") != null) {
				response.sendRedirect("success.jsp");
			}
		}
	%>
				
    <form action="LoginServlet" method="post">
        <fieldset>
            <legend>Tutorial login</legend>
            <table>
                <tr>
                    <td>netID:</td>
                    <td><input type="text" name="netid" /></td>
                </tr>
                <tr>
                    <td>SBU id:</td>
                    <td><input type="text" name="sbuid" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login" /></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
