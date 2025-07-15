<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dark Theme JSP</title>
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

        .container {
            width: 80%;
            max-width: 800px; /* Increased max-width */
            background-color: #333; /* Darker container background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); /* Increased shadow */
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px; /* Gap between cards */
        }

        .card {
            flex-basis: calc(50% - 10px); /* Adjust card width */
            background-color: #444; /* Dark card background */
            border-radius: 8px;
            padding: 20px;
        }

        .card h1, .card h3 {
            font-weight: bold;
            text-align: center;
            color: #34d97e; /* Accent color for headings */
        }

        form {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #a8a8a8; /* Label color */
        }

        input[type="text"], input[type="submit"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #34d97e;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: #555; /* Dark input background */
            color: #fff; /* Input text color */
        }

        input[type="submit"] {
            background-color: #1b5b93;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #6d6fcb;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h3>Welcome, Dark Knight</h3>
            
            <h1>Add User</h1>
            <form action="addStudent">
                <label for="studentName">Name:</label>
                <input type="text" id="studentName" name="studentName">

                <label for="rollNo">Roll No:</label>
                <input type="text" id="rollNo" name="rollNo">

                <input type="submit" value="Add User">
            </form>
        </div>
        
        <div class="card">
            <h1>Delete</h1>
            <form action="deleteStudent">
                <label for="deleteRollNo">Roll No:</label>
                <input type="text" id="deleteRollNo" name="rollNo">

                <input type="submit" value="Delete">
            </form>
        </div>

        <div class="card">
            <h1>Update</h1>
            <form action="updateStudent">
                <label for="updateStudentName">Name:</label>
                <input type="text" id="updateStudentName" name="studentName">

                <label for="updateRollNo">Roll No:</label>
                <input type="text" id="updateRollNo" name="rollNo">

                <input type="submit" value="Update">
            </form>
        </div>

        <div class="card">
            <h1>View User</h1>
            <form action="viewStudent">
                <label for="viewRollNo">Roll No:</label>
                <input type="text" id="viewRollNo" name="rollNo">

                <input type="submit" value="View User">
            </form>
        </div>
    </div>
</body>
</html>
