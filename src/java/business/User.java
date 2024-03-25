/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package business;

/**
 *
 * @author SHALEEN
 */
public class User {
    private String registrationNumber;
    private String subcategory;
    private String category;
    private String email;
    private String inquiry;

    
   

    public User(String registrationNumber, String subcategory,String category, String email,String inquiry) {
        this.registrationNumber = registrationNumber;
        this.subcategory = subcategory;
        this.category = category;
        this.email=email;
        this.inquiry = inquiry;
    }


    
      public String getRegistrationNumber() {
        return registrationNumber;
    }
    

     public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }
     
    public String getSubcategory() {
        return subcategory;
    }

   public void setSubcategory(String subcategory) {
        this.subcategory = subcategory;
    }
   
    
    public String getCategory() {
        return category;
    }
      
      public void setCategory(String category) {
        this.category = category;
    }

   
       public String getEmail(){
        return email;
    }

    public void setEmail(String email){
        
        this.email=email;
    }
    
   

     public String getInquiry() {
        return inquiry;
    }

  public void setInquiry(String inquiry) {
        this.inquiry= inquiry;
    }

   
    
}


