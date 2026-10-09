<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Feedback" %>
<%@ include file="header.jspf" %>

<h2>Submitted Feedback</h2>

<%
    if (request.getParameter("msg") != null) {
%>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<%
    }
    List<Feedback> feedbackList = (List<Feedback>) request.getAttribute("feedbackList");
%>

<table>
    <tr>
        <th>Student</th>
        <th>Course</th>
        <th>Rating</th>
        <th>Feedback</th>
    </tr>
    <% if (feedbackList == null || feedbackList.isEmpty()) { %>
        <tr><td colspan="4">No feedback submitted yet.</td></tr>
    <% } else {
        for (Feedback fb : feedbackList) {
    %>
        <tr>
            <td><%= fb.getStudentName() %></td>
            <td><%= fb.getCourse() %></td>
            <td><%= fb.getRating() %> / 5</td>
            <td><%= fb.getFeedbackText() %></td>
        </tr>
    <%  }
    } %>
</table>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/feedback.jsp">&larr; Submit new feedback</a>
</p>

<%@ include file="footer.jspf" %>
