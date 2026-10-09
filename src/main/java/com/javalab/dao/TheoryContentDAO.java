/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Theory Content
 * Description: Data access object for lecture notes and study material.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.TheoryContent;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TheoryContentDAO {

    public void addContent(TheoryContent content) throws SQLException {
        if (content == null) return;
        String sql = "INSERT INTO theory_content (title, content) VALUES (?, ?)";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(content.getTitle()));
            ps.setString(2, content.getContent());
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public void deleteContent(int id) throws SQLException {
        String sql = "DELETE FROM theory_content WHERE id = ?";
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

    public List<TheoryContent> getAllContent() throws SQLException {
        List<TheoryContent> list = new ArrayList<>();
        String sql = "SELECT id, title, content, created_at FROM theory_content ORDER BY id DESC";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                list.add(new TheoryContent(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getString("created_at")
                ));
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return list;
    }
}

