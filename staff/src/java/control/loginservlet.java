/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;



/**
 *
 * @author NIK
 */

public class loginservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //get form data
        String StaffID = request.getParameter("StaffID");
        String password = request.getParameter("password");
        
        //path to signup data txt file
        String filePath = "C:/Users/jackie/Desktop/FinanceData/Inquiries.txt";
        
        //read txt file data
        boolean valid = false;
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            //read txt file line by line
            while ((line = reader.readLine ()) != null){
                String[] userData = line.split(",");
                if (userData[0].equals(StaffID) && userData[4].equals(password)){
                    valid=true;
                    break;
                }
            }
        } catch (IOException e) {
        }
        //redirect to relevant page upon successful login or failure
        if (valid) {
            response.sendRedirect("testwelcome.jsp");
        } else {
            response.sendRedirect("login.html?Invalid Credentials");
        }
    }

}

