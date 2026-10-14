<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header.jspf" %>

<style>
    .exp-desktop-window {
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 18px rgba(0,0,0,0.12);
        max-width: 640px;
        margin: 20px auto;
        overflow: hidden;
        border: 1px solid #d0d4e4;
    }
    .exp-title-bar {
        background: linear-gradient(90deg, #3f51b5, #5c6bc0);
        color: white;
        padding: 10px 16px;
        font-size: 13px;
        font-weight: bold;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .window-controls {
        display: flex;
        gap: 6px;
    }
    .window-dot {
        width: 11px;
        height: 11px;
        border-radius: 50%;
        display: inline-block;
    }
    .dot-red    { background: #ff5f56; }
    .dot-yellow { background: #ffbd2e; }
    .dot-green  { background: #27c93f; }
    .code-accordion-header {
        background: #2d3748;
        color: #e2e8f0;
        padding: 12px 18px;
        border-radius: 6px;
        cursor: pointer;
        font-weight: bold;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 24px;
        user-select: none;
    }
    .code-accordion-header:hover {
        background: #1a202c;
    }
    .code-accordion-content {
        display: none;
        background: #1e1e1e;
        color: #d4d4d4;
        padding: 16px;
        border-radius: 0 0 6px 6px;
        overflow-x: auto;
        font-family: 'Consolas', 'Courier New', monospace;
        font-size: 13px;
        line-height: 1.5;
        border: 1px solid #4a5568;
        border-top: none;
    }
</style>

<h2>Experiment 8: Servlet Input / Output (Arithmetic Calculator)</h2>
<p style="color:#555;">
    Demonstrates Java Servlet request dispatching, parameter extraction, server-side arithmetic computation, and response forwarding back to the client.
</p>

<!-- Live Desktop Window Simulation -->
<div class="exp-desktop-window">
    <div class="exp-title-bar">
        <span>Experiment 8 - ArithmeticServlet Calculator</span>
        <div class="window-controls">
            <span class="window-dot dot-red"></span>
            <span class="window-dot dot-yellow"></span>
            <span class="window-dot dot-green"></span>
        </div>
    </div>

    <div style="padding: 24px;">
        <% if (request.getAttribute("result") != null) { %>
            <div class="msg-success" style="font-size:15px; font-weight:bold; margin-bottom:18px;">
                &#10004; Server Calculation Result: <%= request.getAttribute("result") %>
            </div>
        <% } %>

        <form method="post" action="${pageContext.request.contextPath}/ArithmeticServlet" style="max-width:100%; padding:0; box-shadow:none; background:transparent;">
            <div style="margin-bottom:14px;">
                <label style="display:block; margin-bottom:6px; font-weight:bold; color:#333;">First Operand (Number 1):</label>
                <input type="number" step="any" name="num1" placeholder="Enter first number (e.g. 25)" required style="margin:0;">
            </div>

            <div style="margin-bottom:14px;">
                <label style="display:block; margin-bottom:6px; font-weight:bold; color:#333;">Second Operand (Number 2):</label>
                <input type="number" step="any" name="num2" placeholder="Enter second number (e.g. 5)" required style="margin:0;">
            </div>

            <div style="margin-bottom:18px;">
                <label style="display:block; margin-bottom:6px; font-weight:bold; color:#333;">Arithmetic Operation:</label>
                <select name="operation" style="margin:0;">
                    <option value="add">Addition (+)</option>
                    <option value="subtract">Subtraction (-)</option>
                    <option value="multiply">Multiplication (&#215;)</option>
                    <option value="divide">Division (/)</option>
                </select>
            </div>

            <button type="submit" class="btn btn-blue" style="width:100%; padding:12px; font-size:15px; font-weight:bold;">
                Dispatch Request to Servlet &rarr;
            </button>
        </form>
    </div>
</div>

<!-- Source Code Accordion: ArithmeticServlet.java -->
<div class="code-accordion-header" onclick="toggleCode('exp8ServletCode', 'exp8ServletIcon')">
    <span>&#128196; View Original Java Servlet Source Code (ArithmeticServlet.java)</span>
    <span id="exp8ServletIcon">&#9660; Click to Expand</span>
</div>
<div id="exp8ServletCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#6a9955;">/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Module: Experiment 8 - Servlet Input/Output
 * Description: HTTP Controller for server-side arithmetic operations.
 */</span>
<span style="color:#569cd6;">package</span> <span style="color:#4ec9b0;">com.javalab.servlet</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.ServletException</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.annotation.WebServlet</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.http.HttpServlet</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.http.HttpServletRequest</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.http.HttpServletResponse</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.io.IOException</span>;

<span style="color:#569cd6;">@WebServlet</span>(<span style="color:#ce9178;">"/ArithmeticServlet"</span>)
<span style="color:#569cd6;">public class</span> <span style="color:#4ec9b0;">ArithmeticServlet</span> <span style="color:#569cd6;">extends</span> <span style="color:#4ec9b0;">HttpServlet</span> {

    <span style="color:#569cd6;">@Override</span>
    <span style="color:#569cd6;">protected void</span> <span style="color:#dcdcaa;">doPost</span>(<span style="color:#4ec9b0;">HttpServletRequest</span> request, <span style="color:#4ec9b0;">HttpServletResponse</span> response)
            <span style="color:#569cd6;">throws</span> <span style="color:#4ec9b0;">ServletException</span>, <span style="color:#4ec9b0;">IOException</span> {

        <span style="color:#4ec9b0;">String</span> result;

        <span style="color:#569cd6;">try</span> {
            <span style="color:#569cd6;">double</span> num1 = <span style="color:#4ec9b0;">Double</span>.<span style="color:#dcdcaa;">parseDouble</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"num1"</span>));
            <span style="color:#569cd6;">double</span> num2 = <span style="color:#4ec9b0;">Double</span>.<span style="color:#dcdcaa;">parseDouble</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"num2"</span>));
            <span style="color:#4ec9b0;">String</span> operation = request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"operation"</span>);

            <span style="color:#569cd6;">double</span> value;
            <span style="color:#569cd6;">switch</span> (operation) {
                <span style="color:#569cd6;">case</span> <span style="color:#ce9178;">"add"</span>:      value = num1 + num2; <span style="color:#569cd6;">break</span>;
                <span style="color:#569cd6;">case</span> <span style="color:#ce9178;">"subtract"</span>: value = num1 - num2; <span style="color:#569cd6;">break</span>;
                <span style="color:#569cd6;">case</span> <span style="color:#ce9178;">"multiply"</span>: value = num1 * num2; <span style="color:#569cd6;">break</span>;
                <span style="color:#569cd6;">case</span> <span style="color:#ce9178;">"divide"</span>:
                    <span style="color:#569cd6;">if</span> (num2 == 0) {
                        request.<span style="color:#dcdcaa;">setAttribute</span>(<span style="color:#ce9178;">"result"</span>, <span style="color:#ce9178;">"Error: division by zero"</span>);
                        request.<span style="color:#dcdcaa;">getRequestDispatcher</span>(<span style="color:#ce9178;">"/arithmetic.jsp"</span>).<span style="color:#dcdcaa;">forward</span>(request, response);
                        <span style="color:#569cd6;">return</span>;
                    }
                    value = num1 / num2;
                    <span style="color:#569cd6;">break</span>;
                <span style="color:#569cd6;">default</span>:
                    value = 0;
            }

            result = <span style="color:#4ec9b0;">String</span>.<span style="color:#dcdcaa;">valueOf</span>(value);

        } <span style="color:#569cd6;">catch</span> (<span style="color:#4ec9b0;">NumberFormatException</span> e) {
            result = <span style="color:#ce9178;">"Error: please enter valid numbers"</span>;
        }

        request.<span style="color:#dcdcaa;">setAttribute</span>(<span style="color:#ce9178;">"result"</span>, result);
        request.<span style="color:#dcdcaa;">getRequestDispatcher</span>(<span style="color:#ce9178;">"/arithmetic.jsp"</span>).<span style="color:#dcdcaa;">forward</span>(request, response);
    }
}
</code></pre>
</div>

<script>
    function toggleCode(id, iconId) {
        var el = document.getElementById(id);
        var icon = document.getElementById(iconId);
        if (el.style.display === 'block') {
            el.style.display = 'none';
            icon.innerText = '▼ Click to Expand';
        } else {
            el.style.display = 'block';
            icon.innerText = '▲ Click to Collapse';
        }
    }
</script>

<%@ include file="footer.jspf" %>
