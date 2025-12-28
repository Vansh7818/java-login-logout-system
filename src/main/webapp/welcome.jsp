<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="welcomestyle.css">
</head>
<body>
<%
   HttpSession session1 = request.getSession(false);
   if (session1 != null && session1.getAttribute("username") != null) {
       String username = (String) session1.getAttribute("username");
%>
 <div class="container">
   <h1>Welcome, <%= username %> 🎉</h1>
   <p class="intro">We're delighted to have you on our platform.</p>
   <h3>🌟 Explore, learn, and connect with our vibrant colleagues.</h3>
   <p class="logout-text">
     Feel free to stay as long as you like, and when you're ready,<br>
     you can <a href="logout.jsp" class="btn">LOGOUT</a> securely.
   </p>
 </div>
<%
   } else {
       response.sendRedirect("login.jsp");
       return; // ✅ stop execution after redirect
   }
%>
</body>
</html>

