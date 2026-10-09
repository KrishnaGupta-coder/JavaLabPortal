<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.TheoryContent" %>
<%@ include file="../header.jspf" %>

<%
    boolean teacherView = "TEACHER".equals(session.getAttribute("role"));
    List<TheoryContent> contentList = (List<TheoryContent>) request.getAttribute("contentList");
%>

<h2>Theory Content</h2>

<% if (teacherView) { %>
    <p><a class="btn btn-orange" href="${pageContext.request.contextPath}/theory/addTheory.jsp">+ Add Theory Content</a></p>
<% } %>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>

<%
    if (contentList == null || contentList.isEmpty()) {
%>
    <div class="card">No theory content added yet.</div>
<%
    } else {
        for (TheoryContent c : contentList) {
%>
    <div class="card">
        <h3><%= c.getTitle() %></h3>
        <p style="white-space: pre-wrap;"><%= c.getContent() %></p>
        <p style="font-size:11px; color:#999;">Added: <%= c.getCreatedAt() %></p>
        <% if (teacherView) { %>
            <a class="btn btn-red" href="${pageContext.request.contextPath}/TheoryServlet?action=delete&id=<%= c.getId() %>"
               onclick="return confirm('Delete this content?');">Delete</a>
        <% } %>
    </div>
<%
        }
    }
%>

<%@ include file="../footer.jspf" %>
