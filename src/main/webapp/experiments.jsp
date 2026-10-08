<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Experiment" %>
<%@ include file="header.jspf" %>

<%
    boolean teacherView = "TEACHER".equals(session.getAttribute("role"));
    List<Experiment> experiments = (List<Experiment>) request.getAttribute("experiments");
%>

<h2>Lab Experiments</h2>
<p>Explore the Java practical lab experiments below. Built-in exercises can be executed live in browser, desktop network/RMI exercises provide interactive simulations, and additional experiments are listed by course faculty.</p>

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
%>
    <div class="card" style="border-left-color: <%= "CUSTOM".equals(exp.getType()) ? "#9c27b0" : "#4caf50" %>;">
        <h3><%= exp.getOrderNo() %>. <%= exp.getTitle() %> <span class="badge <%= badgeClass %>"><%= badgeText %></span></h3>
        <p><%= exp.getDescription() %></p>

        <% if (exp.getLiveUrl() != null && !exp.getLiveUrl().isEmpty()) { %>
            <a class="btn btn-green" href="${pageContext.request.contextPath}/<%= exp.getLiveUrl() %>">Try it live</a>
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


