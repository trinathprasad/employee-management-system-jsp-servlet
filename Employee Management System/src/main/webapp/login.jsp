<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
<style type="text/css">
body {
  display: flex;
  flex-direction: column;   /* stack message + form */
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background: linear-gradient(135deg, #00bcd4, #2196f3);
  font-family: Arial, sans-serif;
}

form {
	width: 320px;
	padding: 25px;
	border-radius: 10px;
	background: #fff;
	box-shadow: 0 6px 18px rgba(0, 0, 0, 0.25);
	text-align: center;
	animation: fadeIn 0.6s ease-in-out;
}

h2 {
	color: #00796b;
	margin-bottom: 20px;
	text-align: center;
}

label {
	display: block;
	margin-top: 10px;
	font-size: 15px;
	font-weight: bold;
	text-align: left;
	color: #333;
}

input {
	width: 100%;
	height: 35px;
	padding: 6px;
	margin-top: 5px;
	border: 1px solid #bbb;
	border-radius: 5px;
	box-shadow: inset 1px 1px 3px rgba(0,0,0,0.1);
	font-size: 14px;
	transition: 0.3s;
}

input:focus {
	border-color: #2196f3;
	box-shadow: 0 0 6px rgba(33,150,243,0.4);
	outline: none;
}

button {
	margin-top: 18px;
	width: 100%;
	height: 38px;
	background: linear-gradient(135deg, #009688, #00796b);
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 15px;
	font-weight: bold;
	box-shadow: 2px 4px 6px rgba(0, 0, 0, 0.2);
	transition: all 0.3s ease;
}

button:hover {
	background: linear-gradient(135deg, #ff9800, #f57c00);
	transform: translateY(-2px);
}

a {
	display: block;
	margin-top: 15px;
	color: #00796b;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
	color: #ff9800;
}

.success {
  color: white;
  font-size: 16px;
  margin-bottom: 15px;  /* spacing before form */
}

.error {
  color: red;
  font-size: 16px;
  margin-bottom: 12px;
  font-weight: bold;
}

@keyframes fadeIn {
	from { opacity: 0; transform: scale(0.95); }
	to { opacity: 1; transform: scale(1); }
}
</style>
</head>
<body>
	<%
	    String successMsg = (String) request.getAttribute("success");
	    String errorMsg = (String) request.getAttribute("error");

	    if (successMsg != null) {
	%>
	    <h1 class="success"><%= successMsg %></h1>
	<%
	    }
	    if (errorMsg != null) {
	%>
	    <h1 class="error"><%= errorMsg %></h1>
	<%
	    }
	%>

	<form action="login" method="post">
		<h2>Employee Login</h2>
		
		<label for="name">Employee Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter your name" required>
		
		<label for="phone">Phone No:</label>
		<input type="text" id="phone" name="phone" placeholder="Enter 10-digit number" pattern="[0-9]{10}" required>
		
		<button type="submit">Login</button>
		<a href="register.jsp">New Employee? Register Here</a>
	</form>
</body>
</html>
