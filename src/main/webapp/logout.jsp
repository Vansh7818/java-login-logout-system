<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession session1 = request.getSession(false); 
    if (session1 != null) {
        session1.invalidate(); // ✅ End session
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
<link rel="stylesheet" type="text/css" href="logoutstyle.css">
</head>
<body>
  <div class="container">
    <h1>You have been logged out</h1>
    <p>Thank you for visiting our platform. We hope to see you again soon!</p>
    <a href="login.jsp" class="btn">Go to Login</a>
    <a href="index.html" class="btn">Back to Home</a>
  </div>
</body>
</html>
