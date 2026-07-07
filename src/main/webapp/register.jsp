<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#f4f4f4;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    background:white;
    width:350px;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

h1{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

label,a{
    display:block;
    margin-top:15px;
    margin-bottom:5px;
    font-weight:bold;
}

input[type="text"],
input[type="password"]{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:16px;
}

input[type="submit"]{
    width:100%;
    margin-top:20px;
    padding:10px;
    background:#28a745;
    color:white;
    border:none;
    border-radius:5px;
    font-size:17px;
    cursor:pointer;
    transition:0.3s;
}

input[type="submit"]:hover{
    background:#218838;
}
</style>

</head>
<body>

<div class="container">

<h1>Registration</h1>

<form action="register" method="post">

    <label>UserName</label>
    <input type="text" name="username" required>

    <label>Password</label>
    <input type="password" name="password" required>

    <input type="submit" value="Register">
    
    <a href="login.jsp">Already registered?</a>

</form>

</div>

</body>
</html>