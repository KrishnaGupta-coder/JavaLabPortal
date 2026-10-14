/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Online Feedback System - DAO
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.db.DBMigrator;
import com.javalab.model.Feedback;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAO {

    public FeedbackDAO() {
        DBMigrator.ensureSchema();
    }

    public void addFeedback(Feedback feedback) throws SQLException {
        if (feedback == null) return;
        String sql = "INSERT INTO feedback (student_name, course, faculty_name, feedback_text, rating) VALUES (?, ?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, PortalHelper.cleanInput(feedback.getStudentName()));
            ps.setString(2, PortalHelper.cleanInput(feedback.getCourse()));
            ps.setString(3, PortalHelper.cleanInput(feedback.getFacultyName() != null ? feedback.getFacultyName() : "Er. Ram Babu Buri"));
            ps.setString(4, PortalHelper.cleanInput(feedback.getFeedbackText()));
            ps.setInt(5, feedback.getRating());
            ps.executeUpdate();
        }
    }

    public List<Feedback> getAllFeedback() throws SQLException {
        return searchFeedback(null, null, null);
    }

    public List<Feedback> searchFeedback(String facultyQuery, String courseQuery, Integer ratingFilter) throws SQLException {
        List<Feedback> list = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT id, student_name, course, faculty_name, feedback_text, rating, submitted_at FROM feedback WHERE 1=1 ");

        List<Object> params = new ArrayList<>();

        if (facultyQuery != null && !facultyQuery.trim().isEmpty()) {
            sql.append("AND LOWER(faculty_name) LIKE ? ");
            params.add("%" + facultyQuery.trim().toLowerCase() + "%");
        }

        if (courseQuery != null && !courseQuery.trim().isEmpty()) {
            sql.append("AND LOWER(course) LIKE ? ");
            params.add("%" + courseQuery.trim().toLowerCase() + "%");
        }

        if (ratingFilter != null && ratingFilter > 0) {
            sql.append("AND rating = ? ");
            params.add(ratingFilter);
        }

        sql.append("ORDER BY id DESC");

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql.toString())) {

            for (int i = 0; i < params.size(); i++) {
                ps.setObject(i + 1, params.get(i));
            }

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Feedback f = new Feedback(
                        rs.getInt("id"),
                        rs.getString("student_name"),
                        rs.getString("course"),
                        rs.getString("faculty_name"),
                        rs.getString("feedback_text"),
                        rs.getInt("rating")
                    );
                    Timestamp ts = rs.getTimestamp("submitted_at");
                    if (ts != null) {
                        f.setSubmittedAt(ts.toString());
                    }
                    list.add(f);
                }
            }
        }
        return list;
    }
}
