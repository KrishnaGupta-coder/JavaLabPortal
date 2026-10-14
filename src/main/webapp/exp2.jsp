<%@ include file="header.jspf" %>

<h2>2. User Selection Form (JCheckBox / JRadioButton / JComboBox - Experiment 2)</h2>
<p style="color:#666; font-size:13px;">Swing-style user selection form with custom checkboxes, radio buttons, and country selector.</p>

<%
    String[] hobbies = request.getParameterValues("hobby");
    String gender = request.getParameter("gender");
    String country = request.getParameter("country");
    boolean submitted = (request.getParameter("submitted") != null);
%>

<% if (submitted) {
    String hobbyText = "None";
    if (hobbies != null && hobbies.length > 0) {
        hobbyText = String.join(", ", hobbies);
    }
%>
    <div class="card" style="background:#2b0d0d; color:white; border-left-color:#ffcc00; max-width:540px; margin-bottom:20px;">
        <h3 style="color:#ffcc00; margin-top:0;">Dialog Result: Your Selections</h3>
        <p><strong>Hobbies:</strong> <%= hobbyText %></p>
        <p><strong>Gender:</strong> <%= (gender == null ? "Not Selected" : gender) %></p>
        <p><strong>Country:</strong> <%= country %></p>
    </div>
<% } %>

<form method="post" action="exp2.jsp" style="background:#b41919; padding:22px; border-radius:8px; max-width:540px; box-shadow:0 4px 14px rgba(180,25,25,0.25);">
    <input type="hidden" name="submitted" value="yes">
    <p style="text-align:center; color:white; font-weight:bold; font-size:18px; margin:0 0 18px 0;">User Selection Form</p>

    <label style="color:white; font-weight:bold;">Hobbies:</label>
    <div style="margin-bottom:14px;">
        <label style="display:inline; color:white; font-weight:normal; margin-right:14px; cursor:pointer;">
            <input type="checkbox" name="hobby" value="Reading" style="width:auto;"> Reading
        </label>
        <label style="display:inline; color:white; font-weight:normal; margin-right:14px; cursor:pointer;">
            <input type="checkbox" name="hobby" value="Travelling" style="width:auto;"> Travelling
        </label>
        <label style="display:inline; color:white; font-weight:normal; cursor:pointer;">
            <input type="checkbox" name="hobby" value="Gaming" style="width:auto;"> Gaming
        </label>
    </div>

    <label style="color:white; font-weight:bold;">Gender:</label>
    <div style="margin-bottom:14px;">
        <label style="display:inline; color:white; font-weight:normal; margin-right:14px; cursor:pointer;">
            <input type="radio" name="gender" value="Male" style="width:auto;"> Male
        </label>
        <label style="display:inline; color:white; font-weight:normal; margin-right:14px; cursor:pointer;">
            <input type="radio" name="gender" value="Female" style="width:auto;"> Female
        </label>
        <label style="display:inline; color:white; font-weight:normal; cursor:pointer;">
            <input type="radio" name="gender" value="Other" style="width:auto;"> Other
        </label>
    </div>

    <label style="color:white; font-weight:bold;">Country:</label>
    <select name="country" style="width:100%; padding:10px; border-radius:4px; margin-bottom:18px; background:white;">
        <option>India</option>
        <option>USA</option>
        <option>Canada</option>
        <option>Australia</option>
        <option>Japan</option>
        <option>Germany</option>
    </select>

    <button type="submit" class="btn btn-orange" style="width:100%; padding:11px; font-size:15px; font-weight:bold;">Submit Selections</button>
</form>

<details style="background:#f4f6f8; border:1px solid #ddd; border-radius:6px; padding:12px; margin-top:24px; max-width:700px;">
    <summary style="font-weight:bold; color:#1e3c72; cursor:pointer;">&#128196; View Original Desktop Java Swing Code (<code>exp_02.java</code>)</summary>
    <pre style="background:#282c34; color:#abb2bf; padding:16px; border-radius:6px; overflow-x:auto; font-size:12px; margin-top:12px; line-height:1.4;">package experiment_2;

//write a java program to develop a GUI using JCheckBox, JRadioButton, and JComboBox for user selection input. 

