/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiments Hub
 * Description: Data access object for built-in and custom experiments.
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.model.Experiment;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ExperimentDAO {

    public void addExperiment(Experiment experiment) throws SQLException {
        if (experiment == null) return;
        String sql = "INSERT INTO experiment (title, description, type, live_url, code_content, order_no) " +
                "VALUES (?, ?, 'CUSTOM', NULL, ?, ?)";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, PortalHelper.cleanInput(experiment.getTitle()));
            ps.setString(2, PortalHelper.cleanInput(experiment.getDescription()));
            ps.setString(3, experiment.getCodeContent());
            ps.setInt(4, experiment.getOrderNo());
            ps.executeUpdate();
        } finally {
            PortalHelper.safeClose(ps, con);
        }
    }

    public void deleteExperiment(int id) throws SQLException {
        String sql = "DELETE FROM experiment WHERE id = ? AND type = 'CUSTOM'";
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

    public List<Experiment> getAllExperiments() throws SQLException {
        List<Experiment> list = new ArrayList<>();
        String sql = "SELECT id, title, description, type, live_url, code_content, order_no FROM experiment ORDER BY order_no ASC, id ASC";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Experiment e = new Experiment();
                e.setId(rs.getInt("id"));
                e.setTitle(rs.getString("title"));
                e.setDescription(rs.getString("description"));
                e.setType(rs.getString("type"));
                e.setLiveUrl(rs.getString("live_url"));
                e.setCodeContent(rs.getString("code_content"));
                e.setOrderNo(rs.getInt("order_no"));
                list.add(e);
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return list;
    }

    public int getNextOrderNo() throws SQLException {
        String sql = "SELECT COALESCE(MAX(order_no), 0) + 1 AS next_order FROM experiment";
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                return rs.getInt("next_order");
            }
        } finally {
            PortalHelper.safeClose(rs, st, con);
        }
        return 1;
    }
}

