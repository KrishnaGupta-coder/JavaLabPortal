/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Database Migration & Schema Synchronizer
 */
package com.javalab.db;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBMigrator {

    private static volatile boolean migrated = false;

    public static synchronized void ensureSchema() {
        if (migrated) return;

        try (Connection con = DBConnection.getConnection();
             Statement st = con.createStatement()) {

            DatabaseMetaData meta = con.getMetaData();

            // 1. Ensure employee table exists
            st.executeUpdate(
                "CREATE TABLE IF NOT EXISTS employee (" +
                "  empid VARCHAR(50) PRIMARY KEY," +
                "  empname VARCHAR(100) NOT NULL," +
                "  empno VARCHAR(50) NOT NULL" +
                ")"
            );

            // Seed initial employees if empty
            try (ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM employee")) {
                if (rs.next() && rs.getInt(1) == 0) {
                    st.executeUpdate(
                        "INSERT INTO employee (empid, empname, empno) VALUES " +
                        "('EMP001', 'Er. Ram Babu Buri', '9876543210'), " +
                        "('EMP002', 'Krishna Gupta', '8955915536')"
                    );
                }
            }

            // 2. Ensure faculty_name in feedback table
            boolean hasFacultyName = false;
            try (ResultSet cols = meta.getColumns(null, null, "feedback", "faculty_name")) {
                if (cols.next()) {
                    hasFacultyName = true;
                }
            }
            if (!hasFacultyName) {
                try {
                    st.executeUpdate("ALTER TABLE feedback ADD COLUMN faculty_name VARCHAR(100) AFTER course");
                } catch (Exception ignored) {}
            }

            // 3. Ensure password and email in student table
            boolean hasPassword = false;
            try (ResultSet cols = meta.getColumns(null, null, "student", "password")) {
                if (cols.next()) {
                    hasPassword = true;
                }
            }
            if (!hasPassword) {
                try {
                    st.executeUpdate("ALTER TABLE student ADD COLUMN password VARCHAR(100) DEFAULT NULL");
                    st.executeUpdate("ALTER TABLE student ADD COLUMN email VARCHAR(100) DEFAULT NULL");
                    st.executeUpdate("UPDATE student SET password = roll_number WHERE password IS NULL");
                } catch (Exception ignored) {}
            }

            // 4. Update experiment 5 live url in experiment table
            try {
                st.executeUpdate(
                    "UPDATE experiment SET " +
                    "title = 'Employee Registration Desk (JDBC CRUD)', " +
                    "description = 'Employee registration desk with full MySQL CRUD operations matching Swing desktop GUI.', " +
                    "live_url = 'exp5.jsp' " +
                    "WHERE order_no = 5"
                );
            } catch (Exception ignored) {}

            // 5. Ensure teacher name is Ram Babu Buri
            try {
                st.executeUpdate(
                    "UPDATE teacher SET name = 'Ram Babu Buri' WHERE username = 'teacher' AND name != 'Ram Babu Buri'"
                );
            } catch (Exception ignored) {}

            migrated = true;

        } catch (Exception e) {
            System.err.println("[DBMigrator] Warning: " + e.getMessage());
        }
    }
}
