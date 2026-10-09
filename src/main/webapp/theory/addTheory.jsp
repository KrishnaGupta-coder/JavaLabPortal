<%@ include file="../header.jspf" %>

<h2>Add Theory Content</h2>

<form method="post" action="${pageContext.request.contextPath}/TheoryServlet">
    <input type="hidden" name="action" value="add">

    <label>Title:</label>
    <input type="text" name="title" required>

    <label>Content:</label>
    <textarea name="content" rows="10" required placeholder="Write or paste the study material here..."></textarea>

    <button type="submit" class="btn btn-orange">Publish</button>
</form>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/TheoryServlet?action=list">&larr; Back to Theory Content</a>
</p>

<%@ include file="../footer.jspf" %>
