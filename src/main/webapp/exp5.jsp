<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Employee" %>
<%@ include file="header.jspf" %>

<h2>5. Employee Registration Desk (JDBC CRUD - Experiment 5)</h2>
<p style="color:#555; font-size:13px;">
    Recreation of Desktop Swing <code>EmployeeCRUD.java</code> with live MySQL database persistence. Demonstrates full CRUD: Save, Search, Update, Delete, and Load records.
</p>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>
<% if (request.getAttribute("msg") != null) { %>
    <div class="msg-success"><%= request.getAttribute("msg") %></div>
<% } %>
<% if (request.getParameter("error") != null) { %>
    <div class="msg-error"><%= request.getParameter("error") %></div>
<% } %>
<% if (request.getAttribute("error") != null) { %>
    <div class="msg-error"><%= request.getAttribute("error") %></div>
<% } %>

<%
    Employee searched = (Employee) request.getAttribute("searchEmployee");
    String empidVal = (searched != null) ? searched.getEmpid() : "";
    String empnameVal = (searched != null) ? searched.getEmpname() : "";
    String empnoVal = (searched != null) ? searched.getEmpno() : "";
    List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
    if (employeeList == null) {
        com.javalab.dao.EmployeeDAO empDao = new com.javalab.dao.EmployeeDAO();
        try { employeeList = empDao.getAll(); } catch(Exception ignored) {}
    }
%>

