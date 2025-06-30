package com.example.servelet_chuan.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public Connection openConnect() {
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbUrl = "jdbc:mysql://localhost:3306/sieuthicode?useSSL=false&serverTimezone=UTC";
        String dbUserName = "root";
        String dbPassword = "1234";
        try {
            Class.forName(dbDriver);
            return DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        } catch (Exception e) {
            System.out.println("❌ Kết nối thất bại: " + e.getMessage());
            return null;
        }
    }
}
