<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Java Lab Portal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
    <style>
        .login-box {
            max-width: 440px;
            margin: 60px auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.12);
            overflow: hidden;
            border: 1px solid #e0e0e0;
        }
        .login-header {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 24px;
            text-align: center;
        }
        .role-switch {
            display: flex;
            background: #eef2f7;
            padding: 4px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .role-switch label {
            flex: 1;
            text-align: center;
            padding: 8px 12px;
            margin: 0;
            cursor: pointer;
            border-radius: 6px;
            font-weight: 600;
            color: #555;
            transition: all 0.2s ease;
        }
        .role-switch input[type="radio"] { display: none; }
        .role-switch input[type="radio"]:checked + span {
            background: white;
            color: #1e3c72;
            display: block;
            border-radius: 6px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.15);
            padding: 8px;
        }
    </style>
</head>
<body style="background: #f4f6f9; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;">

<div class="login-box">
    <div class="login-header">
        <h2 style="margin:0 0 4px 0; font-size:22px;">Java Lab Portal</h2>
        <p style="margin:0; font-size:13px; opacity:0.85;">RTU 5th Sem - Advanced Java Laboratory</p>
    </div>

    <div style="padding: 28px;">

        <% if (request.getParameter("error") != null) { %>
            <div class="msg-error" style="margin-bottom:16px;"><%= request.getParameter("error") %></div>
        <% } %>
        <% if (request.getParameter("msg") != null) { %>
            <div class="msg-success" style="margin-bottom:16px;"><%= request.getParameter("msg") %></div>
        <% } %>

        <form method="post" action="${pageContext.request.contextPath}/LoginServlet">
            <label style="font-weight:bold; margin-bottom:6px; display:block;">Select Role:</label>
            <div class="role-switch">
                <label>
                    <input type="radio" name="role" value="TEACHER" checked onchange="updateHelp('TEACHER')">
                    <span>Teacher (Faculty)</span>
                </label>
                <label>
                    <input type="radio" name="role" value="STUDENT" onchange="updateHelp('STUDENT')">
                    <span>Student</span>
                </label>
            </div>

            <label id="lblUser">Username</label>
            <input type="text" name="username" id="txtUser" required placeholder="e.g. teacher or Krishna Gupta">

            <label id="lblPass">Password</label>
            <input type="password" name="password" id="txtPass" required placeholder="Enter password or RTU Roll No">

            <button type="submit" class="btn btn-blue" style="width:100%; padding:12px; font-size:15px; margin-top:8px;">Sign In</button>
        </form>

        <div style="margin-top:20px; padding-top:16px; border-top:1px solid #eee; text-align:center;">
            <p style="margin:0 0 8px 0; font-size:13px; color:#666;">New student without an account?</p>
            <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-purple" style="display:block; padding:9px; text-decoration:none;">Register as Student</a>
        </div>
    </div>
</div>

<script>
    function updateHelp(role) {
        var lblUser = document.getElementById('lblUser');
        var lblPass = document.getElementById('lblPass');
        var txtUser = document.getElementById('txtUser');
        var txtPass = document.getElementById('txtPass');

        if (role === 'TEACHER') {
            lblUser.innerText = 'Username';
            lblPass.innerText = 'Password';
            txtUser.placeholder = 'e.g. teacher';
            txtPass.placeholder = 'teacher123';
        } else {
            lblUser.innerText = 'Student Name or Roll No.';
            lblPass.innerText = 'Password or RTU Roll Number';
            txtUser.placeholder = 'e.g. Krishna Gupta or 24EARAD083';
            txtPass.placeholder = 'e.g. 24EARAD083';
        }
    }
</script>

</body>
</html>
