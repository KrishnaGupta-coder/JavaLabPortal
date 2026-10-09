<%@ include file="header.jspf" %>

<h2>2. User Selection Form (JCheckBox / JRadioButton / JComboBox)</h2>

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
    <div class="card" style="background:#3a0d0d; color:white; border-left-color:#ffcc00;">
        <h3 style="color:white;">Your Selections</h3>
        <p><strong>Hobbies:</strong> <%= hobbyText %></p>
        <p><strong>Gender:</strong> <%= (gender == null ? "Not Selected" : gender) %></p>
        <p><strong>Country:</strong> <%= country %></p>
    </div>
<% } %>

<form method="post" action="exp2.jsp" style="background:#b41919; padding:20px; border-radius:6px; max-width:520px;">
    <input type="hidden" name="submitted" value="yes">
    <p style="text-align:center; color:white; font-weight:bold; font-size:18px;">Selection Form by Krishna Gupta</p>

    <label style="color:white;">Hobbies:</label>
    <div style="margin-bottom:14px;">
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="checkbox" name="hobby" value="Reading" style="width:auto;"> Reading
        </label>
        &nbsp;&nbsp;
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="checkbox" name="hobby" value="Travelling" style="width:auto;"> Travelling
        </label>
        &nbsp;&nbsp;
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="checkbox" name="hobby" value="Gaming" style="width:auto;"> Gaming
        </label>
    </div>

    <label style="color:white;">Gender:</label>
    <div style="margin-bottom:14px;">
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="radio" name="gender" value="Male" style="width:auto;"> Male
        </label>
        &nbsp;&nbsp;
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="radio" name="gender" value="Female" style="width:auto;"> Female
        </label>
        &nbsp;&nbsp;
        <label style="display:inline; color:white; font-weight:normal;">
            <input type="radio" name="gender" value="Other" style="width:auto;"> Other
        </label>
    </div>

    <label style="color:white;">Country:</label>
    <select name="country">
        <option>India</option>
        <option>USA</option>
        <option>Canada</option>
        <option>Australia</option>
        <option>Japan</option>
        <option>Germany</option>
    </select>

    <button type="submit" class="btn btn-orange" style="width:100%;">Submit</button>
</form>

<%@ include file="footer.jspf" %>

