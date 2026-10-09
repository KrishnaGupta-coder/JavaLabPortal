<%@ include file="header.jspf" %>

<h2>1. Student Registration Form (JLabel &amp; JTextField)</h2>

<%
    String name   = request.getParameter("name");
    String roll   = request.getParameter("roll");
    String email  = request.getParameter("email");
    String branch = request.getParameter("branch");
    String year   = request.getParameter("year");
    boolean submitted = (name != null);
%>

<% if (submitted) { %>
    <div class="card" style="background:#ffe4ec; border-left-color:#e53935;">
        <h3>Student Information</h3>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Roll Number:</strong> <%= roll %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Branch:</strong> <%= branch %></p>
        <p><strong>Admission Year:</strong> <%= year %></p>
    </div>
<% } %>

<form method="post" action="exp1.jsp" style="border:2px solid #e53935; background:#ffe4ec;">
    <p style="text-align:center; font-weight:bold;">By - Krishna Gupta (24EARAD083)</p>

    <label>Student Name</label>
    <input type="text" name="name" required>

    <label>Roll Number</label>
    <input type="text" name="roll" required>

    <label>Email</label>
    <input type="email" name="email" required>

    <label>Branch</label>
    <input type="text" name="branch" required>

    <label>Admission Year</label>
    <input type="text" name="year" required>

    <button type="submit" class="btn btn-red">Submit</button>
</form>

<%@ include file="footer.jspf" %>

