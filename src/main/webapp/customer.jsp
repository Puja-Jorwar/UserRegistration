<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer</title>

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
	background: white;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	text-align: center;
	width: 300px;
}

h2 {
	margin-bottom: 30px;
	color: #333;
}

.btn {
	display: block;
	width: 100%;
	padding: 12px;
	margin: 15px 0;
	background: #007BFF;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	font-size: 18px;
	transition: 0.3s;
}

.btn:hover {
	background: #0056b3;
}
</style>

</head>

<body>

	<div class="container">

		<h2>Customer Page</h2>

		<a href="login.jsp" class="btn">Login</a> <a href="register.jsp"
			class="btn">Register</a>

	</div>

</body>
</html>