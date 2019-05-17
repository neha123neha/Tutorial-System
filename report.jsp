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

table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
  background-color: #fff;
}
table#t01 th {
  color: white;
  background-color: black;
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
     
Your Performance Report


<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>
<button id="home" onclick="location.href = 'main.jsp'">Home</button>	
</h1>

<div class="quiz-container">
  <table id="t01">
  <tr>
    <th>Question Type</th>
    <th>Total Attempeted</th> 
    <th>Correct</th>
  </tr>
  <tr>
    <td>Basic Operations</td>
    <td>6</td> 
    <td>0</td>
  </tr>
  <tr>
    <td>String Operations</td>
    <td>12</td> 
    <td>9</td>
  </tr>
  <tr>
    <td>List</td>
    <td>12</td> 
    <td>10</td>
  </tr>
  <tr>
    <td>Tuples</td>
    <td>6</td> 
    <td>3</td>
  </tr>
  <tr>
    <td>Dictionary</td>
    <td>12</td> 
    <td>5</td>
  </tr>
  <tr>
    <td>Decision Making</td>
    <td>6</td> 
    <td>0</td>
  </tr>
  <tr>
    <td>Loops</td>
    <td>12</td> 
    <td>4</td>
  </tr>
   <tr>
    <td>Functions</td>
    <td>24</td> 
    <td>6</td>
  </tr>
</table>
</div>

  




</body>

</html>















