<%@ include file="header.jspf" %>

<div class="msg-error">
    <strong>Something went wrong:</strong>
    <p><%= request.getAttribute("errorMessage") %></p>
</div>

<p><a href="${pageContext.request.contextPath}/index.jsp">&larr; Back to Home</a></p>

<%@ include file="footer.jspf" %>

