<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>

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
    width:350px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#333;
    margin-bottom:25px;
}

label{
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
    background:#ff9800;
    color:white;
    border:none;
    border-radius:5px;
    font-size:17px;
    cursor:pointer;
    transition:0.3s;
}

input[type="submit"]:hover{
    background:#e68900;
}

.back-link{
    display:block;
    margin-top:20px;
    text-align:center;
    text-decoration:none;
    color:#007BFF;
}

.back-link:hover{
    text-decoration:underline;
}
</style>

</head>
<body>

<div class="container">

    <h2>Forget Password</h2>

    <form action="forgetpassword" method="post">

        <label>Username</label>
        <input type="text" name="username" required>

        <label>New Password</label>
        <input type="password" name="newpass" required>

        <input type="submit" value="Update Password">

    </form>

    <a href="login.jsp" class="back-link">← Back to Login</a>

</div>

</body>
</html>
