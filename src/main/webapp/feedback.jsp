<%@ include file="header.jspf" %>

<h2>10. Online Student Feedback System (Mini Project)</h2>
<p>Submit feedback below - it's saved to the database and shown
immediately on the feedback list.</p>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success"><%= request.getParameter("msg") %></div>
<% } %>

<form method="post" action="${pageContext.request.contextPath}/FeedbackServlet">
    <input type="hidden" name="action" value="submit">

    <label>Your Name:</label>
    <input type="text" name="studentName" required>

    <label>Course:</label>
    <input type="text" name="course" required>

    <label>Rating (1-5):</label>
    <select name="rating">
        <option value="5">5 - Excellent</option>
        <option value="4">4 - Good</option>
        <option value="3">3 - Average</option>
        <option value="2">2 - Poor</option>
        <option value="1">1 - Very Poor</option>
    </select>

    <label>Feedback:</label>
    <textarea name="feedbackText" rows="4" required></textarea>

    <button type="submit" class="btn btn-orange">Submit Feedback</button>
</form>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/FeedbackServlet?action=list">View all submitted feedback &rarr;</a>
</p>

<%@ include file="footer.jspf" %>