import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.TitledBorder;
import java.awt.*;

public class exp_02 {

  public static void main(String[] args) {

      JFrame frame = new JFrame("User Option Selection Form");
      frame.setSize(700, 330);
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      frame.setLocationRelativeTo(null);
      frame.setResizable(false);

      JPanel panel = new JPanel();
      panel.setLayout(null);
      panel.setBackground(new Color(180, 25, 25));

      Border border = BorderFactory.createTitledBorder(
              BorderFactory.createLineBorder(Color.BLACK, 2),
              "Selection Form",
              TitledBorder.LEFT,
              TitledBorder.TOP
      );

      panel.setBorder(border);

      JLabel heading = new JLabel("User Selection Form");
      heading.setBounds(150, 15, 420, 35);
      heading.setForeground(Color.WHITE);
      heading.setFont(new Font("Arial", Font.BOLD, 20));
      panel.add(heading);

      JLabel hobbyLabel = new JLabel("Hobbies:");
      hobbyLabel.setBounds(20, 70, 100, 25);
      hobbyLabel.setForeground(Color.WHITE);
      hobbyLabel.setFont(new Font("Arial", Font.BOLD, 14));
      panel.add(hobbyLabel);

      JCheckBox reading = new JCheckBox("Reading");
      reading.setBounds(330, 70, 100, 25);

      JCheckBox travelling = new JCheckBox("Travelling");
      travelling.setBounds(430, 70, 110, 25);

      JCheckBox gaming = new JCheckBox("Gaming");
      gaming.setBounds(545, 70, 90, 25);

      JCheckBox[] hobbies = {reading, travelling, gaming};

      for (JCheckBox box : hobbies) {
          box.setBackground(panel.getBackground());
          box.setForeground(Color.WHITE);
          panel.add(box);
      }

      JLabel genderLabel = new JLabel("Gender:");
      genderLabel.setBounds(20, 130, 100, 25);
      genderLabel.setForeground(Color.WHITE);
      genderLabel.setFont(new Font("Arial", Font.BOLD, 14));
      panel.add(genderLabel);

      JRadioButton male = new JRadioButton("Male");
      male.setBounds(330, 130, 80, 25);

      JRadioButton female = new JRadioButton("Female");
      female.setBounds(420, 130, 90, 25);

      JRadioButton other = new JRadioButton("Other");
      other.setBounds(520, 130, 80, 25);

      JRadioButton[] genders = {male, female, other};

      ButtonGroup group = new ButtonGroup();

      for (JRadioButton rb : genders) {
          rb.setBackground(panel.getBackground());
          rb.setForeground(Color.WHITE);
          rb.setActionCommand(rb.getText());
          group.add(rb);
          panel.add(rb);
      }

      JLabel countryLabel = new JLabel("Country:");
      countryLabel.setBounds(20, 190, 100, 25);
      countryLabel.setForeground(Color.WHITE);
      countryLabel.setFont(new Font("Arial", Font.BOLD, 14));
      panel.add(countryLabel);

      String countries[] = {
              "India",
              "USA",
              "Canada",
              "Australia",
              "Japan",
              "Germany"
      };

      JComboBox&lt;String&gt; combo = new JComboBox&lt;&gt;(countries);
      combo.setBounds(320, 190, 250, 30);
      panel.add(combo);

      JButton submit = new JButton("Submit");
      submit.setBounds(320, 240, 250, 35);
      panel.add(submit);

      submit.addActionListener(e -&gt; {

          StringBuilder hobby = new StringBuilder();

          for (JCheckBox box : hobbies)
              if (box.isSelected())
                  hobby.append(box.getText()).append(" ");

          String gender = group.getSelection() == null
                  ? "Not Selected"
                  : group.getSelection().getActionCommand();

          JOptionPane.showMessageDialog(
                  frame,
                  "Hobbies : "
                          + (hobby.length() == 0 ? "None" : hobby)
                          + "\nGender : " + gender
                          + "\nCountry : " + combo.getSelectedItem(),
                  "Message",
                  JOptionPane.INFORMATION_MESSAGE
          );
      });

      frame.add(panel);
      frame.setVisible(true);
  }
}
      

</pre>
</details>

<%@ include file="footer.jspf" %>
