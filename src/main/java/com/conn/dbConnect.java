package com.conn;

import java.sql.Connection;

public class dbConnect {
    private static Connection conn;
    private static String url = "jdbc:postgresql://localhost:5432/crud";
    public static Connection getConn() {
        try {
            Class.forName("org.postgresql.Driver");
            conn = java.sql.DriverManager.getConnection(url, "IuseArch", "btw");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
