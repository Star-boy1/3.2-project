<%-- 
    Document   : testwelcome
    Created on : Mar 11, 2024, 2:51:38 PM
    Author     : NIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <h1>Hello <%= session.getAttribute("name") %></h1>
        <p>This page should lead the staff to their profile or platform to access the inquiries</p>
        <form action='login.html'>
            <p>To logout<br>Click here <input type='submit' value='Logout'> </p>
        </form>
    </body>
</html>
