package Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet("/FormSubmissionServlet")
public class NewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
@Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieving parameters from the request
        String registrationNumber = request.getParameter("registrationNumber");
        String names = request.getParameter("names");
        String emailAddress = request.getParameter("emailAddress");
        String password = request.getParameter("password");

        // Specify the file path where you want to store the form inputs
        String filePath = "D:/Users/User/Documents/StudentDetails.txt";

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
            bufferedWriter.newLine(); // Add an extra newline for better readability

            // Close the BufferedWriter
            bufferedWriter.close();

            // Close the FileWriter
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Displaying the submitted information (forwarding to the JSP page)
        //request.setAttribute("registrationNumber", registrationNumber);
        //request.setAttribute("names", names);
        //request.setAttribute("emailAddress", emailAddress);
        //request.setAttribute("password", password);

       // request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
