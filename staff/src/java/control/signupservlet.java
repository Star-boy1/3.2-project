package control;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import user.userclass;
public class signupservlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        //get form data
        String StaffID = request.getParameter("StaffID");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        //compare created and saved password
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("index.html?error=passwordMismatch");
        } else {
        

        //path to store singup data
        String filePath = "C:/Users/jackie/Desktop/FinanceData/Inquiries.txt";
        
        userclass user = new userclass(StaffID, name, email, mobileNumber, password);
        
        try {
            //open file for writing/appending
            FileWriter fileWriter = new FileWriter (filePath,true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            
            //write form data to file
            bufferedWriter.write(StaffID + "," +name + "," + email + "," + mobileNumber + "," + password);
            //add new line for next entry
            bufferedWriter.newLine();
            //close file
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            response.sendRedirect("error.html");
        }
        response.sendRedirect("login.html");
        }
    }
}
