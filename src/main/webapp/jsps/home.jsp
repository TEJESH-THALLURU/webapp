<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tejesh DevOps Application</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>

body {
    background: linear-gradient(to right, #eef2f3, #8ec5fc);
    font-family: Arial, sans-serif;
}

header {
    background: linear-gradient(90deg, #0d6efd, #00c6ff);
    color: white;
    padding: 25px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}

.info-card {
    background: white;
    border-radius: 12px;
    padding: 25px;
    margin: 20px auto;
    max-width: 750px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.15);
    transition: transform 0.2s;
}

.info-card:hover {
    transform: scale(1.02);
}

footer {
    margin-top: 40px;
    background: #212529;
    color: white;
    padding: 15px;
    text-align: center;
}

.badge-tech {
    margin: 5px;
    font-size: 14px;
}

</style>
</head>

<body>

<header>

<h1>
<i class="bi bi-cloud-check-fill"></i>
Welcome to Tejesh DevOps Application
</h1>

<h4>
Running on Kubernetes | Docker | AWS
</h4>

</header>

<div class="container">

<!-- Server Info -->

<div class="info-card">

<h3>
<i class="bi bi-server"></i>
Server Information
</h3>

<hr>

<%

InetAddress inetAddress = InetAddress.getLocalHost();
String ip = inetAddress.getHostAddress();

out.println("<p><b>Host Name:</b> " + inetAddress.getHostName() + "</p>");
out.println("<p><b>Server IP:</b> " + ip + "</p>");

%>

</div>

<!-- Client Info -->

<div class="info-card">

<h3>
<i class="bi bi-pc-display"></i>
Client Information
</h3>

<hr>

<p>
<b>Client IP Address:</b>
<%= request.getRemoteAddr() %>
</p>

</div>

<!-- DevOps Skills Section -->

<div class="info-card text-center">

<h3>
<i class="bi bi-tools"></i>
DevOps Stack
</h3>

<hr>

<span class="badge bg-primary badge-tech">Docker</span>
<span class="badge bg-success badge-tech">Kubernetes</span>
<span class="badge bg-warning badge-tech">AWS</span>
<span class="badge bg-info badge-tech">Terraform</span>
<span class="badge bg-dark badge-tech">Ansible</span>

</div>

<!-- API Button -->

<div class="info-card text-center">

<h4>
<i class="bi bi-gear-fill"></i>
Services
</h4>

<a href="/services/employee/getEmployeeDetails"
class="btn btn-success btn-lg">

<i class="bi bi-person-lines-fill"></i>
Get Employee Details

</a>

</div>

</div>

<footer>

<p>

<i class="bi bi-c-circle"></i>
2026 Tejesh — DevOps Kubernetes Demo

</p>

</footer>

</body>
</html>
