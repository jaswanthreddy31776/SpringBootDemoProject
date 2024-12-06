<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
           /* styles.css */

/* General Body Styling */
body {
    background-color: #d5d8dc; /* Light blue background */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

/* Navbar Styling */
.navbar {
    background-color: #76d7c4; /* Dark blue background for the navbar */
    overflow: hidden; /* Ensure the container is cleared */
    border-bottom: 3px solid #cccccc; /* Light blue border under navbar */
    box-shadow: 0px 4px 8px rgba(0, 0, 255, 0.1); /* Subtle shadow effect */
}

.navbar a {
    float: left;
    display: block;
    color: #ffffff; /* White text color */
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 18px;
}

.navbar a:hover {
    background-color: #4682b4; /* Steel blue color on hover */
    color: #f0f8ff; /* Light blue text on hover */
}

/* Styling for the Heading */
h3 {
    color: #003366; /* Dark blue color for the heading */
    font-size: 24px;
    text-transform: uppercase; /* Uppercase styling for emphasis */
    margin-top: 20px;
}

/* Table Styling */
table {
    width: 90%;
    margin: 30px auto; /* Center the table */
    border-collapse: collapse; /* Remove default cell spacing */
    box-shadow: 0px 0px 15px rgba(0, 0, 255, 0.1); /* Subtle shadow for the table */
    background-color: #ffffff; /* White background for the table */
}

th, td {
    padding: 12px 15px;
    text-align: center;
    border: 1px solid #cccccc; /* Light border for cells */
    font-size: 16px;
}

th {
    background-color: #4682b4; /* Steel blue background for table headers */
    color: #ffffff; /* White text for headers */
}

tr:nth-child(even) {
    background-color: #f2f2f2; /* Light grey background for even rows */
}

tr:hover {
    background-color: #e6f7ff; /* Light blue background for hovered rows */
}

/* Cell Data Styling */
td {
    color: #003366; /* Dark blue color for cell data */
}

/* Responsive Design */
@media screen and (max-width: 768px) {
    table {
        width: 100%; /* Full width on smaller screens */
    }

    th, td {
        padding: 10px 5px;
        font-size: 14px; /* Slightly smaller font for mobile screens */
    }
}
           
    </style>
</head>
<body>
     <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Students</u></h3>
    <p>total no of students <c:out value="${count}"/></p>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DEPARTMENT</th>
            <th>YEAR</th>
            <th>SEMESTER</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${studentlist}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.department}"/></td>
                
                <td><c:out value="${student.year}"/></td>
                <td><c:out value="${student.semester}"/></td>
                
                
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
