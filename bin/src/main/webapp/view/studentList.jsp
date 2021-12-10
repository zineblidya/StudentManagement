<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student Management</title>
    <style>
        table {
            width: 100%;
            border: 1px solid black;
            border-collapse: collapse;
            font-family: Arial;
        }

        td, th {
            border: 1px solid black;
            font-family: Arial;
            padding: 10px;
        }

        .button {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 10px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-family: Arial;
            margin: 6px 2px;
            cursor: pointer;
            border-radius: 10px;
            border: 2px solid #1c7430
        }

        .button:hover {
            background-color: #1e7e34;
        }

        .card {
            padding: 50px 100px;
        }

        h2 {
            text-align: center;
            font-family: Arial
        }
        #search {
            position: absolute;
            top: 160px;
            right: 120px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>List of Students</h2>
    <hr>
    <div>
        <a href="<%=request.getContextPath()%>/new" class="button">Add New Student</a>
    </div>
    <div  id="search"  class="search-container">
        <form action="search" method="post">
            <input type="text" placeholder="Entrez le nom d'un etudiant" name="SearchLastName">
            <button type="submit">chercher</button>
        </form>
    </div>
    <br>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Student ID</th>
            <th>School</th>
            <th>Study Option</th>
            <th>Registration Year</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${listStudent}">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.firstName}"/></td>
                <td><c:out value="${student.lastName}"/></td>
                <td><c:out value="${student.studentId}"/></td>
                <td><c:out value="${student.school}"/></td>
                <td><c:out value="${student.studyOption}"
                /></td>
                <td><c:out value="${student.registrationYear}"
                /></td>
                <td><a href="edit?id=<c:out
value='${student.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp; <a
                            href="delete?id=<c:out
value='${student.id}' />">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>