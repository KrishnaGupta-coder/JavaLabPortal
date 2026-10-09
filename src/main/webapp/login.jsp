<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Lab Portal - Login</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #3f51b5, #303f9f);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-card {
            background: white;
            border-radius: 10px;
            padding: 36px 40px;
            width: 360px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.25);
        }
        .login-card h1 {
            margin: 0 0 4px 0;
            font-size: 22px;
            color: #303f9f;
            text-align: center;
        }
        .login-card .subtitle {
            text-align: center;
            font-size: 12px;
            color: #888;
            margin-bottom: 22px;
        }
        .role-toggle {
            display: flex;
            border: 1px solid #ccc;
            border-radius: 6px;
            overflow: hidden;
            margin-bottom: 18px;
        }
        .role-toggle label {
            flex: 1;
            text-align: center;
            padding: 9px 0;
            cursor: pointer;
            font-size: 13px;
            font-weight: bold;
            color: #555;
            background: #f5f5f5;
            margin: 0;
        }
        .role-toggle input {
            display: none;
        }
        .role-toggle input:checked + span {
            display: block;
        }
        .role-toggle input#roleTeacher:checked ~ label[for=roleTeacher],
        .role-toggle input#roleStudent:checked ~ label[for=roleStudent] {
            background: #3f51b5;
            color: white;
        }
        label.field-label {
            font-size: 13px;
            color: #444;
            font-weight: bold;
            display: block;
            margin-bottom: 4px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            box-sizing: border-box;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        button {
            width: 100%;
            padding: 11px;
            background: #3f51b5;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover {
            background: #303f9f;
        }
        .hint {
            font-size: 11px;
            color: #999;
            text-align: center;
            margin-top: 14px;
        }
        .msg-error {
            background: #fdd;
            color: #a10000;
            padding: 9px 12px;
            border-radius: 4px;
            font-size: 13px;
            margin-bottom: 16px;
            border-left: 4px solid #f44336;
        }
        .msg-success {
            background: #d6f5d6;
            color: #256029;
            padding: 9px 12px;
            border-radius: 4px;
            font-size: 13px;
            margin-bottom: 16px;
            border-left: 4px solid #4caf50;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <h1>Java Lab Portal</h1>
        <div class="subtitle">Advanced Java Lab - Team Ram Babu Buri</div>

        <% if (request.getParameter("error") != null) { %>
            <div class="msg-error"><%= request.getParameter("error") %></div>
        <% } %>
        <% if (request.getParameter("msg") != null) { %>
            <div class="msg-success"><%= request.getParameter("msg") %></div>
        <% } %>

        <form method="post" action="${pageContext.request.contextPath}/LoginServlet">
            <div class="role-toggle">
                <input type="radio" id="roleTeacher" name="role" value="TEACHER" checked>
                <label for="roleTeacher">Teacher</label>
                <input type="radio" id="roleStudent" name="role" value="STUDENT">
                <label for="roleStudent">Student</label>
            </div>

            <label class="field-label">Username</label>
            <input type="text" name="username" required autofocus>

            <label class="field-label">Password</label>
            <input type="password" name="password" required>

            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>

