/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;
import java.io.*;
import business.User;

/**
 *
 * @author SHALEEN
 */
public class UserIO {
  
  public static void add(User user, String filePath) throws IOException {
        try (PrintWriter writer = new PrintWriter(new BufferedWriter(new FileWriter(filePath, true)))) {
            writer.println(user.getRegistrationNumber() + "," + user.getCategory() + "," +
                           user.getSubcategory() + "," + user.getEmail() + "," + user.getInquiry());
        }
    }
}


