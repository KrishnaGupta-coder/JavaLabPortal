/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiment 5 - Employee DAO
 */
package com.javalab.dao;

import com.javalab.db.DBConnection;
import com.javalab.db.DBMigrator;
import com.javalab.model.Employee;
import com.javalab.util.PortalHelper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    public EmployeeDAO() {
        DBMigrator.ensureSchema();
    }

    public boolean save(Employee emp) throws SQLException {
        if (emp == null || emp.getEmpid() == null || emp.getEmpid().trim().isEmpty()) {
            return false;
        }
        String sql = "INSERT INTO employee(empid, empname, empno) VALUES (?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, PortalHelper.cleanInput(emp.getEmpid()));
            ps.setString(2, PortalHelper.cleanInput(emp.getEmpname()));
            ps.setString(3, PortalHelper.cleanInput(emp.getEmpno()));
            return ps.executeUpdate() > 0;
        }
    }

    public Employee findById(String empid) throws SQLException {
        if (empid == null || empid.trim().isEmpty()) return null;
        String sql = "SELECT empid, empname, empno FROM employee WHERE empid = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, empid.trim());
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Employee(
                        rs.getString("empid"),
                        rs.getString("empname"),
                        rs.getString("empno")
                    );
                }
            }
        }
        return null;
    }

    public boolean update(Employee emp) throws SQLException {
        if (emp == null || emp.getEmpid() == null) return false;
        String sql = "UPDATE employee SET empname = ?, empno = ? WHERE empid = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, PortalHelper.cleanInput(emp.getEmpname()));
            ps.setString(2, PortalHelper.cleanInput(emp.getEmpno()));
            ps.setString(3, emp.getEmpid().trim());
            return ps.executeUpdate() > 0;
        }
    }

    public boolean delete(String empid) throws SQLException {
        if (empid == null || empid.trim().isEmpty()) return false;
        String sql = "DELETE FROM employee WHERE empid = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, empid.trim());
            return ps.executeUpdate() > 0;
        }
    }

    public List<Employee> getAll() throws SQLException {
        List<Employee> list = new ArrayList<>();
        String sql = "SELECT empid, empname, empno FROM employee ORDER BY empid ASC";
        try (Connection con = DBConnection.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                list.add(new Employee(
                    rs.getString("empid"),
                    rs.getString("empname"),
                    rs.getString("empno")
                ));
            }
        }
        return list;
    }
}
