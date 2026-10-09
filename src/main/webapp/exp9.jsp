<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ include file="header.jspf" %>

<%
    // Experiment 9: "WAJP to create a JSP page for student login
    // validation with proper error messages."
    // This uses a scriptlet directly in the JSP (as the experiment
    // literally asks for a JSP page, not a servlet-backed form).

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean submitted = (username != null || password != null);

    List<String> errors = new ArrayList<>();
    boolean loginSuccess = false;

    if (submitted) {
        if (username == null || username.trim().isEmpty()) {
            errors.add("Username is required.");
        }
        if (password == null || password.trim().isEmpty()) {
            errors.add("Password is required.");
        } else if (password.trim().length() < 6) {
            errors.add("Password must be at least 6 characters long.");
        }

        // Demo credential check (hard-coded for lab purposes only)
        if (errors.isEmpty()) {
            if ("student".equals(username.trim()) && "pass123".equals(password.trim())) {
                loginSuccess = true;
            } else {
                errors.add("Invalid username or password.");
            }
        }
    }
%>

<h2>9. Student Login Validation (JSP)</h2>
<p style="color:#666; font-size:13px;">This is the standalone lab demo for Experiment 9 only -
it is separate from the portal's real Teacher/Student login system.</p>

<% if (loginSuccess) { %>
    <div class="msg-success">Login successful! Welcome, <%= username %>.</div>
<% } else if (submitted && !errors.isEmpty()) { %>
    <div class="msg-error">
        <strong>Please fix the following:</strong>
        <ul>
            <% for (String err : errors) { %>
                <li><%= err %></li>
            <% } %>
        </ul>
    </div>
<% } %>

<form method="post" action="exp9.jsp">
    <label>Username:</label>
    <input type="text" name="username" value="<%= username == null ? "" : username %>">

    <label>Password:</label>
    <input type="password" name="password">

    <button type="submit" class="btn btn-blue">Login</button>
</form>

<p style="margin-top:14px; font-size:13px; color:#666;">
    Demo credentials: username <code>student</code>, password <code>pass123</code>
</p>

<%@ include file="footer.jspf" %>

