/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Online Feedback System
 * Description: Data access object for student course feedback submissions.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.Feedback;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {

    public void addFeedback(Feedback feedback) throws SQLException {
        if (feedback == null) return;
        String sql = "INSERT INTO feedback (student_name, course, feedback_text, rating) VALUES (?, ?, ?, ?)";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(feedback.getStudentName()));
            ps.setString(2, PortalHelper.cleanInput(feedback.getCourse()));
            ps.setString(3, PortalHelper.cleanInput(feedback.getFeedbackText()));
            ps.setInt(4, feedback.getRating());
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public List<Feedback> getAllFeedback() throws SQLException {
        List<Feedback> list = new ArrayList<>();
        String sql = "SELECT id, student_name, course, feedback_text, rating FROM feedback ORDER BY id DESC";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                list.add(new Feedback(
                        rs.getInt("id"),
                        rs.getString("student_name"),
                        rs.getString("course"),
                        rs.getString("feedback_text"),
                        rs.getInt("rating")
                ));
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return list;
    }
}

