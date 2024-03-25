function validateForm(event) {
  event.preventDefault(); // Prevent form submission
  
  // Get form values
  var registrationNumber = document.getElementById("registrationNumber").value;
  var firstname = document.getElementById("firstname").value;
  var lastname = document.getElementById("lastname").value;
  var emailAddress = document.getElementById("emailAddress").value;
  var password = document.getElementById("password").value;
  
  // Validation rules
  var registrationNumberRegex = /^[A-Z]\d{2}\/\d{5}\/\d{2}$/;
  var nameRegex = /^[a-zA-Z\s]{1,20}$/;
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  var passwordLength = password.length >= 6;
  
  // Perform validation
  if (!registrationNumberRegex.test(registrationNumber)) {
    alert("Please enter a valid registration number (e.g., A13/9355/22)");
    return false;
  }
  
  if (!nameRegex.test(firstname)) {
    alert("Please enter a valid first name (up to 20 characters)");
    return false;
  }
  
  if (!nameRegex.test(lastname)) {
    alert("Please enter a valid last name (up to 20 characters)");
    return false;
  }
  
  if (!emailRegex.test(emailAddress)) {
    alert("Please enter a valid email address");
    return false;
  }
  
  if (!passwordLength) {
    alert("Please enter a password with at least 6 characters");
    return false;
  }
  
  // If all validations pass, submit the form
  document.getElementById("inquiryForm").submit();
}