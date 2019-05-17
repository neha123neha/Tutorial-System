<!Doctype html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
<style>

#footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:200px;   /* Height of the footer */
}

#results {
   position:absolute;
   bottom:0;
   width:100%;
   height:75px;
   font-weight: bold;
}


</style>
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
     
Questions on Loops 

<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
	
</h1>

<div class="quiz-container">
  <div id="quiz" ></div>
</div>
<div id ="footer" >
  <button id="home" onclick="location.href = '../main.jsp'">Home</button>
  <button id="repeat"value="Refresh Page" onClick="window.location.reload()">Practice Again</button>
  <button id="previous">Previous Question</button>
  <button id="next">Next Question</button>
  <button id="submit">Submit Quiz</button>
</div>
<div id="results"></div>
<script type="text/javascript" src="Dict_quiz.js"></script>

</body>

</html>
