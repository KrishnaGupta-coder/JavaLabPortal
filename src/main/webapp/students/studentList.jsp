<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Student" %>
<%@ include file="../header.jspf" %>

<h2>Student Management</h2>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>

<form method="get" action="${pageContext.request.contextPath}/StudentServlet" style="max-width:600px; display:flex; gap:10px; align-items:center; background:none; box-shadow:none; padding:0;">
    <input type="hidden" name="action" value="search">
    <input type="text" name="keyword" placeholder="Search by name, roll number, or class"
           value="<%= request.getAttribute("keyword") == null ? "" : request.getAttribute("keyword") %>"
           style="margin:0;">
    <button type="submit" class="btn btn-blue">Search</button>
    <a class="btn btn-green" href="${pageContext.request.contextPath}/students/addStudent.jsp">+ Add Student</a>
</form>

<br>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>RTU Roll Number</th>
        <th>Class</th>
        <th>Actions</th>
    </tr>
    <%
        List<Student> students = (List<Student>) request.getAttribute("students");
        if (students == null || students.isEmpty()) {
    %>
        <tr><td colspan="5">No students found.</td></tr>
    <%
        } else {
            for (Student s : students) {
    %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getRollNumber() %></td>
            <td><%= s.getClassName() == null ? "-" : s.getClassName() %></td>
            <td>
                <a class="btn btn-orange" href="${pageContext.request.contextPath}/StudentServlet?action=edit&id=<%= s.getId() %>">Edit</a>
                <a class="btn btn-red" href="${pageContext.request.contextPath}/StudentServlet?action=delete&id=<%= s.getId() %>"
                   onclick="return confirm('Delete this student?');">Delete</a>
            </td>
        </tr>
    <%
            }
        }
    %>
</table>

<%@ include file="../footer.jspf" %>
