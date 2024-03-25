<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.util.regex.Pattern" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Finance Inquiry Management System</title>
    <style>
        body {
            background-color: #228B22;
            font-family: Arial, sans-serif;
            color: #000000;
        }

        .container {
            width: 300px;
            margin: 100px auto;
            background-color: #e9ede9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        h1 {
            text-align: center;
            color: #000000;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #000000;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            box-sizing: border-box;
        }

        button {
            background-color: #144810;
            color: #ffffff;
            padding: 10px 15px;
            border: 1px solid #144810;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0F3C0C;
            border: 1px solid #0F3C0C;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Student Finance Inquiry Management System</h1>
        <form action="studentdetailsjsp.jsp" method="post" onsubmit="return validateForm()">
            <label for="registrationNumber">Registration Number:</label>
            <input type="text" id="registrationNumber" placeholder="A13/9355/22" name="registrationNumber">

            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" placeholder="Davin" name="firstName">

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" placeholder="Mukoya" name="lastName">

            <label for="emailAddress">Email Address:</label>
            <input type="email" id="emailAddress" placeholder="musjjc@gmail.com" name="emailAddress">

            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="kdhwediwdo" name="password">

            <button type="submit">Submit</button>
        </form>
        <div id="errorMessages" class="error-message"></div>
    </div>

    <script>
        function validateForm() {
            var registrationNumber = document.getElementById("registrationNumber").value.trim();
            var firstName = document.getElementById("firstName").value.trim();
            var lastName = document.getElementById("lastName").value.trim();
            var emailAddress = document.getElementById("emailAddress").value.trim();
            var password = document.getElementById("password").value.trim();
            var errorMessages = "";

            // Check if any field is empty
            if (registrationNumber === "" || firstName === "" || lastName === "" || emailAddress === "" || password === "") {
                errorMessages += "Please fill in all the fields.<br>";
            }

            // Validate registration number format
            var regNumPattern = /^[A-Za-z0-9]{8}\/[A-Za-z0-9]{4}\/[0-9]{2}$/;
            if (!regNumPattern.test(registrationNumber)) {
                errorMessages += "Registration Number format is invalid.<br>";
            }

            // Validate first name format
            var firstNamePattern = /^[A-Za-z]{1,20}$/;
            if (!firstNamePattern.test(firstName)) {
                errorMessages += "First Name should contain only alphabets and be at most 20 characters long.<br>";
            }

            // Validate last name format
            var lastNamePattern = /^[A-Za-z]{1,20}$/;
            if (!lastNamePattern.test(lastName)) {
                errorMessages += "Last Name should contain only alphabets and be at most 20 characters long.<br>";
            }

            // Validate email address format
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(emailAddress)) {
                errorMessages += "Email Address format is invalid.<br>";
            }

            // Validate password length
            if (password.length < 6) {
                errorMessages += "Password should be at least 6 characters long.<br>";
            }

            if (errorMessages !== "") {
                document.getElementById("errorMessages").innerHTML = errorMessages;
                return false; // Prevent form submission
            } else {
                return true; // Allow form submission
            }
        }
    </script>

</body>

</html>
