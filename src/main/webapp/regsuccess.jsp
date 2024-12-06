<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>student Added successfully</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    text-align: center;
    margin-top: 50px;
}

a {
    display: inline-block;
    margin: 10px;
    padding: 10px 20px;
    background-color: #007BFF;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

a:hover {
    background-color: #0056b3;
}

c\:out {
    font-size: 1.2em;
    font-weight: bold;
    color: #28a745;
}

h1 {
    font-size: 2em;
    margin-bottom: 20px;
}


</style>



</head>
<body>

<c:out value="${message}"/>
<br>

<a href="/">Home</a>
<a href="viewallstudents">view all students</a>
</body>

</html>