<div style="background:white; border:2px solid #333; border-radius:8px; padding:20px; margin-bottom:24px; box-shadow:0 4px 14px rgba(0,0,0,0.1);">
    <h3 style="text-align:center; color:#222; font-size:20px; margin-top:0; border-bottom:2px solid #eee; padding-bottom:10px;">
        Employee Registration By - Krishna Gupta
    </h3>

    <div style="display:flex; gap:24px; flex-wrap:wrap;">
        <!-- Left: Form -->
        <div style="flex:1; min-width:320px; background:#fafafa; border:1px solid #ddd; border-radius:6px; padding:18px;">
            <h4 style="margin:0 0 14px 0; color:#3f51b5;">Fill Employee Details</h4>
            
            <form method="post" action="${pageContext.request.contextPath}/EmployeeServlet" id="empForm">
                <input type="hidden" name="action" id="formAction" value="save">

                <label>Employee Id</label>
                <input type="text" name="empid" id="txtEmpId" value="<%= empidVal %>" required placeholder="e.g. EMP001">

                <label>Employee Name</label>
                <input type="text" name="empname" id="txtEmpName" value="<%= empnameVal %>" required placeholder="e.g. John Doe">

                <label>Mobile No.</label>
                <input type="text" name="empno" id="txtEmpNo" value="<%= empnoVal %>" required placeholder="e.g. 9876543210">

                <div style="display:flex; gap:10px; margin-top:14px;">
                    <button type="submit" class="btn btn-green" onclick="setAction('save')" style="flex:1;">Save</button>
                    <button type="submit" class="btn btn-blue" onclick="setAction('update')" style="flex:1;">Update</button>
                    <button type="button" class="btn" onclick="clearEmpForm()" style="background:#888; color:white;">Clear</button>
                </div>
            </form>

            <hr style="margin:20px 0; border:none; border-top:1px dashed #ccc;">

            <!-- Search Section -->
            <h4 style="margin:0 0 10px 0; color:#333;">Search Employee</h4>
            <form method="get" action="${pageContext.request.contextPath}/EmployeeServlet" style="display:flex; gap:8px;">
                <input type="hidden" name="action" value="search">
                <input type="text" name="searchId" placeholder="Enter Employee Id" style="margin:0; flex:1;" required>
                <button type="submit" class="btn btn-purple" style="white-space:nowrap;">Search</button>
            </form>
        </div>

        <!-- Right: Table representation -->
        <div style="flex:1.5; min-width:360px;">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:10px;">
                <h4 style="margin:0; color:#333;">Registered Employees Directory</h4>
                <a href="${pageContext.request.contextPath}/EmployeeServlet?action=load" class="btn btn-orange" style="font-size:12px; padding:6px 12px;">Load All</a>
            </div>

            <div style="max-height:380px; overflow-y:auto; border:1px solid #ccc; border-radius:4px;">
                <table style="width:100%; border-collapse:collapse; font-size:13px; text-align:left;">
                    <thead style="background:#263238; color:white; position:sticky; top:0;">
                        <tr>
                            <th style="padding:10px;">S No</th>
                            <th style="padding:10px;">empid</th>
                            <th style="padding:10px;">empname</th>
                            <th style="padding:10px;">empno</th>
                            <th style="padding:10px; text-align:center;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (employeeList != null && !employeeList.isEmpty()) {
                                int sno = 1;
                                for (Employee emp : employeeList) {
                        %>
                        <tr style="border-bottom:1px solid #eee; background:<%= sno % 2 == 0 ? "#f9f9f9" : "white" %>;">
                            <td style="padding:9px;"><%= sno++ %></td>
                            <td style="padding:9px; font-weight:bold; color:#1976d2;"><%= emp.getEmpid() %></td>
                            <td style="padding:9px;"><%= emp.getEmpname() %></td>
                            <td style="padding:9px;"><%= emp.getEmpno() %></td>
                            <td style="padding:9px; text-align:center;">
                                <a href="javascript:void(0)" onclick="populateFields('<%= emp.getEmpid() %>', '<%= emp.getEmpname() %>', '<%= emp.getEmpno() %>')" style="color:#4caf50; font-weight:bold; margin-right:8px; text-decoration:none;">Select</a>
                                <a href="${pageContext.request.contextPath}/EmployeeServlet?action=delete&empid=<%= emp.getEmpid() %>" onclick="return confirm('Delete employee <%= emp.getEmpid() %>?');" style="color:#f44336; font-weight:bold; text-decoration:none;">Delete</a>
                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="5" style="text-align:center; padding:24px; color:#888;">No employee records found. Click Load or Save a new employee above.</td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:20px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">
        &#128196; View Original Desktop Java Swing Code (<code>EmployeeCRUD.java</code>)
    </summary>
    <pre style="background:#282c34; color:#abb2bf; padding:16px; border-radius:6px; overflow-x:auto; font-size:12px; margin-top:12px; line-height:1.4;">package experiment_5;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class EmployeeCRUD extends JFrame {

    JLabel titleLabel, idLabel, nameLabel, mobileLabel, searchLabel;
    JTextField idField, nameField, mobileField, searchField;
    JButton saveButton, searchButton, updateButton, deleteButton, loadButton;
    JTable table;
    DefaultTableModel model;

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    public EmployeeCRUD() {

        setTitle("Employee Registration Desk");
        setSize(1250, 600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);
        setResizable(false);

        // Title
        titleLabel = new JLabel("Employee Registration By - Krishna Gupta");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        titleLabel.setBounds(390, 20, 550, 40);
        add(titleLabel);

        // Employee Details
        JLabel detailsLabel = new JLabel("Fill Employee Details");
        detailsLabel.setFont(new Font("Arial", Font.BOLD, 16));
        detailsLabel.setBounds(50, 80, 200, 30);
        add(detailsLabel);

        // Employee ID
        idLabel = new JLabel("Employee Id");
        idLabel.setBounds(50, 130, 120, 30);
        add(idLabel);

        idField = new JTextField();
        idField.setBounds(180, 130, 220, 30);
        add(idField);

        // Employee Name
        nameLabel = new JLabel("Employee Name");
        nameLabel.setBounds(50, 180, 120, 30);
        add(nameLabel);

        nameField = new JTextField();
        nameField.setBounds(180, 180, 220, 30);
        add(nameField);

        // Mobile Number
        mobileLabel = new JLabel("Mobile No.");
        mobileLabel.setBounds(50, 230, 120, 30);
        add(mobileLabel);

        mobileField = new JTextField();
        mobileField.setBounds(180, 230, 220, 30);
        add(mobileField);

        // Save Button
        saveButton = new JButton("Save");
        saveButton.setBounds(180, 280, 120, 40);
        add(saveButton);

        // Search
        searchLabel = new JLabel("Search Employee Id");
        searchLabel.setBounds(50, 350, 130, 30);
        add(searchLabel);

        searchField = new JTextField();
        searchField.setBounds(180, 350, 220, 30);
        add(searchField);

        searchButton = new JButton("Search");
        searchButton.setBounds(420, 345, 120, 40);
        add(searchButton);

        // Update
        updateButton = new JButton("Update");
        updateButton.setBounds(570, 500, 120, 40);
        add(updateButton);

        // Delete
        deleteButton = new JButton("Delete");
        deleteButton.setBounds(710, 500, 120, 40);
        add(deleteButton);

        // Load
        loadButton = new JButton("Load");
        loadButton.setBounds(850, 500, 120, 40);
        add(loadButton);

        // Table
        model = new DefaultTableModel();

        model.addColumn("S No");
        model.addColumn("empid");
        model.addColumn("empname");
        model.addColumn("empno");

        table = new JTable(model);

        JScrollPane scrollPane = new JScrollPane(table);
        scrollPane.setBounds(570, 100, 600, 350);
        add(scrollPane);

        // Connect to MySQL
        connect();

        // Save Button Action
        saveButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                String id = idField.getText();
                String name = nameField.getText();
                String mobile = mobileField.getText();

                try {

                    String sql = "INSERT INTO employee(empid, empname, empno) VALUES (?, ?, ?)";

                    pst = con.prepareStatement(sql);

                    pst.setString(1, id);
                    pst.setString(2, name);
                    pst.setString(3, mobile);

                    pst.executeUpdate();

                    JOptionPane.showMessageDialog(
                            null,
                            "Employee Saved Successfully"
                    );

                    clearFields();
                    loadData();

                } catch (Exception ex) {

                    JOptionPane.showMessageDialog(
                            null,
                            ex.getMessage()
                    );
                }
            }
        });

        // Search Button Action
        searchButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                String id = searchField.getText();

                try {

                    String sql = "SELECT * FROM employee WHERE empid=?";

                    pst = con.prepareStatement(sql);
                    pst.setString(1, id);

                    rs = pst.executeQuery();

                    if (rs.next()) {

                        idField.setText(rs.getString("empid"));
                        nameField.setText(rs.getString("empname"));
                        mobileField.setText(rs.getString("empno"));

                    } else {

                        JOptionPane.showMessageDialog(
                                null,
                                "Employee Not Found"
                        );
                    }

                } catch (Exception ex) {

                    JOptionPane.showMessageDialog(
                            null,
                            ex.getMessage()
                    );
                }
            }
        });

        // Update Button Action
        updateButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                String id = idField.getText();
                String name = nameField.getText();
                String mobile = mobileField.getText();

                try {

                    String sql = "UPDATE employee SET empname=?, empno=? WHERE empid=?";

                    pst = con.prepareStatement(sql);

                    pst.setString(1, name);
                    pst.setString(2, mobile);
                    pst.setString(3, id);

                    int result = pst.executeUpdate();

                    if (result &gt; 0) {

                        JOptionPane.showMessageDialog(
                                null,
                                "Employee Updated Successfully"
                        );

                        clearFields();
                        loadData();

                    } else {

                        JOptionPane.showMessageDialog(
                                null,
                                "Employee Not Found"
                        );
                    }

                } catch (Exception ex) {

                    JOptionPane.showMessageDialog(
                            null,
                            ex.getMessage()
                    );
                }
            }
        });

        // Delete Button Action
        deleteButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                String id = idField.getText();

                try {

                    String sql = "DELETE FROM employee WHERE empid=?";

                    pst = con.prepareStatement(sql);
                    pst.setString(1, id);

                    int result = pst.executeUpdate();

                    if (result &gt; 0) {

                        JOptionPane.showMessageDialog(
                                null,
                                "Employee Deleted Successfully"
                        );

                        clearFields();
                        loadData();

                    } else {

                        JOptionPane.showMessageDialog(
                                null,
                                "Employee Not Found"
                        );
                    }

                } catch (Exception ex) {

                    JOptionPane.showMessageDialog(
                            null,
                            ex.getMessage()
                    );
                }
            }
        });

        // Load Button Action
        loadButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {

                loadData();
            }
        });

        setVisible(true);
    }

    // Database Connection
    public void connect() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employee_db",
                    "root",
                    "#MySQL4#"
            );

            System.out.println("Database Connected Successfully");

        } catch (Exception e) {

            JOptionPane.showMessageDialog(
                    null,
                    "Database Connection Failed\n" + e.getMessage()
            );
        }
    }

    // Load Data into JTable
    public void loadData() {

        try {

            model.setRowCount(0);

            String sql = "SELECT * FROM employee";

            pst = con.prepareStatement(sql);

            rs = pst.executeQuery();

            int serialNumber = 1;

            while (rs.next()) {

                model.addRow(new Object[] {
                        serialNumber,
                        rs.getString("empid"),
                        rs.getString("empname"),
                        rs.getString("empno")
                });

                serialNumber++;
            }

        } catch (Exception e) {

            JOptionPane.showMessageDialog(
                    null,
                    e.getMessage()
            );
        }
    }

    // Clear Text Fields
    public void clearFields() {

        idField.setText("");
        nameField.setText("");
        mobileField.setText("");
        searchField.setText("");
    }

    public static void main(String[] args) {

        new EmployeeCRUD();
    }
}</pre>
</details>

<script>
    function setAction(act) {
        document.getElementById('formAction').value = act;
    }
    function populateFields(id, name, no) {
        document.getElementById('txtEmpId').value = id;
        document.getElementById('txtEmpName').value = name;
        document.getElementById('txtEmpNo').value = no;
    }
    function clearEmpForm() {
        document.getElementById('txtEmpId').value = '';
        document.getElementById('txtEmpName').value = '';
        document.getElementById('txtEmpNo').value = '';
        document.getElementById('formAction').value = 'save';
    }
</script>

<%@ include file="footer.jspf" %>
