package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/user_auth";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "5713gb72";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
    	    System.out.println("Connection Build Ho raha Hai !!");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}

