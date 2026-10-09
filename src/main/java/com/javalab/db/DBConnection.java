/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Database Connectivity Layer
 * Description: Centralized JDBC connection factory for MySQL database with auto-detection for cloud environments (Railway, Render, AWS, local).
 */
package com.javalab.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static String getDbUrl() {
        String env = System.getenv("DB_URL");
        if (env != null && !env.trim().isEmpty()) {
            return env;
        }
        String host = System.getenv("MYSQLHOST");
        if (host != null && !host.trim().isEmpty()) {
            String port = System.getenv("MYSQLPORT") != null ? System.getenv("MYSQLPORT") : "3306";
            String db = System.getenv("MYSQLDATABASE") != null ? System.getenv("MYSQLDATABASE") : "railway";
            return "jdbc:mysql://" + host + ":" + port + "/" + db + "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        }
        return "jdbc:mysql://localhost:3306/javalabdb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    }

    private static String getDbUser() {
        String user = System.getenv("DB_USER");
        if (user != null && !user.trim().isEmpty()) return user;
        String myUser = System.getenv("MYSQLUSER");
        if (myUser != null && !myUser.trim().isEmpty()) return myUser;
        return "root";
    }

    private static String getDbPassword() {
        String pass = System.getenv("DB_PASSWORD");
        if (pass != null && !pass.trim().isEmpty()) return pass;
        String myPass = System.getenv("MYSQLPASSWORD");
        if (myPass != null && !myPass.trim().isEmpty()) return myPass;
        return "#MySQL4#";
    }

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found on classpath.", e);
        }
        return DriverManager.getConnection(getDbUrl(), getDbUser(), getDbPassword());
    }

    public static boolean isConnected() {
        try (Connection conn = getConnection()) {
            return conn != null && !conn.isClosed();
        } catch (SQLException e) {
            return false;
        }
    }
}
