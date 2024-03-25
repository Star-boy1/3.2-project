<%-- 
    Document   : submissionForm
    Created on : Mar 3, 2024, 10:41:41 AM
    Author     : SHALEEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Categories</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="inquiry.css">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        
        
           <nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top nav_bar">
  <div class="container-fluid nav_container">
     <a class="navbar-brand logo" href="#">
         <img src="images/egertonuniversity-logo_thumb.png" alt="Logo" width="80" height="60"  class="d-inline-block align-text-top">
         <span>ESFIMS</span>
     </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active link_name" aria-current="page" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link link_name" href="index.html">About Us</a>
          </li>
         
        </ul>
    
         <form class="d-flex search" role="search" action="./submissionForm.jsp" method="get">
        <input class="form-control me-2 search" type="search" placeholder="Search" aria-label="Search" >
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
  </div>
</nav>
        <div class="categories">
           
                
           
            
            <div class="container">
                <form id="inquiryForm" action="InquiryServlet" method="post" class="input" onsubmit="validateForm(event)">
                    <p>Enter </p>
                    
                    <div class="form-group">
        <label for="registrationNumber">RegistrationNumber:</label>
        <input type="text" class="form-control valid" id="registrationNumber" placeholder="Example S14/07864/21" name="registrationNumber" required>
    </div>

    <div class="form-group">
        <label for="category">Category:</label>
        <div class="custom-dropdown">
            <div class="dropdown-content">
                
                <select class="form-control" id="category" name="category" required>
                    <option value="">Select Category</option>
                    <option value="Tuitionfees">Tuition Fees</option>
                    <option value="Retakes">Retakes</option>
                    <option value="Helb">Helb</option>
                    <option value="Clearance">Clearance</option>
                </select>
                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill icon" id="subcategoryIcon" viewBox="0 0 16 16">
  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
</svg>            
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="subcategory">Subcategory:</label>
        <div class="custom-dropdown">
            <div class="dropdown-content">
                
                <select class="form-control" id="subcategory" name="subcategory" required>
                    <option value="">Select Subcategory</option>
                </select>
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill icon" id="subcategoryIcon" viewBox="0 0 16 16">
  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
</svg>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" placeholder="example@gmail.com" name="email" required>
    </div>
    
    <div class="form-group">
        <label for="inquiry">Inquiry:</label>
        <textarea class="form-control" id="inquiry" rows="4" placeholder="Enter your inquiry" name="inquiry" required></textarea>
    </div>
                    
                   <input type="submit" value="Submit" class=" info sub">
                </form>
            </div>
            </div>
                    
        <div class="direction">
            <h5>"Unlock Answers: Inquire Today!"</h5>
            <p>Fill the form</p>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle-fill arrow" viewBox="0 0 16 16">
  <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0M4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5z"/>
</svg>
            
        </div>
           


         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="./inquiry.js"></script>
            
   
    </body>
</html>
