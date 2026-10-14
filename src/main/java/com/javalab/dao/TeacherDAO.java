/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Authentication & Access Control
 * Description: Teacher account authentication and database operations.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.Teacher;
import com.javalab.util.PortalHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TeacherDAO {

    private static final String SQL_FIND_TEACHER = 
            "SELECT id, username, password, name FROM teacher WHERE username = ?";

    public Teacher findByUsername(String username) throws SQLException {
        if (username == null || username.trim().isEmpty()) {
            return null;
        }

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();

            // Auto-synchronize default teacher record to Er. Ram Babu Buri
            if ("teacher".equalsIgnoreCase(username.trim())) {
                try (PreparedStatement updatePs = con.prepareStatement(
                        "UPDATE teacher SET name = 'Ram Babu Buri' WHERE username = 'teacher' AND name != 'Ram Babu Buri'")) {
                    updatePs.executeUpdate();
                } catch (Exception ignored) {
                }
            }

            ps = con.prepareStatement(SQL_FIND_TEACHER);
            ps.setString(1, username.trim());
            rs = ps.executeQuery();

            if (rs.next()) {
                String teacherName = rs.getString("name");
                if ("teacher".equalsIgnoreCase(username.trim()) && 
                    (teacherName == null || teacherName.isEmpty() || "Krishna Gupta".equalsIgnoreCase(teacherName))) {
                    teacherName = "Ram Babu Buri";
                }

                return new Teacher(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        teacherName
                );
            }
        } finally {
            PortalHelper.safeClose(rs, ps, con);
        }
        return null;
    }
}
