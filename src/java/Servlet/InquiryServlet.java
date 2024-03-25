/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;


import business.User;
import data.UserIO;
/**
 *
 * @author SHALEEN
 */
public class InquiryServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String registrationNumber=request.getParameter("registrationNumber");
        String category=request.getParameter("category");
        String subcategory=request.getParameter("subcategory");
        String email=request.getParameter("email");
        String inquiry=request.getParameter("inquiry");
        
        
        User user=new User(registrationNumber, category, subcategory,email,inquiry);
        
        
        
         String path = "C:\\Users\\SHALEEN\\Desktop\\Category\\Category.txt";
       
        request.setAttribute("user", user);
        try {
            UserIO.add(user, path);
        } catch (IOException e) {
            // Handle IOException appropriately
            e.printStackTrace();
            // You might want to display an error message or redirect the user to an error page
            // For now, let's just rethrow the exception
            throw new ServletException("Error occurred while adding user to file", e);
        }
        
        
        
        
        String url="/inquiry.jsp";
        
        RequestDispatcher dispatcher=getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
        
    }
}
        
    