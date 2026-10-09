<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Student" %>
<%@ page import="com.javalab.model.ClassSection" %>
<%@ page import="com.javalab.dao.ClassSectionDAO" %>
<%@ include file="../header.jspf" %>

<h2>Update Student</h2>

<%
    Student student = (Student) request.getAttribute("student");
    List<ClassSection> classes = new ClassSectionDAO().getAllClasses();
%>

<% if (student == null) { %>
    <div class="msg-error">Student not found.</div>
<% } else { %>

<form method="post" action="${pageContext.request.contextPath}/StudentServlet">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="<%= student.getId() %>">

    <label>Name:</label>
    <input type="text" name="name" value="<%= student.getName() %>" required>

    <label>RTU Roll Number:</label>
    <input type="text" name="rollNumber" value="<%= student.getRollNumber() %>" required>

    <label>Class:</label>
    <select name="classId" required>
        <% for (ClassSection c : classes) { %>
            <option value="<%= c.getId() %>" <%= c.getId() == student.getClassId() ? "selected" : "" %>><%= c.getClassName() %></option>
        <% } %>
    </select>

    <button type="submit" class="btn btn-orange">Update Student</button>
</form>

<% } %>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/StudentServlet?action=list">&larr; Back to list</a>
</p>

<%@ include file="../footer.jspf" %>
