<%-- 
    Document   : studentlogin
    Created on : Mar 24, 2024, 12:57:29 PM
    Author     : ANTOH
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Log in form</title>
  <link rel="stylesheet" href="logincss.css">
</head>
<body>

  <div class="form">
    <form action="homepage.html" method="post" onsubmit="return validateForm()">
        <h2>To log in, provide your email and password below:</h2>
        <br>
      <label for="email">Enter your email address:</label>
      <input type="email" id="email" name="email" placeholder="Sample: tonnyj@gmail.com" required>
      <div id="email-error" class="error"></div> <!-- Display email error message here -->
      <br>
      <br>
      <label for="password">Enter your password:</label>
      <input type="password" id="password" name="password" placeholder="Your password" required>
      <div id="password-error" class="error"></div> <!-- Display password error message here -->
      <br> 
      <div class="forget_password"> 
<a href="password.html">Forgot Password?</a>
      </div> 

      <br>
      <br>
      <input type="submit" value="LOG IN">
        <h2>
    You are new here?<br>
    Click the sign up button below to register.
  </h2>
 <button class="signup-button" onclick="redirectToPage()">  SIGN UP</button> 
    </form>
  </div>
  
  <br>
  <br>
  
  
  <script>
    function validateForm() {
      var email = document.getElementById("email").value;
      var password = document.getElementById("password").value;
      var emailError = document.getElementById("email-error");
      var passwordError = document.getElementById("password-error");
      var isValid = true;

     
      if (email !== "ambasaantony@gmail.com") {
        emailError.innerHTML = "Invalid email address";
        isValid = false;
      } else {
        emailError.innerHTML = "";
      }

      if (password !== "password123") {
        passwordError.innerHTML = "Incorrect password";
        isValid = false;
      } else {
        passwordError.innerHTML = "";
      }

      return isValid; // Allow form submission only if all validations pass
  }
      
     
    function redirectToPage(){
        // Redirect to the sign-up page
        window.location.href = 'signup page.html'; // Adjust the URL as per your file structure
    }

    
  </script>
</body>
</html>
