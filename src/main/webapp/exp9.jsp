<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ include file="header.jspf" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean submitted = (username != null || password != null);

    List<String> errors = new ArrayList<>();
    boolean loginSuccess = false;

    if (submitted) {
        if (username == null || username.trim().isEmpty()) {
            errors.add("Username is required.");
        }
        if (password == null || password.trim().isEmpty()) {
            errors.add("Password is required.");
        } else if (password.trim().length() < 6) {
            errors.add("Password must be at least 6 characters long.");
        }

        if (errors.isEmpty()) {
            if ("student".equalsIgnoreCase(username.trim()) && "pass123".equals(password.trim())) {
                loginSuccess = true;
            } else {
                errors.add("Invalid username or password. Check lab demo credentials.");
            }
        }
    }
%>

<style>
    .exp-desktop-window {
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 18px rgba(0,0,0,0.12);
        max-width: 540px;
        margin: 20px auto;
        overflow: hidden;
        border: 1px solid #d0d4e4;
    }
    .exp-title-bar {
        background: linear-gradient(90deg, #1e3c72, #2a5298);
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

<h2>Experiment 9: Student Login Validation (JSP Scriptlet)</h2>
<p style="color:#555;">
    Standalone JSP validation demonstrating client-side parameter processing, length constraint enforcement, and dynamic error state rendering directly within JavaServer Pages.
</p>

<!-- Live Desktop Window Simulation -->
<div class="exp-desktop-window">
    <div class="exp-title-bar">
        <span>Experiment 9 - JSP Login Validator</span>
        <div class="window-controls">
            <span class="window-dot dot-red"></span>
            <span class="window-dot dot-yellow"></span>
            <span class="window-dot dot-green"></span>
        </div>
    </div>

    <div style="padding: 24px;">
        <% if (loginSuccess) { %>
            <div class="msg-success" style="font-weight:bold; margin-bottom:18px;">
                &#10004; Validation Successful! Welcome, <%= username %>.
            </div>
        <% } else if (submitted && !errors.isEmpty()) { %>
            <div class="msg-error" style="margin-bottom:18px;">
                <strong>Validation Errors Encountered:</strong>
                <ul style="margin:6px 0 0 18px; padding:0;">
                    <% for (String err : errors) { %>
                        <li><%= err %></li>
                    <% } %>
                </ul>
            </div>
        <% } %>

        <form method="post" action="exp9.jsp" style="max-width:100%; padding:0; box-shadow:none; background:transparent;">
            <div style="margin-bottom:14px;">
                <label style="display:block; margin-bottom:6px; font-weight:bold; color:#333;">Username:</label>
                <input type="text" name="username" value="<%= username == null ? "" : username %>" placeholder="e.g. student" style="margin:0;">
            </div>

            <div style="margin-bottom:14px;">
                <label style="display:block; margin-bottom:6px; font-weight:bold; color:#333;">Password (min 6 chars):</label>
                <input type="password" name="password" placeholder="e.g. pass123" style="margin:0;">
            </div>

            <div style="background:#f8fafc; border-radius:6px; padding:10px 14px; margin-bottom:16px; font-size:12px; color:#64748b; border:1px solid #e2e8f0;">
                &#128273; <strong>Demo Credentials:</strong> Username: <code>student</code> | Password: <code>pass123</code>
            </div>

            <button type="submit" class="btn btn-blue" style="width:100%; padding:12px; font-size:15px; font-weight:bold;">
                Validate Credentials (JSP) &rarr;
            </button>
        </form>
    </div>
</div>

<!-- Source Code Accordion: exp9.jsp -->
<div class="code-accordion-header" onclick="toggleCode('exp9SourceCode', 'exp9SourceIcon')">
    <span>&#128196; View Original JSP Source Code (exp9.jsp)</span>
    <span id="exp9SourceIcon">&#9660; Click to Expand</span>
</div>
<div id="exp9SourceCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#569cd6;">&lt;%@ page</span> <span style="color:#9cdcfe;">contentType</span>=<span style="color:#ce9178;">"text/html;charset=UTF-8"</span> <span style="color:#569cd6;">%&gt;</span>
<span style="color:#569cd6;">&lt;%@ page</span> <span style="color:#9cdcfe;">import</span>=<span style="color:#ce9178;">"java.util.ArrayList, java.util.List"</span> <span style="color:#569cd6;">%&gt;</span>

<span style="color:#569cd6;">&lt;%</span>
    <span style="color:#4ec9b0;">String</span> username = request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"username"</span>);
    <span style="color:#4ec9b0;">String</span> password = request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"password"</span>);
    <span style="color:#569cd6;">boolean</span> submitted = (username != <span style="color:#569cd6;">null</span> || password != <span style="color:#569cd6;">null</span>);

    <span style="color:#4ec9b0;">List</span>&lt;<span style="color:#4ec9b0;">String</span>&gt; errors = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">ArrayList</span>&lt;&gt;();
    <span style="color:#569cd6;">boolean</span> loginSuccess = <span style="color:#569cd6;">false</span>;

    <span style="color:#569cd6;">if</span> (submitted) {
        <span style="color:#569cd6;">if</span> (username == <span style="color:#569cd6;">null</span> || username.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">isEmpty</span>()) {
            errors.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"Username is required."</span>);
        }
        <span style="color:#569cd6;">if</span> (password == <span style="color:#569cd6;">null</span> || password.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">isEmpty</span>()) {
            errors.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"Password is required."</span>);
        } <span style="color:#569cd6;">else if</span> (password.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">length</span>() &lt; 6) {
            errors.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"Password must be at least 6 characters long."</span>);
        }

        <span style="color:#569cd6;">if</span> (errors.<span style="color:#dcdcaa;">isEmpty</span>()) {
            <span style="color:#569cd6;">if</span> (<span style="color:#ce9178;">"student"</span>.<span style="color:#dcdcaa;">equalsIgnoreCase</span>(username.<span style="color:#dcdcaa;">trim</span>()) &amp;&amp; <span style="color:#ce9178;">"pass123"</span>.<span style="color:#dcdcaa;">equals</span>(password.<span style="color:#dcdcaa;">trim</span>())) {
                loginSuccess = <span style="color:#569cd6;">true</span>;
            } <span style="color:#569cd6;">else</span> {
                errors.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"Invalid username or password. Check lab demo credentials."</span>);
            }
        }
    }
<span style="color:#569cd6;">%&gt;</span>
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
