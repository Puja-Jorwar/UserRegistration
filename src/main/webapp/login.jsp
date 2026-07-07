<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	background: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	width: 350px;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
	margin-bottom: 25px;
	color: #333;
}

label {
	display: block;
	margin-top: 15px;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

input[type="submit"] {
	width: 100%;
	margin-top: 20px;
	padding: 10px;
	background: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 17px;
	cursor: pointer;
	transition: 0.3s;
}

input[type="submit"]:hover {
	background: #0056b3;
}

.links {
	margin-top: 20px;
	text-align: center;
}

.links a {
	text-decoration: none;
	color: #007BFF;
	display: block;
	margin: 8px 0;
}

.links a:hover {
	text-decoration: underline;
}

#message {
	margin-top: 15px;
	text-align: center;
	color: green;
}
</style>

</head>
<body>

	<div class="container">

		<h1>Login</h1>

		<form action="login" method="post">

			<label>Username</label> <input type="text" name="username" required>

			<label>Password</label> <input type="password" name="password"
				required> <input type="submit" value="Login">

		</form>

		<div class="links">
			<a href="ForgetPassword.jsp">Forgot Password?</a> <a
				href="register.jsp">New User? Register Here</a>
		</div>

		<%
		HttpSession session2 = request.getSession();
		String msg = (String) session2.getAttribute("msg");

		if (msg != null) {
		%>

		<h3 id="message"><%=msg%></h3>

		<%
		session2.removeAttribute("msg");
		}
		%>

	</div>

	<script>
		setTimeout(function() {
			let msg = document.getElementById("message");
			if (msg) {
				msg.style.display = "none";
			}
		}, 2000);
	</script>

</body>
</html>
