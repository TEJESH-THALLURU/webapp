<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tejesh Home Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: #f9f9f9;
    font-family: Arial, sans-serif;
}
header {
    background: linear-gradient(90deg, #007bff, #00c6ff);
    color: white;
    padding: 20px;
    text-align: center;
}
.info-card {
    background: white;
    border-radius: 10px;
    padding: 20px;
    margin: 20px auto;
    max-width: 700px;
}
footer {
    margin-top: 30px;
    background: #222;
    color: white;
    padding: 15px;
    text-align: center;
}
</style>
</head>

<body>

<header>
<h1>🚀 Welcome to Tejesh Application</h1>
<h3>Java Web Application Running on Kubernetes</h3>
</header>

<div class="container">

<div class="info-card">
<h3>Server Information</h3>
<hr>
<%
InetAddress inetAddress = InetAddress.getLocalHost();
String ip = inetAddress.getHostAddress();
out.println("<p><b>Server Host Name:</b> " + inetAddress.getHostName() + "</p>");
out.println("<p><b>Server IP Address:</b> " + ip + "</p>");
%>
</div>

<div class="info-card">
<h3>Client Information</h3>
<hr>
<p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
</div>

<div class="info-card text-center">
<h4>Services</h4>

<a href="/services/employee/getEmployeeDetails"
class="btn btn-success">
Get Employee Details
</a>

</div>

</div>

<footer>
<p>© 2026 Tejesh</p>
</footer>

</body>
</html>
