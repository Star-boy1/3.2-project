/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

/**
 * @author NIK
 */

import java.io.*;

public class userIO {
    private static String filePath = "C:/Users/jackie/Desktop/FinanceData/Inquiries.txt";

    // Method to add a new user to the file
    public static void addUser(String userData) throws IOException {
        try (PrintWriter out = new PrintWriter(new FileWriter(filePath, true))) {
            out.println(userData);
        }
    }

    // Method to check if a given staff ID exists in the file
    public static boolean isStaffIDExists(String staffID) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] userData = line.split(",");
                if (userData.length > 0 && userData[0].equals(staffID)) {
                    return true;
                }
            }
        }
        return false;
    }

    // Method to retrieve user data based on staff ID
    public static String getUserData(String staffID) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] userData = line.split(",");
                if (userData.length > 0 && userData[0].equals(staffID)) {
                    return line;
                }
            }
        }
        return null;
    }
}
