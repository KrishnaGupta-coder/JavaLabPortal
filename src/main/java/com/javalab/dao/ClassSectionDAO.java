/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Student & Class Management
 * Description: Class section persistence and management.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.ClassSection;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClassSectionDAO {

    public void addClass(String className) throws SQLException {
        if (className == null || className.trim().isEmpty()) return;
        String sql = "INSERT INTO class_section (class_name) VALUES (?)";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(className));
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public void deleteClass(int id) throws SQLException {
        String sql = "DELETE FROM class_section WHERE id = ?";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public List<ClassSection> getAllClasses() throws SQLException {
        List<ClassSection> list = new ArrayList<>();
        String sql = "SELECT id, class_name FROM class_section ORDER BY class_name ASC";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                list.add(new ClassSection(rs.getInt("id"), rs.getString("class_name")));
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return list;
    }
}

