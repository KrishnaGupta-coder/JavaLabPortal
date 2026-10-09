<%@ include file="../header.jspf" %>

<h2>Add New Experiment</h2>
<p style="color:#666; font-size:13px;">Add custom lab experiment details, description, and source code reference.</p>

<form method="post" action="${pageContext.request.contextPath}/ExperimentServlet">
    <input type="hidden" name="action" value="add">

    <label>Title:</label>
    <input type="text" name="title" required>

    <label>Description:</label>
    <textarea name="description" rows="3" required></textarea>

    <label>Code / Instructions (optional):</label>
    <textarea name="codeContent" rows="8" placeholder="Paste the program's code or step-by-step instructions here..."></textarea>

    <button type="submit" class="btn btn-purple">Add Experiment</button>
</form>

<p style="margin-top:14px;">
    <a href="${pageContext.request.contextPath}/ExperimentServlet?action=list">&larr; Back to Experiments</a>
</p>

<%@ include file="../footer.jspf" %>

