<%@ include file="header.jspf" %>

<%
    boolean teacherView = "TEACHER".equals(session.getAttribute("role"));
%>

<div class="card" style="border-left-color:#4caf50;">
    <h3>Welcome, <%= session.getAttribute("name") %></h3>
    <% if (teacherView) { %>
        <p>You're logged in as <strong>Teacher</strong>. You can manage
        students, classes, theory content, and add experiments beyond
        the built-in 10.</p>
    <% } else { %>
        <p>You're logged in as <strong>Student</strong>
        (<%= session.getAttribute("className") %>). You can view all lab
        experiments and the theory content your teacher has added.</p>
    <% } %>
</div>

<% if (teacherView) { %>

<div class="card">
    <h3>Student Management</h3>
    <p>Add, update, delete, and search students - organized by class.</p>
    <a class="btn btn-blue" href="${pageContext.request.contextPath}/StudentServlet?action=list">Open Student Management</a>
</div>

<div class="card">
    <h3>Manage Classes</h3>
    <p>Create classes (e.g. AI&amp;DS-A, CS-B, IT) before adding students into them.</p>
    <a class="btn btn-purple" href="${pageContext.request.contextPath}/ClassServlet?action=list">Manage Classes</a>
</div>

<div class="card">
    <h3>Theory Content</h3>
    <p>Add study material for students to read.</p>
    <a class="btn btn-orange" href="${pageContext.request.contextPath}/theory/addTheory.jsp">Add Theory Content</a>
</div>

<div class="card">
    <h3>Experiments</h3>
    <p>View the 10 built-in experiments, or add new ones of your own.</p>
    <a class="btn btn-green" href="${pageContext.request.contextPath}/ExperimentServlet?action=list">View Experiments</a>
    &nbsp;
    <a class="btn btn-purple" href="${pageContext.request.contextPath}/experiments/addExperiment.jsp">+ Add New Experiment</a>
</div>

<% } else { %>

<div class="card">
    <h3>Lab Experiments</h3>
    <p>View and try out all the lab experiments live.</p>
    <a class="btn btn-green" href="${pageContext.request.contextPath}/ExperimentServlet?action=list">View Experiments</a>
</div>

<div class="card">
    <h3>Theory Content</h3>
    <p>Study material added by your teacher.</p>
    <a class="btn btn-orange" href="${pageContext.request.contextPath}/TheoryServlet?action=list">View Theory Content</a>
</div>

<div class="card">
    <h3>Online Student Feedback System</h3>
    <p>Submit your feedback for the course.</p>
    <a class="btn btn-blue" href="${pageContext.request.contextPath}/feedback.jsp">Open Feedback System</a>
</div>

<% } %>

<%@ include file="footer.jspf" %>

