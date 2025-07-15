<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>
<style>
    body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212; /* Dark background color */
            color: #fff; /* Text color */
            font-size: 16px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

    .center {
        border:1px solid rgb(0, 0, 0);
        position:absolute;
        width:35%;
        top:28%;
        left:36%;
        text-align: center;

    }
</style>
</head>
<body>
    <div class="center">
<h1>Update Student</h1>
        <p>${message}</p>
        <form action="saveUpdatedStudent" method="post">
            <label for="updateRollNo">Roll Number:</label>
            <input type="text" id="updateRollNo" name="rollNo" value="${student.rollNo}" required readonly><br><br>
            <label for="updateName">Name:</label>
            <input type="text" id="updateName" name="name" value="${student.studentName}" required><br><br>
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>