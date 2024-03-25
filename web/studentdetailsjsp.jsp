<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.BufferedWriter" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission Result</title>
    <style>
        body {
            background-color: #228B22;
            font-family: Arial, sans-serif;
            color: #000000;
            text-align: left;
        }

        .container {
            width: 300px;
            margin: 100px auto;
            background-color: #e9ede9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333333;
        }

        p {
            color: #000000;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Signup successful</h1>

        <%-- Retrieving parameters from the request --%>
        <%
            String registrationNumber = request.getParameter("registrationNumber");
            String names = request.getParameter("names");
            String emailAddress = request.getParameter("emailAddress");
            String password = request.getParameter("password");

            // Specify the file path where you want to store the form inputs
            String filePath = "C:/Users/User/Documents/StudentDetails.txt";

            try {
                // Open a FileWriter in append mode
                FileWriter fileWriter = new FileWriter(filePath, true);

                // Create a BufferedWriter to write data efficiently
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

                // Write form inputs to the file
                bufferedWriter.write("Registration Number: " + registrationNumber);
                bufferedWriter.newLine();
                bufferedWriter.write("Names: " + names);
                bufferedWriter.newLine();
                bufferedWriter.write("Email Address: " + emailAddress);
                bufferedWriter.newLine();
                bufferedWriter.write("Password: " + password);
                bufferedWriter.newLine();
                bufferedWriter.newLine();  // Add an extra newline for better readability

                // Close the BufferedWriter
                bufferedWriter.close();

                // Close the FileWriter
                fileWriter.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

       <%-- Displaying the submitted information --%>
       <%--<p>Registration Number: <%= registrationNumber %></p>--%>
        <%--<p>Names: <%= names %></p>--%>
        <%--<p>Email Address: <%= emailAddress %></p>--%>
        <%--<p>Password: <%= password %></p>--%>

        <%--<p>Thank you for submitting the form! Form inputs have been saved to the file.</p>--%>
    </div>

</body>

</html>
