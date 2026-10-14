<%@ include file="header.jspf" %>

<h2>1. Student Registration Form (JLabel &amp; JTextField - Experiment 1)</h2>
<p style="color:#666; font-size:13px;">Swing-style student registration form with interactive output dialog and exact source code representation.</p>

<%
    String name   = request.getParameter("name");
    String roll   = request.getParameter("roll");
    String email  = request.getParameter("email");
    String branch = request.getParameter("branch");
    String year   = request.getParameter("year");
    boolean submitted = (name != null);
%>

<% if (submitted) { %>
    <div class="card" style="background:#ffe4ec; border-left-color:#e53935; max-width:500px; margin-bottom:20px;">
        <h3 style="color:#b71c1c; margin-top:0;">Student Information (Dialog Result)</h3>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Roll Number:</strong> <%= roll %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Branch:</strong> <%= branch %></p>
        <p><strong>Admission Year:</strong> <%= year %></p>
    </div>
<% } %>

<form method="post" action="exp1.jsp" style="border:2px solid #e53935; background:#ffe4ec; max-width:480px; padding:22px; border-radius:6px; box-shadow:0 3px 12px rgba(229,57,53,0.15);">
    <p style="text-align:center; font-weight:bold; font-size:16px; margin:0 0 16px 0; color:#b71c1c;">By - Krishna Gupta (24EARAD083)</p>

    <label style="font-weight:600;">Student Name</label>
    <input type="text" name="name" required placeholder="Enter student name">

    <label style="font-weight:600;">Roll Number</label>
    <input type="text" name="roll" required placeholder="Enter RTU roll number">

    <label style="font-weight:600;">Email</label>
    <input type="email" name="email" required placeholder="Enter email address">

    <label style="font-weight:600;">Branch</label>
    <input type="text" name="branch" required placeholder="e.g. AI & DS">

    <label style="font-weight:600;">Admission Year</label>
    <input type="text" name="year" required placeholder="e.g. 2024">

    <button type="submit" class="btn btn-red" style="width:100%; padding:11px; margin-top:8px;">Submit</button>
</form>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:24px; max-width:700px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">&#128196; View Original Desktop Java Swing Code (<code>exp_01.java</code>)</summary>
    <pre style="background:#282c34; color:#abb2bf; padding:16px; border-radius:6px; overflow-x:auto; font-size:12px; margin-top:12px; line-height:1.4;">package experiment_1;

//Write a java program to create a simples swing application to display student information using JLabel and JTextField.

import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.TitledBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class exp_01 {
  public static void main(String[] args) {

      JFrame frame = new JFrame("Student Registration Form");
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      frame.setSize(450, 450);
      frame.setResizable(false);
      frame.setLayout(null);
      frame.setLocationRelativeTo(null);

      JPanel panel = new JPanel();
      panel.setLayout(null);
      panel.setBounds(10, 10, 415, 390);

      Border border = BorderFactory.createTitledBorder(
              BorderFactory.createLineBorder(Color.RED, 2),
              "Student Registration Form",
              TitledBorder.LEFT,
              TitledBorder.TOP
      );

      panel.setBorder(border);
      panel.setBackground(Color.PINK);

      JLabel heading = new JLabel("By - Krishna Gupta (24EARAD083)");
      heading.setFont(new Font("Arial", Font.BOLD, 14));
      heading.setBounds(85, 30, 250, 25);
      panel.add(heading);

      // Labels
      JLabel lblName = new JLabel("Student Name");
      lblName.setBounds(20, 80, 120, 30);
      panel.add(lblName);

      JLabel lblRoll = new JLabel("Roll Number");
      lblRoll.setBounds(20, 125, 120, 30);
      panel.add(lblRoll);

      JLabel lblEmail = new JLabel("Email");
      lblEmail.setBounds(20, 170, 120, 30);
      panel.add(lblEmail);

      JLabel lblBranch = new JLabel("Branch");
      lblBranch.setBounds(20, 215, 120, 30);
      panel.add(lblBranch);

      JLabel lblYear = new JLabel("Admission Year");
      lblYear.setBounds(20, 260, 120, 30);
      panel.add(lblYear);

      // Text Fields
      JTextField txtName = new JTextField();
      txtName.setBounds(160, 80, 210, 30);
      panel.add(txtName);

      JTextField txtRoll = new JTextField();
      txtRoll.setBounds(160, 125, 210, 30);
      panel.add(txtRoll);

      JTextField txtEmail = new JTextField();
      txtEmail.setBounds(160, 170, 210, 30);
      panel.add(txtEmail);

      JTextField txtBranch = new JTextField();
      txtBranch.setBounds(160, 215, 210, 30);
      panel.add(txtBranch);

      JTextField txtYear = new JTextField();
      txtYear.setBounds(160, 260, 210, 30);
      panel.add(txtYear);

      // Submit Button
      JButton btnSubmit = new JButton("Submit");
      btnSubmit.setBounds(145, 320, 120, 35);
      panel.add(btnSubmit);

      // Button Action
      btnSubmit.addActionListener(new ActionListener() {
          @Override
          public void actionPerformed(ActionEvent e) {

              String message =
                      "Student Information\n\n" +
                      "Name: " + txtName.getText() + "\n" +
                      "Roll Number: " + txtRoll.getText() + "\n" +
                      "Email: " + txtEmail.getText() + "\n" +
                      "Branch: " + txtBranch.getText() + "\n" +
                      "Admission Year: " + txtYear.getText();

              JOptionPane.showMessageDialog(
                      frame,
                      message,
                      "Student Details",
                      JOptionPane.INFORMATION_MESSAGE
              );
          }
      });

      frame.add(panel);
      frame.setVisible(true);
  }
}
</pre>
</details>

<%@ include file="footer.jspf" %>
