/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Student & Class Management
 * Description: Student CRUD operations and authentication by roll number.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.Student;
import com.javalab.util.PortalHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    private static final String BASE_STUDENT_QUERY =
            "SELECT s.id, s.name, s.roll_number, s.class_id, c.class_name " +
            "FROM student s LEFT JOIN class_section c ON s.class_id = c.id ";

    public void addStudent(Student student) throws SQLException {
        if (student == null) return;
        String sql = "INSERT INTO student (name, roll_number, class_id) VALUES (?, ?, ?)";
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(student.getName()));
            ps.setString(2, student.getRollNumber().trim().toUpperCase());
            ps.setInt(3, student.getClassId());
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public void updateStudent(Student student) throws SQLException {
        if (student == null) return;
        String sql = "UPDATE student SET name = ?, roll_number = ?, class_id = ? WHERE id = ?";
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(student.getName()));
            ps.setString(2, student.getRollNumber().trim().toUpperCase());
            ps.setInt(3, student.getClassId());
            ps.setInt(4, student.getId());
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public void deleteStudent(int id) throws SQLException {
        String sql = "DELETE FROM student WHERE id = ?";
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

    public Student getStudentById(int id) throws SQLException {
        String sql = BASE_STUDENT_QUERY + "WHERE s.id = ?";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return extractStudentRecord(rs);
            }
        } finally {
            PortalHelper.safeClose(rs, ps, con);
        }
        return null;
    }

    public Student getStudentByName(String name) throws SQLException {
        if (name == null) return null;
        String sql = BASE_STUDENT_QUERY + "WHERE LOWER(TRIM(s.name)) = LOWER(TRIM(?)) LIMIT 1";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, name.trim());
            rs = ps.executeQuery();
            if (rs.next()) {
                return extractStudentRecord(rs);
            }
        } finally {
            PortalHelper.safeClose(rs, ps, con);
        }
        return null;
    }

    public Student getStudentByRollNumber(String rollNumber) throws SQLException {
        if (rollNumber == null) return null;
        String sql = BASE_STUDENT_QUERY + "WHERE s.roll_number = ?";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, rollNumber.trim().toUpperCase());
            rs = ps.executeQuery();
            if (rs.next()) {
                return extractStudentRecord(rs);
            }
        } finally {
            PortalHelper.safeClose(rs, ps, con);
        }
        return null;
    }

    public List<Student> getAllStudents() throws SQLException {
        List<Student> records = new ArrayList<>();
        String sql = BASE_STUDENT_QUERY + "ORDER BY s.id DESC";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                records.add(extractStudentRecord(rs));
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return records;
    }

    public List<Student> searchStudents(String query) throws SQLException {
        List<Student> matches = new ArrayList<>();
        String sql = BASE_STUDENT_QUERY +
                "WHERE s.name LIKE ? OR s.roll_number LIKE ? OR c.class_name LIKE ? ORDER BY s.id DESC";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            String searchPattern = "%" + (query != null ? query.trim() : "") + "%";
            ps.setString(1, searchPattern);
            ps.setString(2, searchPattern);
            ps.setString(3, searchPattern);
            rs = ps.executeQuery();
            while (rs.next()) {
                matches.add(extractStudentRecord(rs));
            }
        } finally {
            PortalHelper.safeClose(rs, ps, con);
        }
        return matches;
    }

    private Student extractStudentRecord(ResultSet rs) throws SQLException {
        return new Student(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("roll_number"),
                rs.getInt("class_id"),
                rs.getString("class_name")
        );
    }
}

