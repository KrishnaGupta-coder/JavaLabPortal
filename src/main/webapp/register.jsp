<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration - Java Lab Portal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
    <style>
        .reg-container {
            max-width: 520px;
            margin: 40px auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.12);
            overflow: hidden;
            border: 1px solid #e0e0e0;
        }
        .reg-header {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            color: white;
            padding: 24px;
            text-align: center;
        }
        .reg-body { padding: 28px; }
        .notice-box {
            background: #e8f4fd;
            border-left: 4px solid #2196f3;
            padding: 10px 14px;
            font-size: 12.5px;
            color: #0d47a1;
            margin-bottom: 20px;
            border-radius: 4px;
        }
    </style>
</head>
<body style="background: #f0f2f5; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;">

<div class="reg-container">
    <div class="reg-header">
        <h2 style="margin:0 0 6px 0; font-size:22px;">Student Registration Portal</h2>
        <p style="margin:0; font-size:13px; opacity:0.9;">RTU 5th Sem - Department of Artificial Intelligence & Data Science</p>
    </div>

    <div class="reg-body">
        <div class="notice-box">
            <strong>Security Notice:</strong> Registration is strictly reserved for enrolled <strong>Students</strong>. Faculty accounts are provisioned exclusively by system administration.
        </div>

        <% if (request.getParameter("error") != null) { %>
            <div class="msg-error" style="margin-bottom:16px;"><%= request.getParameter("error") %></div>
        <% } %>

        <form method="post" action="${pageContext.request.contextPath}/RegisterServlet">
            <label>Full Student Name <span style="color:red;">*</span></label>
            <input type="text" name="name" placeholder="e.g. Krishna Gupta" required>

            <label>RTU Roll Number <span style="color:red;">*</span></label>
            <input type="text" name="rollNumber" placeholder="e.g. 24EARAD083" required>

            <label>Academic Batch / Section <span style="color:red;">*</span></label>
            <select name="classId" required style="width:100%; padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:14px; background:white;">
                <option value="1">AI&DS-A (Artificial Intelligence & Data Science - A)</option>
                <option value="2">AI&DS-B (Artificial Intelligence & Data Science - B)</option>
                <option value="3">AI&DS-C (Artificial Intelligence & Data Science - C)</option>
                <option value="4">CS-A (Computer Science - A)</option>
                <option value="5">CS-B (Computer Science - B)</option>
                <option value="6">CS-C (Computer Science - C)</option>
                <option value="7">IT (Information Technology)</option>
            </select>

            <label>College Email Address</label>
            <input type="email" name="email" placeholder="e.g. student@aceit.ac.in">

            <label>Create Account Password <span style="color:red;">*</span></label>
            <input type="password" name="password" placeholder="Choose a secure password" required>

            <label>Confirm Password <span style="color:red;">*</span></label>
            <input type="password" name="confirmPassword" placeholder="Re-enter your password" required>

            <button type="submit" class="btn btn-green" style="width:100%; padding:12px; font-size:15px; margin-top:10px;">Register Student Profile</button>
        </form>

        <p style="text-align:center; margin-top:20px; font-size:13px; color:#666;">
            Already registered? <a href="${pageContext.request.contextPath}/login.jsp" style="color:#1e3c72; font-weight:bold;">Log in here</a>
        </p>
    </div>
</div>

</body>
</html>
