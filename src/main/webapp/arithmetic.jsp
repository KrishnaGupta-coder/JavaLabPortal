<%@ include file="header.jspf" %>

<h2>8. Servlet Input/Output Demo</h2>
<p>This form posts to <code>ArithmeticServlet</code>, which computes
the result on the server and forwards it back here to display in
the browser.</p>

<% if (request.getAttribute("result") != null) { %>
    <div class="msg-success">Result: <%= request.getAttribute("result") %></div>
<% } %>

<form method="post" action="${pageContext.request.contextPath}/ArithmeticServlet">
    <label>First number:</label>
    <input type="number" step="any" name="num1" required>

    <label>Second number:</label>
    <input type="number" step="any" name="num2" required>

    <label>Operation:</label>
    <select name="operation">
        <option value="add">Add</option>
        <option value="subtract">Subtract</option>
        <option value="multiply">Multiply</option>
        <option value="divide">Divide</option>
    </select>

    <button type="submit" class="btn btn-blue">Compute</button>
</form>

<%@ include file="footer.jspf" %>

