<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
    font-size: 20px;
    font-family: 'Work Sans', sans-serif;
    color: #333;
  font-weight: 300;
  text-align: center;
  background-color: #f8f6f0;
}
.block {
  display: block;
  width: 75%;
  border: none;
  background-color: #279;
  color: #fff;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}
h2{
  text-align: center;
  font-weight: 300;
  margin: 0px;
  padding: 10px;
  font-size: 20px;
  background-color: #444;
  color: #fff;
}

.block:hover {
      background-color: #84b7cc;
  }

</style>
</head>
<body>


<h2>
	<%
			 response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
					if (session != null) {
						if (session.getAttribute("user") != null) {
							String name = (String) session.getAttribute("user");
							out.print("Hello, " + name + "!");
						} else {
							response.sendRedirect("login.jsp");
						}
					}
				%>
     
Python Basic Practice Questions

<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
	
</h2>

<br>
<div align = "center">
  <button class="block" onclick="location.href='Basic_operations/BO_index.jsp'">Basic Operations</button>
  <br>
  <br>
  <button class="block" onclick="location.href='String_operations/SO_index.jsp'">String Operations</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">List</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">Tuples</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">Dictionary</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">Decision  Making</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">Loops</button>
  <br>
  <br>
  <button class="block" onclick="location.href='index.html'">Functions</button>
</div>
</body>
</html>
