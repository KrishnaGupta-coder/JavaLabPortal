<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.ClassSection" %>
<%@ include file="../header.jspf" %>

<%
    List<ClassSection> classes = (List<ClassSection>) request.getAttribute("classes");
%>

<h2>Manage Classes</h2>
<p>Create classes here first (e.g. AI&amp;DS-A, AI&amp;DS-B, CS-A, IT),
then assign students to them from Student Management.</p>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>

<form method="post" action="${pageContext.request.contextPath}/ClassServlet" style="margin-bottom:20px;">
    <input type="hidden" name="action" value="add">
    <label>New Class Name:</label>
    <input type="text" name="className" placeholder="e.g. AI&amp;DS-A" required>
    <button type="submit" class="btn btn-purple">Create Class</button>
</form>

<table>
    <tr><th>ID</th><th>Class Name</th><th>Action</th></tr>
    <%
        if (classes == null || classes.isEmpty()) {
    %>
        <tr><td colspan="3">No classes created yet.</td></tr>
    <%
        } else {
            for (ClassSection c : classes) {
    %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getClassName() %></td>
            <td>
                <a class="btn btn-red" href="${pageContext.request.contextPath}/ClassServlet?action=delete&id=<%= c.getId() %>"
                   onclick="return confirm('Delete this class? Students in it will need to be reassigned.');">Delete</a>
            </td>
        </tr>
    <%
            }
        }
    %>
</table>

<%@ include file="../footer.jspf" %>
