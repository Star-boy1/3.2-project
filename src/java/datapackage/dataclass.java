package datapackage;

import java.util.HashMap;
import java.util.Map;

public class dataclass {
    
    // Simulated database storing user credentials (email, password)
    private static final Map<String, String> userDatabase = new HashMap<>();
    
    // Initialize database with dummy user data (for demonstration purposes)
    static {
        userDatabase.put("user1@example.com", "password1");
        userDatabase.put("user2@example.com", "password2");
        // Add more users as needed
    }
    
    // Method to authenticate user based on email and password
    public boolean authenticateUser(String email, String password) {
        // Retrieve password associated with the given email
        String storedPassword = userDatabase.get(email);
        
        // Check if the email exists and the provided password matches the stored password
        return storedPassword != null && storedPassword.equals(password);
    }
}