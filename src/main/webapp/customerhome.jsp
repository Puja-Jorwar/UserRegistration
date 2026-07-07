<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>

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
    width:400px;
    background:white;
    padding:40px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
    text-align:center;
}

h2{
    color:#28a745;
    margin-bottom:20px;
}

h3{
    color:#555;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    padding:10px 20px;
    background:#007BFF;
    color:white;
    text-decoration:none;
    border-radius:5px;
    transition:0.3s;
}

.btn:hover{
    background:#0056b3;
}
</style>

</head>
<body>
<%
HttpSession session1 = request.getSession(false);

if(session1 == null || session1.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<div class="container">

    <h2>Login Successful! 🎉</h2>

    <h3>Welcome 
    <%=
    session.getAttribute("username")
    %></h3>

    <a href="login.jsp" class="btn">Logout</a>

</div>

</body>
</html>
<%}
%>
