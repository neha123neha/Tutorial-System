<!Doctype html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">

</head>

<body>



<h1>
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
     
Questions on Arithmetic expressions

<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
	
</h1>
<div class="quiz-container">
  <div id="quiz"></div>
</div>
<button id="home" onclick="location.href = '../main.jsp'">Home</button>
<button id="repeat"value="Refresh Page" onClick="window.location.reload()">Practice Again</button>
<button id="previous">Previous Question</button>
<button id="next">Next Question</button>
<button id="submit">Submit Quiz</button>
<div id="results"></div>
<script type="text/javascript" src="SO_quiz.js"></script>

</body>

</html>
