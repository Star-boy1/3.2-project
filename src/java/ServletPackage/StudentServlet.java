/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;

/**
 *
 * @author User
 */
public class StudentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieving parameters from the request
        String registrationNumber = request.getParameter("registrationNumber");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String emailAddress = request.getParameter("emailAddress");
        String password = request.getParameter("password");

        // Specify the file path where you want to store the form inputs
        String filePath = "C:/User/User/Documents/StudentDetails.txt";
        try {
            // Open a FileWriter in append mode
            FileWriter fileWriter = new FileWriter(filePath, true);

            // Create a BufferedWriter to write data efficiently
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

            // Validation
           
                // Write form inputs to the file
                bufferedWriter.write("Registration Number: " + registrationNumber);
                bufferedWriter.newLine();
                bufferedWriter.write("Firstname: " + firstname);
                 bufferedWriter.newLine();
                 bufferedWriter.write("Lastname: " + lastname);
                  bufferedWriter.newLine();
               
                bufferedWriter.write("Email Address: " + emailAddress);
                bufferedWriter.newLine();
                bufferedWriter.write("Password: " + password);
                bufferedWriter.newLine();
                bufferedWriter.newLine(); // Add an extra newline for better readability
            

            // Close the BufferedWriter
            bufferedWriter.close();

            // Close the FileWriter
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Displaying the submitted information (forwarding to the JSP page)
        // request.setAttribute("registrationNumber", registrationNumber);
        // request.setAttribute("names", names);
        // request.setAttribute("emailAddress", emailAddress);
        // request.setAttribute("password", password);

        // request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
