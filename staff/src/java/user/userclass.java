/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

/**
 *
 * @author NIK
 */
public class userclass {
    private String StaffID;
    private String name;
    private String email;
    private String mobileNumber;
    private String password;
    
     // Constructor, getters, and setters
    public userclass (String StaffID, String name, String mobileNumber, String email, String password) {
        this.StaffID = StaffID;
        this.name = name;
        this.mobileNumber = mobileNumber;
        this.email = email;
        this.password = password;
    }
     // Getters and setters
    public String getStaffID() {
        return StaffID;
    }
    
    public void setStaffID(String StaffID) {
        this.StaffID = StaffID;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
