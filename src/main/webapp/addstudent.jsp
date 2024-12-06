<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style >



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
    background-color:#76d7c4; /* Dark blue background for the navbar */
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

/* Styling for Ordered List */
ol {
    width: 50%;
    margin: 30px auto; /* Center the list */
    background-color:
    }
    
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
<body>


<%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Add Student</u></h3>
    <div class="form-container">
        <form method="post" action=insertstudent>
            <table>
            	<tr>
            	 <td><label for="sid">Enter Id</label></td>
                    <td><input type="number" id="sid" name="sid" required/></td>
            	</tr>
               <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="SALES">Sales</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                <td><label for="syear">Year</label></td>
                <td><input type="number" id="syear" name="syear" required/></td>
                </tr>
                
                <tr>
                <td><label for="ssemester">Semester</label></td>
                <td><input type="text" id="ssemester" name="ssemester" required/></td>
                </tr>
                
                
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                 
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td>
                </tr>
                
                <tr>
				<td colspan="2" class="button-container">
				<input type="submit" value="Add"/>
				<input type="reset" value="Clear"/>
				</td>
				</tr>
                
            </table>
        </form>
    </div>

</body>
</html>