<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.ClassSection" %>
<%@ page import="com.javalab.dao.ClassSectionDAO" %>
<%@ include file="../header.jspf" %>

<h2>Add Student</h2>

<%
    List<ClassSection> classes = new ClassSectionDAO().getAllClasses();
%>

<% if (classes.isEmpty()) { %>
    <div class="msg-error">No classes exist yet. <a href="${pageContext.request.contextPath}/ClassServlet?action=list">Create a class first</a>.</div>
<% } else { %>

<form method="post" action="${pageContext.request.contextPath}/StudentServlet">
    <input type="hidden" name="action" value="add">

    <label>Name:</label>
    <input type="text" name="name" required>

    <label>RTU Roll Number:</label>
    <input type="text" name="rollNumber" required>
    <div style="font-size:11px; color:#888; margin-top:-10px; margin-bottom:14px;">
        This will also be the student's login password.
    </div>

    <label>Class:</label>
    <select name="classId" required>
        <% for (ClassSection c : classes) { %>
            <option value="<%= c.getId() %>"><%= c.getClassName() %></option>
        <% } %>
    </select>

    <button type="submit" class="btn btn-green">Save Student</button>
</form>

<% } %>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/StudentServlet?action=list">&larr; Back to list</a>
</p>

<%@ include file="../footer.jspf" %>
