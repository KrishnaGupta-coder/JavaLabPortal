<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Experiment" %>
<%@ include file="header.jspf" %>

<%
    boolean teacherView = "TEACHER".equals(session.getAttribute("role"));
    List<Experiment> experiments = (List<Experiment>) request.getAttribute("experiments");
    if (experiments == null) {
        com.javalab.dao.ExperimentDAO expDao = new com.javalab.dao.ExperimentDAO();
        try { experiments = expDao.getAllExperiments(); } catch(Exception ignored) {}
    }
%>

<h2>Lab Experiments</h2>
<p>Explore the complete RTU 5th Semester Java practical lab catalog. Built-in exercises can be executed live in browser, network/RMI desktop simulations feature exact interactive representations, and faculty can assign custom assignments.</p>

<% if (teacherView) { %>
    <p><a class="btn btn-purple" href="${pageContext.request.contextPath}/experiments/addExperiment.jsp">+ Add New Experiment</a></p>
<% } %>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>

<%
    if (experiments != null) {
        for (Experiment exp : experiments) {
            String badgeClass = "badge-live";
            String badgeText = "LIVE HERE";
            if ("CUSTOM".equals(exp.getType())) {
                badgeClass = "badge-custom";
                badgeText = "CUSTOM";
            } else if (exp.getLiveUrl() != null && exp.getLiveUrl().contains("preview")) {
                badgeClass = "badge-desktop";
                badgeText = "VISUAL PREVIEW";
            }

            String liveLink = exp.getLiveUrl();
            if (exp.getOrderNo() == 10) {
                liveLink = teacherView ? "FeedbackServlet?action=list" : "feedback.jsp";
            }
%>
    <div class="card" style="border-left-color: <%= "CUSTOM".equals(exp.getType()) ? "#9c27b0" : "#4caf50" %>;">
        <h3><%= exp.getOrderNo() %>. <%= exp.getTitle() %> <span class="badge <%= badgeClass %>"><%= badgeText %></span></h3>
        <p><%= exp.getDescription() %></p>

        <% if (liveLink != null && !liveLink.isEmpty()) { %>
            <a class="btn btn-green" href="${pageContext.request.contextPath}/<%= liveLink %>">
                <%= (exp.getOrderNo() == 10 && teacherView) ? "View Feedback Analytics" : "Try it live" %>
            </a>
        <% } else if (exp.getCodeContent() != null && !exp.getCodeContent().isEmpty()) { %>
            <pre style="background:#f5f5f5; padding:12px; border-radius:5px; overflow-x:auto; font-size:12px;"><%= exp.getCodeContent() %></pre>
        <% } %>

        <% if (teacherView && "CUSTOM".equals(exp.getType())) { %>
            <a class="btn btn-red" style="margin-top:8px;"
               href="${pageContext.request.contextPath}/ExperimentServlet?action=delete&id=<%= exp.getId() %>"
               onclick="return confirm('Delete this experiment?');">Delete</a>
        <% } %>
    </div>
<%
        }
    }
%>

<%@ include file="footer.jspf" %>
