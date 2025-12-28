package com.company.model;

public class User {
    private String username;
    private String email;
    private String password;

    // Getter and Setter for username
    public String getUsername() {
        return username;   // ✅ return variable, not method
    }
    public void setUsername(String username) {
        this.username = username;
    }

    // Getter and Setter for password
    public String getPassword() {
        return password;   // ✅ return variable
    }
    public void setPassword(String password) {
        this.password = password;
    }

    // Getter and Setter for email
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}
