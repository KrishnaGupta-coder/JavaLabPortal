<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.javalab.model.Feedback, com.javalab.dao.FeedbackDAO" %>
<%@ include file="header.jspf" %>

<%
    String currentRole = (String) session.getAttribute("role");
    boolean isTeacherRole = "TEACHER".equals(currentRole);
    boolean isStudentRole = "STUDENT".equals(currentRole);
    String currentUserName = (String) session.getAttribute("name");
    String currentRoll = (String) session.getAttribute("rollNumber");

    String activeTab = request.getParameter("tab");
    if (activeTab == null) activeTab = "login";

    boolean justSubmitted = "true".equals(request.getParameter("submitted"));

    // For teacher view, load records
    List<Feedback> teacherFeedbackList = null;
    int totalCount = 0;
    double avgRating = 0.0;
    if (isTeacherRole) {
        FeedbackDAO dao = new FeedbackDAO();
        String fQuery = request.getParameter("facultyQuery");
        String cQuery = request.getParameter("courseQuery");
        String rStr = request.getParameter("ratingFilter");
        Integer rFilter = null;
        if (rStr != null && !rStr.trim().isEmpty()) {
            try { rFilter = Integer.parseInt(rStr.trim()); } catch (Exception ignored) {}
        }
        teacherFeedbackList = dao.searchFeedback(fQuery, cQuery, rFilter);
        totalCount = teacherFeedbackList != null ? teacherFeedbackList.size() : 0;
        if (totalCount > 0) {
            int sum = 0;
            for (Feedback f : teacherFeedbackList) { sum += f.getRating(); }
            avgRating = (double) sum / totalCount;
        }
    }
%>

<style>
    /* Clean layout styling specifically for Exp 10 */
    .exp10-container {
        max-width: 1000px;
        margin: 0 auto;
    }
    .exp10-header {
        background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
        color: white;
        padding: 24px;
        border-radius: 10px;
        margin-bottom: 24px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.12);
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 15px;
    }
    .exp10-header h2 {
        margin: 0 0 6px 0;
        color: white;
        font-size: 24px;
    }
    .exp10-header p {
        margin: 0;
        color: #e0e7ff;
        font-size: 13px;
    }
    .user-pill {
        background: rgba(255,255,255,0.18);
        border: 1px solid rgba(255,255,255,0.3);
        padding: 8px 16px;
        border-radius: 30px;
        font-size: 13px;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .btn-exp-logout {
        background: #ef4444;
        color: white;
        padding: 5px 12px;
        border-radius: 20px;
        text-decoration: none;
        font-size: 12px;
        font-weight: bold;
        transition: 0.2s;
    }
    .btn-exp-logout:hover {
        background: #dc2626;
    }
    .btn-exp-switch {
        background: #3b82f6;
        color: white;
        padding: 5px 12px;
        border-radius: 20px;
        text-decoration: none;
        font-size: 12px;
        font-weight: bold;
    }
    .btn-exp-switch:hover {
        background: #2563eb;
    }

    /* Auth card & vertical forms */
    .auth-card {
        background: white;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0,0,0,0.08);
        border: 1px solid #e2e8f0;
        max-width: 520px;
        margin: 20px auto;
        overflow: hidden;
    }
    .auth-tabs {
        display: flex;
        background: #f8fafc;
        border-bottom: 2px solid #e2e8f0;
    }
    .auth-tab {
        flex: 1;
        padding: 14px;
        text-align: center;
        font-weight: bold;
        font-size: 14px;
        color: #64748b;
        cursor: pointer;
        border-bottom: 3px solid transparent;
        transition: 0.2s;
        text-decoration: none;
    }
    .auth-tab.active {
        color: #1e3c72;
        background: white;
        border-bottom-color: #1e3c72;
    }
    .auth-body {
        padding: 28px;
    }

    /* Vertical Form Groups */
    .form-group {
        display: block;
        margin-bottom: 16px;
        text-align: left;
    }
    .form-group label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        font-size: 13px;
        color: #334155;
    }
    .form-group input, .form-group select, .form-group textarea {
        display: block;
        width: 100%;
        box-sizing: border-box;
        padding: 10px 14px;
        border: 1px solid #cbd5e1;
        border-radius: 6px;
        font-size: 14px;
        color: #1e293b;
        background: white;
        transition: border-color 0.15s, box-shadow 0.15s;
    }
    .form-group input:focus, .form-group select:focus, .form-group textarea:focus {
        border-color: #3b82f6;
        box-shadow: 0 0 0 3px rgba(59,130,246,0.15);
        outline: none;
    }

    /* Role Pill Selector */
    .role-pill-group {
        display: flex;
        background: #f1f5f9;
        padding: 4px;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .role-pill-btn {
        flex: 1;
        padding: 9px;
        border: none;
        border-radius: 6px;
        background: transparent;
        color: #64748b;
        font-weight: 600;
        font-size: 13px;
        cursor: pointer;
        transition: 0.2s;
    }
    .role-pill-btn.active {
        background: white;
        color: #1e3c72;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }

    /* Submit feedback box */
    .feedback-box {
        background: white;
        border-radius: 12px;
        box-shadow: 0 4px 16px rgba(0,0,0,0.06);
        border: 1px solid #e2e8f0;
        padding: 28px;
        max-width: 720px;
        margin: 0 auto;
    }
    .faculty-section {
        background: #fffbeb;
        border: 1px solid #fde68a;
        padding: 16px;
        border-radius: 8px;
        margin-bottom: 18px;
    }

    /* Teacher Table & Stats */
    .stat-cards {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 16px;
        margin-bottom: 22px;
    }
    .stat-card {
        background: white;
        padding: 20px;
        border-radius: 10px;
        border: 1px solid #e2e8f0;
        box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        text-align: center;
    }
    .stat-card .val {
        font-size: 26px;
        font-weight: bold;
        color: #1e3c72;
    }
    .stat-card .lbl {
        font-size: 12px;
        color: #64748b;
        text-transform: uppercase;
        font-weight: 600;
        margin-top: 4px;
    }

    /* Teacher Toolbar */
    .teacher-toolbar {
        background: white;
        padding: 18px 22px;
        border-radius: 10px;
        border: 1px solid #e2e8f0;
        margin-bottom: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 12px;
    }

    
    /* Code Accordion Styles */
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
        margin-top: 14px;
        user-select: none;
        transition: background 0.2s;
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

    /* Printing styles */
    @media print {
        body { background: white !important; color: black !important; }
        .topbar, .navbar, .exp10-header, .teacher-toolbar, form, .btn-exp-logout { display: none !important; }
        .feedback-table-container { box-shadow: none !important; border: 1px solid #000 !important; }
        th { background: #333 !important; color: white !important; }
    }
</style>

<div class="exp10-container">

    <!-- Experiment 10 Header Banner -->
    <div class="exp10-header">
        <div>
            <h2>Experiment 10: Online Student Feedback System</h2>
            <p>Role-Based Course &amp; Faculty Evaluation System | Department of AI &amp; Data Science</p>
        </div>
        <div>
            <% if (isTeacherRole) { %>
                <div class="user-pill">
                    <span>&#128104;&#8205;&#127979; <strong>Faculty:</strong> <%= currentUserName != null ? currentUserName : "Er. Ram Babu Buri" %></span>
                    <a href="${pageContext.request.contextPath}/FeedbackServlet?action=exp10_logout" class="btn-exp-logout">Logout</a>
                </div>
            <% } else if (isStudentRole) { %>
                <div class="user-pill">
                    <span>&#127891; <strong>Student:</strong> <%= currentUserName != null ? currentUserName : "Student" %> (<%= currentRoll != null ? currentRoll : "Roll No" %>)</span>
                    <a href="${pageContext.request.contextPath}/FeedbackServlet?action=exp10_logout" class="btn-exp-logout">Logout</a>
                </div>
            <% } else { %>
                <div class="user-pill">
                    <span>&#128274; <strong>Feedback System Portal</strong></span>
                </div>
            <% } %>
        </div>
    </div>

    <!-- Alert Messages -->
    <% if (request.getParameter("error") != null) { %>
        <div class="msg-error" style="margin-bottom:20px; font-size:14px; padding:14px;">
            &#9888; <strong>Security Alert:</strong> <%= request.getParameter("error") %>
        </div>
    <% } %>
    <% if (request.getParameter("msg") != null) { %>
        <div class="msg-success" style="margin-bottom:20px; font-size:14px; padding:14px;">
            &#10004; <%= request.getParameter("msg") %>
        </div>
    <% } %>

    <!-- VIEW 1: TEACHER DASHBOARD (TEACHER ONLY) -->
    <% if (isTeacherRole) { %>

        <!-- Statistics Badges -->
        <div class="stat-cards">
            <div class="stat-card">
                <div class="val"><%= totalCount %></div>
                <div class="lbl">Total Feedbacks Received</div>
            </div>
            <div class="stat-card">
                <div class="val" style="color:#f59e0b;"><%= String.format("%.1f", avgRating) %> &#9733;</div>
                <div class="lbl">Average Faculty Rating</div>
            </div>
            <div class="stat-card">
                <div class="val" style="color:#10b981;">Departmental</div>
                <div class="lbl">Evaluation Status: Active</div>
            </div>
        </div>

        <!-- Teacher Action & Filter Toolbar -->
        <div class="teacher-toolbar">
            <div style="font-weight:bold; color:#1e3c72; font-size:16px;">
                &#128269; Faculty Search &amp; Filter Reports
            </div>
            <div style="display:flex; gap:10px;">
                <a href="${pageContext.request.contextPath}/FeedbackServlet?action=export_csv" class="btn btn-green" style="font-size:12px; padding:8px 14px;">
                    &#128229; Export to Excel (.CSV)
                </a>
                <button type="button" onclick="window.print()" class="btn btn-blue" style="font-size:12px; padding:8px 14px;">
                    &#128438; Print / Save PDF
                </button>
            </div>
        </div>

        <!-- Search Bar Form -->
        <form method="get" action="feedback.jsp" style="max-width:100%; margin-bottom:22px; background:white; padding:18px; border-radius:10px; border:1px solid #e2e8f0;">
            <div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap:14px; align-items:end;">
                <div class="form-group" style="margin:0;">
                    <label>Filter by Faculty Name</label>
                    <input type="text" name="facultyQuery" value="<%= request.getParameter("facultyQuery") != null ? request.getParameter("facultyQuery") : "" %>" placeholder="e.g. Ram Babu Buri">
                </div>
                <div class="form-group" style="margin:0;">
                    <label>Filter by Subject / Course</label>
                    <input type="text" name="courseQuery" value="<%= request.getParameter("courseQuery") != null ? request.getParameter("courseQuery") : "" %>" placeholder="e.g. Advanced Java">
                </div>
                <div class="form-group" style="margin:0;">
                    <label>Rating Filter</label>
                    <select name="ratingFilter">
                        <option value="">All Ratings (1 - 5 Stars)</option>
                        <option value="5" <%= "5".equals(request.getParameter("ratingFilter")) ? "selected" : "" %>>5 Stars Only</option>
                        <option value="4" <%= "4".equals(request.getParameter("ratingFilter")) ? "selected" : "" %>>4 Stars Only</option>
                        <option value="3" <%= "3".equals(request.getParameter("ratingFilter")) ? "selected" : "" %>>3 Stars Only</option>
                        <option value="2" <%= "2".equals(request.getParameter("ratingFilter")) ? "selected" : "" %>>2 Stars Only</option>
                        <option value="1" <%= "1".equals(request.getParameter("ratingFilter")) ? "selected" : "" %>>1 Star Only</option>
                    </select>
                </div>
                <div style="display:flex; gap:8px;">
                    <button type="submit" class="btn btn-purple" style="flex:1; padding:10px;">Search</button>
                    <a href="feedback.jsp" class="btn btn-orange" style="padding:10px 14px; text-align:center;">Clear</a>
                </div>
            </div>
        </form>

        <!-- Live Feedbacks Table (Visible ONLY to Teacher) -->
        <div class="feedback-table-container" style="background:white; border-radius:10px; border:1px solid #e2e8f0; overflow-x:auto;">
            <table style="margin:0; box-shadow:none;">
                <thead>
                    <tr>
                        <th style="width:50px;"># ID</th>
                        <th>Student Name</th>
                        <th>Subject / Course</th>
                        <th>Faculty Name</th>
                        <th>Rating</th>
                        <th>Student Feedback Comments</th>
                        <th>Submitted At</th>
                    </tr>
                </thead>
                <tbody>
                <% if (teacherFeedbackList != null && !teacherFeedbackList.isEmpty()) {
                    for (Feedback f : teacherFeedbackList) { %>
                    <tr>
                        <td style="font-weight:bold; color:#64748b;"><%= f.getId() %></td>
                        <td style="font-weight:600;"><%= f.getStudentName() != null ? f.getStudentName() : "Anonymous" %></td>
                        <td><span class="badge badge-custom"><%= f.getCourse() != null ? f.getCourse() : "N/A" %></span></td>
                        <td style="font-weight:bold; color:#1e3c72;"><%= f.getFacultyName() != null ? f.getFacultyName() : "Er. Ram Babu Buri" %></td>
                        <td style="color:#f59e0b; white-space:nowrap;">
                            <% for (int s = 0; s < f.getRating(); s++) { %>&#9733;<% } %>
                            <% for (int s = f.getRating(); s < 5; s++) { %>&#9734;<% } %>
                            <span style="color:#555; font-size:12px;">(<%= f.getRating() %>/5)</span>
                        </td>
                        <td style="color:#334155;"><%= f.getFeedbackText() != null ? f.getFeedbackText() : "" %></td>
                        <td style="font-size:12px; color:#64748b; white-space:nowrap;"><%= f.getSubmittedAt() != null ? f.getSubmittedAt() : "Recorded" %></td>
                    </tr>
                <%  }
                } else { %>
                    <tr>
                        <td colspan="7" style="text-align:center; padding:30px; color:#64748b;">
                            No feedback records matching the specified criteria.
                        </td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>

    <!-- VIEW 2: STUDENT DASHBOARD (STUDENT ONLY) -->
    <% } else if (isStudentRole) { %>

        <% if (justSubmitted) { %>
            <!-- Clean Success Notification (Students do NOT see feedback list!) -->
            <div class="feedback-box" style="text-align:center; padding:40px 30px;">
                <div style="font-size:48px; color:#10b981; margin-bottom:12px;">&#10004;</div>
                <h3 style="color:#10b981; margin-top:0;">Feedback Submitted Successfully!</h3>
                <p style="color:#475569; font-size:15px; max-width:540px; margin:0 auto 24px auto; line-height:1.6;">
                    Thank you, <strong><%= currentUserName != null ? currentUserName : "Student" %></strong>! Your evaluation has been securely recorded in the academic database.
                </p>
                <div style="background:#f1f5f9; border-radius:8px; padding:16px; max-width:480px; margin:0 auto 24px auto; font-size:13px; color:#475569;">
                    &#128274; <strong>Student Privacy Guarantee:</strong> In accordance with university academic feedback regulations, your submission is kept strictly confidential and accessible exclusively to departmental faculty for evaluation. Students cannot view submitted records.
                </div>
                <a href="feedback.jsp" class="btn btn-blue" style="padding:12px 24px; font-size:14px;">
                    &#8635; Submit Feedback for Another Course
                </a>
            </div>
        <% } else { %>
            <!-- Student Feedback Submission Form -->
            <div class="feedback-box">
                <div style="border-bottom:1px solid #e2e8f0; padding-bottom:14px; margin-bottom:20px;">
                    <h3 style="margin:0 0 6px 0; color:#1e3c72;">Student Course &amp; Faculty Feedback Form</h3>
                    <p style="margin:0; font-size:13px; color:#64748b;">
                        Please evaluate the course teaching methodology, practical guidance, and lab facilities.
                    </p>
                </div>

                <form method="post" action="${pageContext.request.contextPath}/FeedbackServlet" style="max-width:100%; padding:0; box-shadow:none;">
                    <input type="hidden" name="action" value="submit">

                    <!-- Student Name (Prefilled, Readonly) -->
                    <div class="form-group">
                        <label>Student Submitter</label>
                        <input type="text" name="studentName" value="<%= currentUserName != null ? currentUserName : "Student" %> (<%= currentRoll != null ? currentRoll : "" %>)" readonly style="background:#f8fafc; font-weight:600; color:#475569;">
                    </div>

                    <!-- 1. Subject / Course Selection -->
                    <div class="form-group">
                        <label>1. Select Subject / Course <span style="color:#ef4444;">*</span></label>
                        <select name="course" id="subjectDropdown" onchange="syncFacultyBySubject()" required>
                            <option value="">-- Choose Subject / Laboratory --</option>
                            <option value="Advanced Java Programming Lab (5CS4-21)">Advanced Java Programming Lab (5CS4-21)</option>
                            <option value="Database Management Systems Lab (5CS4-22)">Database Management Systems Lab (5CS4-22)</option>
                            <option value="Theory of Computation (5CS4-01)">Theory of Computation (5CS4-01)</option>
                            <option value="Computer Networks Lab (5CS4-23)">Computer Networks Lab (5CS4-23)</option>
                            <option value="Artificial Intelligence & Machine Learning Lab">Artificial Intelligence &amp; Machine Learning Lab</option>
                            <option value="Software Engineering & Agile Methodologies">Software Engineering &amp; Agile Methodologies</option>
                            <option value="Cyber Security & Cryptography">Cyber Security &amp; Cryptography</option>
                            <option value="Other Departmental Course">Other Departmental Course</option>
                        </select>
                    </div>

                    <!-- 2. Faculty Name Section (Under Subject) -->
                    <div class="faculty-section">
                        <div class="form-group" style="margin:0;">
                            <label style="color:#92400e; font-weight:bold;">
                                2. Faculty / Instructor Name Teaching This Subject <span style="color:#ef4444;">*</span>
                            </label>
                            <p style="font-size:12px; color:#78350f; margin:2px 0 8px 0;">
                                Confirm the faculty member who conducted classes or practicals for this subject:
                            </p>
                            <select name="facultyName" id="facultyDropdown" required>
                                <option value="Er. Ram Babu Buri">Er. Ram Babu Buri (Assistant Professor &amp; Lab In-charge)</option>
                                <option value="Dr. A. K. Sharma">Dr. A. K. Sharma (Professor &amp; Head of Department)</option>
                                <option value="Prof. Neha Gupta">Prof. Neha Gupta (Associate Professor)</option>
                                <option value="Er. S. P. Verma">Er. S. P. Verma (Assistant Professor)</option>
                                <option value="Other Departmental Faculty">Other Departmental Faculty</option>
                            </select>
                        </div>
                    </div>

                    <!-- 3. Rating Selector -->
                    <div class="form-group">
                        <label>3. Instruction &amp; Practical Lab Rating (1 to 5 Stars) <span style="color:#ef4444;">*</span></label>
                        <select name="rating" required>
                            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5) - Excellent (Clear practical explanation &amp; great guidance)</option>
                            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5) - Very Good (Good lab pace &amp; syllabus coverage)</option>
                            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5) - Average (Standard coverage)</option>
                            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5) - Needs Improvement</option>
                            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5) - Unsatisfactory</option>
                        </select>
                    </div>

                    <!-- 4. Detailed Remarks -->
                    <div class="form-group">
                        <label>4. Detailed Remarks &amp; Suggestions <span style="color:#ef4444;">*</span></label>
                        <textarea name="feedbackText" rows="4" placeholder="Enter specific observations regarding lab experiments, clarity, assignments, or suggestions for enhancement..." required></textarea>
                    </div>

                    <button type="submit" class="btn btn-blue" style="width:100%; padding:13px; font-size:15px; font-weight:bold;">
                        Submit Course Feedback
                    </button>
                </form>
            </div>
        <% } %>

    <!-- VIEW 3: AUTHENTICATION PORTAL (IF NOT LOGGED IN IN EXP 10) -->
    <% } else { %>

        <div class="auth-card">
            <!-- Tabs: Login vs Register (Student Only) -->
            <div class="auth-tabs">
                <a href="feedback.jsp?tab=login" class="auth-tab <%= !"register".equals(activeTab) ? "active" : "" %>">
                    &#128272; Sign In
                </a>
                <a href="feedback.jsp?tab=register" class="auth-tab <%= "register".equals(activeTab) ? "active" : "" %>">
                    &#128221; Student Registration
                </a>
            </div>

            <div class="auth-body">

                <% if ("register".equals(activeTab)) { %>
                    <!-- STUDENT ONLY REGISTRATION FORM -->
                    <div style="background:#eff6ff; border-left:4px solid #3b82f6; padding:12px; border-radius:6px; margin-bottom:18px; font-size:12px; color:#1e40af;">
                        &#128737; <strong>Security Policy:</strong> Registration is strictly available for <strong>Students Only</strong>. Faculty profiles are provisioned by the Department Administrator to prevent unauthorized teacher registration.
                    </div>

                    <form method="post" action="${pageContext.request.contextPath}/FeedbackServlet" style="max-width:100%; padding:0; box-shadow:none;">
                        <input type="hidden" name="action" value="exp10_register">

                        <div class="form-group">
                            <label>Full Student Name <span style="color:#ef4444;">*</span></label>
                            <input type="text" name="name" placeholder="e.g. Krishna Gupta" required>
                        </div>

                        <div class="form-group">
                            <label>RTU Roll Number <span style="color:#ef4444;">*</span></label>
                            <input type="text" name="rollNumber" placeholder="e.g. 24EARAD083" required>
                        </div>

                        <div class="form-group">
                            <label>Batch / Academic Section <span style="color:#ef4444;">*</span></label>
                            <select name="classId" required>
                                <option value="1">AI&amp;DS-A (Artificial Intelligence &amp; Data Science)</option>
                                <option value="2">AI&amp;DS-B (Artificial Intelligence &amp; Data Science)</option>
                                <option value="3">AI&amp;DS-C (Artificial Intelligence &amp; Data Science)</option>
                                <option value="4">CS-A (Computer Science &amp; Engineering)</option>
                                <option value="5">CS-B (Computer Science &amp; Engineering)</option>
                                <option value="6">CS-C (Computer Science &amp; Engineering)</option>
                                <option value="7">IT (Information Technology)</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>College Email Address</label>
                            <input type="email" name="email" placeholder="e.g. student@aceit.ac.in">
                        </div>

                        <div class="form-group">
                            <label>Create Account Password <span style="color:#ef4444;">*</span></label>
                            <input type="password" name="password" placeholder="Create a secure password" required>
                        </div>

                        <div class="form-group">
                            <label>Confirm Password <span style="color:#ef4444;">*</span></label>
                            <input type="password" name="confirmPassword" placeholder="Confirm your password" required>
                        </div>

                        <button type="submit" class="btn btn-green" style="width:100%; padding:12px; font-size:14px; font-weight:bold;">
                            Register Student Account
                        </button>

                        <div style="text-align:center; margin-top:16px; font-size:13px;">
                            Already registered? <a href="feedback.jsp?tab=login" style="color:#1e3c72; font-weight:bold;">Sign in here</a>
                        </div>
                    </form>

                <% } else { %>
                    <!-- LOGIN FORM WITH STUDENT / TEACHER ROLE -->
                    <form method="post" action="${pageContext.request.contextPath}/FeedbackServlet" style="max-width:100%; padding:0; box-shadow:none;">
                        <input type="hidden" name="action" value="exp10_login">

                        <div class="role-pill-group">
                            <button type="button" class="role-pill-btn active" id="btnRoleStudent" onclick="selectRole('STUDENT')">
                                &#127891; Student Login
                            </button>
                            <button type="button" class="role-pill-btn" id="btnRoleTeacher" onclick="selectRole('TEACHER')">
                                &#128104;&#8205;&#127979; Teacher Login
                            </button>
                        </div>
                        <input type="hidden" name="role" id="roleInput" value="STUDENT">

                        <div class="form-group">
                            <label id="lblUsername">Student Roll Number or Name</label>
                            <input type="text" name="username" id="txtUsername" placeholder="e.g. 24EARAD083 or Krishna Gupta" required autofocus>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Enter password (default: student123)" required>
                        </div>

                        <div style="background:#f8fafc; border-radius:6px; padding:10px 14px; margin-bottom:16px; font-size:12px; color:#64748b;">
                            &#128737; <strong>Single-Device Security:</strong> Active student sessions are locked to one browser/device at a time. Concurrent logins are blocked until logout.
                        </div>

                        <button type="submit" class="btn btn-blue" style="width:100%; padding:12px; font-size:14px; font-weight:bold;">
                            Sign In to Feedback System
                        </button>

                        <div style="text-align:center; margin-top:16px; font-size:13px;">
                            New student? <a href="feedback.jsp?tab=register" style="color:#1e3c72; font-weight:bold;">Register student profile</a>
                        </div>
                    </form>
                <% } %>

            </div>
        </div>

    <% } %>


    <!-- ========================================================== -->
    <!-- EXPERIMENT 10 JAVA SOURCE CODE ACCORDIONS                   -->
    <!-- ========================================================== -->
    <div style="margin-top: 36px; padding-top: 20px; border-top: 2px dashed #cbd5e1;">
        <h3 style="color: #1e3c72; margin: 0 0 6px 0; font-size: 18px;">
            &#128187; Experiment 10: Complete Java Backend Architecture
        </h3>
        <p style="color: #64748b; font-size: 13px; margin: 0 0 16px 0;">
            Explore the enterprise MVC architecture for Experiment 10, including the JavaBean Model, Data Access Object (DAO), Controller Servlet, and Single-Device Session Security.
        </p>

        <!-- 1. Feedback.java (Domain Model) -->
        <div class="code-accordion-header" onclick="toggleCode('exp10ModelCode', 'exp10ModelIcon')">
            <span>&#128196; 1. JavaBean Model: Feedback.java</span>
            <span id="exp10ModelIcon">&#9660; Click to Expand</span>
        </div>
        <div id="exp10ModelCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#6a9955;">/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Module: Experiment 10 - Online Feedback System Domain Model
 */</span>
<span style="color:#569cd6;">package</span> <span style="color:#4ec9b0;">com.javalab.model</span>;

<span style="color:#569cd6;">public class</span> <span style="color:#4ec9b0;">Feedback</span> {

    <span style="color:#569cd6;">private int</span> id;
    <span style="color:#569cd6;">private</span> <span style="color:#4ec9b0;">String</span> studentName;
    <span style="color:#569cd6;">private</span> <span style="color:#4ec9b0;">String</span> course;
    <span style="color:#569cd6;">private</span> <span style="color:#4ec9b0;">String</span> facultyName;
    <span style="color:#569cd6;">private</span> <span style="color:#4ec9b0;">String</span> feedbackText;
    <span style="color:#569cd6;">private int</span> rating;
    <span style="color:#569cd6;">private</span> <span style="color:#4ec9b0;">String</span> submittedAt;

    <span style="color:#569cd6;">public</span> <span style="color:#dcdcaa;">Feedback</span>() {}

    <span style="color:#569cd6;">public</span> <span style="color:#dcdcaa;">Feedback</span>(<span style="color:#569cd6;">int</span> id, <span style="color:#4ec9b0;">String</span> studentName, <span style="color:#4ec9b0;">String</span> course, <span style="color:#4ec9b0;">String</span> facultyName,
                    <span style="color:#4ec9b0;">String</span> feedbackText, <span style="color:#569cd6;">int</span> rating) {
        <span style="color:#569cd6;">this</span>.id = id;
        <span style="color:#569cd6;">this</span>.studentName = studentName;
        <span style="color:#569cd6;">this</span>.course = course;
        <span style="color:#569cd6;">this</span>.facultyName = facultyName;
        <span style="color:#569cd6;">this</span>.feedbackText = feedbackText;
        <span style="color:#569cd6;">this</span>.rating = rating;
    }

    <span style="color:#569cd6;">public int</span> <span style="color:#dcdcaa;">getId</span>() { <span style="color:#569cd6;">return</span> id; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setId</span>(<span style="color:#569cd6;">int</span> id) { <span style="color:#569cd6;">this</span>.id = id; }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">String</span> <span style="color:#dcdcaa;">getStudentName</span>() { <span style="color:#569cd6;">return</span> studentName; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setStudentName</span>(<span style="color:#4ec9b0;">String</span> studentName) { <span style="color:#569cd6;">this</span>.studentName = studentName; }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">String</span> <span style="color:#dcdcaa;">getCourse</span>() { <span style="color:#569cd6;">return</span> course; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setCourse</span>(<span style="color:#4ec9b0;">String</span> course) { <span style="color:#569cd6;">this</span>.course = course; }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">String</span> <span style="color:#dcdcaa;">getFacultyName</span>() { <span style="color:#569cd6;">return</span> facultyName; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setFacultyName</span>(<span style="color:#4ec9b0;">String</span> facultyName) { <span style="color:#569cd6;">this</span>.facultyName = facultyName; }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">String</span> <span style="color:#dcdcaa;">getFeedbackText</span>() { <span style="color:#569cd6;">return</span> feedbackText; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setFeedbackText</span>(<span style="color:#4ec9b0;">String</span> feedbackText) { <span style="color:#569cd6;">this</span>.feedbackText = feedbackText; }

    <span style="color:#569cd6;">public int</span> <span style="color:#dcdcaa;">getRating</span>() { <span style="color:#569cd6;">return</span> rating; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setRating</span>(<span style="color:#569cd6;">int</span> rating) { <span style="color:#569cd6;">this</span>.rating = rating; }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">String</span> <span style="color:#dcdcaa;">getSubmittedAt</span>() { <span style="color:#569cd6;">return</span> submittedAt; }
    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">setSubmittedAt</span>(<span style="color:#4ec9b0;">String</span> submittedAt) { <span style="color:#569cd6;">this</span>.submittedAt = submittedAt; }
}
</code></pre>
        </div>

        <!-- 2. FeedbackDAO.java (Data Access Object) -->
        <div class="code-accordion-header" onclick="toggleCode('exp10DaoCode', 'exp10DaoIcon')">
            <span>&#128196; 2. Data Access Object: FeedbackDAO.java</span>
            <span id="exp10DaoIcon">&#9660; Click to Expand</span>
        </div>
        <div id="exp10DaoCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#6a9955;">/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Module: Experiment 10 - Feedback Data Access Object
 * Description: Handles SQL queries, dynamic faculty/course filtering, and JDBC persistence.
 */</span>
<span style="color:#569cd6;">package</span> <span style="color:#4ec9b0;">com.javalab.dao</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.db.DBConnection</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.model.Feedback</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.util.PortalHelper</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.sql.*</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.util.ArrayList</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.util.List</span>;

<span style="color:#569cd6;">public class</span> <span style="color:#4ec9b0;">FeedbackDAO</span> {

    <span style="color:#569cd6;">public void</span> <span style="color:#dcdcaa;">addFeedback</span>(<span style="color:#4ec9b0;">Feedback</span> feedback) <span style="color:#569cd6;">throws</span> <span style="color:#4ec9b0;">SQLException</span> {
        <span style="color:#569cd6;">if</span> (feedback == <span style="color:#569cd6;">null</span>) <span style="color:#569cd6;">return</span>;
        <span style="color:#4ec9b0;">String</span> sql = <span style="color:#ce9178;">"INSERT INTO feedback (student_name, course, faculty_name, feedback_text, rating) VALUES (?, ?, ?, ?, ?)"</span>;
        <span style="color:#569cd6;">try</span> (<span style="color:#4ec9b0;">Connection</span> con = <span style="color:#4ec9b0;">DBConnection</span>.<span style="color:#dcdcaa;">getConnection</span>();
             <span style="color:#4ec9b0;">PreparedStatement</span> ps = con.<span style="color:#dcdcaa;">prepareStatement</span>(sql)) {
            ps.<span style="color:#dcdcaa;">setString</span>(1, <span style="color:#4ec9b0;">PortalHelper</span>.<span style="color:#dcdcaa;">cleanInput</span>(feedback.<span style="color:#dcdcaa;">getStudentName</span>()));
            ps.<span style="color:#dcdcaa;">setString</span>(2, <span style="color:#4ec9b0;">PortalHelper</span>.<span style="color:#dcdcaa;">cleanInput</span>(feedback.<span style="color:#dcdcaa;">getCourse</span>()));
            ps.<span style="color:#dcdcaa;">setString</span>(3, <span style="color:#4ec9b0;">PortalHelper</span>.<span style="color:#dcdcaa;">cleanInput</span>(feedback.<span style="color:#dcdcaa;">getFacultyName</span>()));
            ps.<span style="color:#dcdcaa;">setString</span>(4, <span style="color:#4ec9b0;">PortalHelper</span>.<span style="color:#dcdcaa;">cleanInput</span>(feedback.<span style="color:#dcdcaa;">getFeedbackText</span>()));
            ps.<span style="color:#dcdcaa;">setInt</span>(5, feedback.<span style="color:#dcdcaa;">getRating</span>());
            ps.<span style="color:#dcdcaa;">executeUpdate</span>();
        }
    }

    <span style="color:#569cd6;">public</span> <span style="color:#4ec9b0;">List</span>&lt;<span style="color:#4ec9b0;">Feedback</span>&gt; <span style="color:#dcdcaa;">searchFeedback</span>(<span style="color:#4ec9b0;">String</span> facultyQuery, <span style="color:#4ec9b0;">String</span> courseQuery, <span style="color:#4ec9b0;">Integer</span> ratingFilter) <span style="color:#569cd6;">throws</span> <span style="color:#4ec9b0;">SQLException</span> {
        <span style="color:#4ec9b0;">List</span>&lt;<span style="color:#4ec9b0;">Feedback</span>&gt; list = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">ArrayList</span>&lt;&gt;();
        <span style="color:#4ec9b0;">StringBuilder</span> sql = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">StringBuilder</span>(<span style="color:#ce9178;">"SELECT id, student_name, course, faculty_name, feedback_text, rating, submitted_at FROM feedback WHERE 1=1 "</span>);
        <span style="color:#4ec9b0;">List</span>&lt;<span style="color:#4ec9b0;">Object</span>&gt; params = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">ArrayList</span>&lt;&gt;();

        <span style="color:#569cd6;">if</span> (facultyQuery != <span style="color:#569cd6;">null</span> &amp;&amp; !facultyQuery.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">isEmpty</span>()) {
            sql.<span style="color:#dcdcaa;">append</span>(<span style="color:#ce9178;">"AND LOWER(faculty_name) LIKE ? "</span>);
            params.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"%"</span> + facultyQuery.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">toLowerCase</span>() + <span style="color:#ce9178;">"%"</span>);
        }
        <span style="color:#569cd6;">if</span> (courseQuery != <span style="color:#569cd6;">null</span> &amp;&amp; !courseQuery.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">isEmpty</span>()) {
            sql.<span style="color:#dcdcaa;">append</span>(<span style="color:#ce9178;">"AND LOWER(course) LIKE ? "</span>);
            params.<span style="color:#dcdcaa;">add</span>(<span style="color:#ce9178;">"%"</span> + courseQuery.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">toLowerCase</span>() + <span style="color:#ce9178;">"%"</span>);
        }
        <span style="color:#569cd6;">if</span> (ratingFilter != <span style="color:#569cd6;">null</span> &amp;&amp; ratingFilter &gt; 0) {
            sql.<span style="color:#dcdcaa;">append</span>(<span style="color:#ce9178;">"AND rating = ? "</span>);
            params.<span style="color:#dcdcaa;">add</span>(ratingFilter);
        }
        sql.<span style="color:#dcdcaa;">append</span>(<span style="color:#ce9178;">"ORDER BY id DESC"</span>);

        <span style="color:#569cd6;">try</span> (<span style="color:#4ec9b0;">Connection</span> con = <span style="color:#4ec9b0;">DBConnection</span>.<span style="color:#dcdcaa;">getConnection</span>();
             <span style="color:#4ec9b0;">PreparedStatement</span> ps = con.<span style="color:#dcdcaa;">prepareStatement</span>(sql.<span style="color:#dcdcaa;">toString</span>())) {
            <span style="color:#569cd6;">for</span> (<span style="color:#569cd6;">int</span> i = 0; i &lt; params.<span style="color:#dcdcaa;">size</span>(); i++) {
                ps.<span style="color:#dcdcaa;">setObject</span>(i + 1, params.<span style="color:#dcdcaa;">get</span>(i));
            }
            <span style="color:#569cd6;">try</span> (<span style="color:#4ec9b0;">ResultSet</span> rs = ps.<span style="color:#dcdcaa;">executeQuery</span>()) {
                <span style="color:#569cd6;">while</span> (rs.<span style="color:#dcdcaa;">next</span>()) {
                    <span style="color:#4ec9b0;">Feedback</span> f = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">Feedback</span>(
                        rs.<span style="color:#dcdcaa;">getInt</span>(<span style="color:#ce9178;">"id"</span>),
                        rs.<span style="color:#dcdcaa;">getString</span>(<span style="color:#ce9178;">"student_name"</span>),
                        rs.<span style="color:#dcdcaa;">getString</span>(<span style="color:#ce9178;">"course"</span>),
                        rs.<span style="color:#dcdcaa;">getString</span>(<span style="color:#ce9178;">"faculty_name"</span>),
                        rs.<span style="color:#dcdcaa;">getString</span>(<span style="color:#ce9178;">"feedback_text"</span>),
                        rs.<span style="color:#dcdcaa;">getInt</span>(<span style="color:#ce9178;">"rating"</span>)
                    );
                    <span style="color:#4ec9b0;">Timestamp</span> ts = rs.<span style="color:#dcdcaa;">getTimestamp</span>(<span style="color:#ce9178;">"submitted_at"</span>);
                    <span style="color:#569cd6;">if</span> (ts != <span style="color:#569cd6;">null</span>) f.<span style="color:#dcdcaa;">setSubmittedAt</span>(ts.<span style="color:#dcdcaa;">toString</span>());
                    list.<span style="color:#dcdcaa;">add</span>(f);
                }
            }
        }
        <span style="color:#569cd6;">return</span> list;
    }
}
</code></pre>
        </div>

        <!-- 3. FeedbackServlet.java (Controller Servlet) -->
        <div class="code-accordion-header" onclick="toggleCode('exp10ServletCode', 'exp10ServletIcon')">
            <span>&#128196; 3. Controller Servlet: FeedbackServlet.java</span>
            <span id="exp10ServletIcon">&#9660; Click to Expand</span>
        </div>
        <div id="exp10ServletCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#6a9955;">/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Module: Experiment 10 - Feedback Controller Servlet
 * Description: Manages role-based authentication, student submission privacy, single-device session validation, and faculty CSV export.
 */</span>
<span style="color:#569cd6;">package</span> <span style="color:#4ec9b0;">com.javalab.servlet</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.dao.FeedbackDAO</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.model.Feedback</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">com.javalab.util.ActiveSessionManager</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.ServletException</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.annotation.WebServlet</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">javax.servlet.http.*</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.io.IOException</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.io.PrintWriter</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.sql.SQLException</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.util.List</span>;

<span style="color:#569cd6;">@WebServlet</span>(<span style="color:#ce9178;">"/FeedbackServlet"</span>)
<span style="color:#569cd6;">public class</span> <span style="color:#4ec9b0;">FeedbackServlet</span> <span style="color:#569cd6;">extends</span> <span style="color:#4ec9b0;">HttpServlet</span> {

    <span style="color:#569cd6;">private final</span> <span style="color:#4ec9b0;">FeedbackDAO</span> feedbackDAO = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">FeedbackDAO</span>();

    <span style="color:#569cd6;">@Override</span>
    <span style="color:#569cd6;">protected void</span> <span style="color:#dcdcaa;">doPost</span>(<span style="color:#4ec9b0;">HttpServletRequest</span> request, <span style="color:#4ec9b0;">HttpServletResponse</span> response)
            <span style="color:#569cd6;">throws</span> <span style="color:#4ec9b0;">ServletException</span>, <span style="color:#4ec9b0;">IOException</span> {
        <span style="color:#4ec9b0;">String</span> action = request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"action"</span>);

        <span style="color:#6a9955;">// Student Submits Course Feedback (Privacy Protected)</span>
        <span style="color:#569cd6;">if</span> (<span style="color:#ce9178;">"submit"</span>.<span style="color:#dcdcaa;">equals</span>(action)) {
            <span style="color:#4ec9b0;">Feedback</span> fb = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">Feedback</span>();
            fb.<span style="color:#dcdcaa;">setStudentName</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"studentName"</span>));
            fb.<span style="color:#dcdcaa;">setCourse</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"course"</span>));
            fb.<span style="color:#dcdcaa;">setFacultyName</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"facultyName"</span>));
            fb.<span style="color:#dcdcaa;">setFeedbackText</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"feedbackText"</span>));
            fb.<span style="color:#dcdcaa;">setRating</span>(<span style="color:#4ec9b0;">Integer</span>.<span style="color:#dcdcaa;">parseInt</span>(request.<span style="color:#dcdcaa;">getParameter</span>(<span style="color:#ce9178;">"rating"</span>)));

            <span style="color:#569cd6;">try</span> {
                feedbackDAO.<span style="color:#dcdcaa;">addFeedback</span>(fb);
                <span style="color:#6a9955;">// Redirect student back with success status - student NEVER sees feedback list!</span>
                response.<span style="color:#dcdcaa;">sendRedirect</span>(<span style="color:#ce9178;">"feedback.jsp?submitted=true&amp;msg=Feedback+recorded+successfully!"</span>);
            } <span style="color:#569cd6;">catch</span> (<span style="color:#4ec9b0;">SQLException</span> e) {
                response.<span style="color:#dcdcaa;">sendRedirect</span>(<span style="color:#ce9178;">"feedback.jsp?error=Database+Error:+"</span> + e.<span style="color:#dcdcaa;">getMessage</span>());
            }
            <span style="color:#569cd6;">return</span>;
        }

        <span style="color:#6a9955;">// Teacher One-Click CSV Export</span>
        <span style="color:#569cd6;">if</span> (<span style="color:#ce9178;">"export_csv"</span>.<span style="color:#dcdcaa;">equals</span>(action)) {
            response.<span style="color:#dcdcaa;">setContentType</span>(<span style="color:#ce9178;">"text/csv; charset=UTF-8"</span>);
            response.<span style="color:#dcdcaa;">setHeader</span>(<span style="color:#ce9178;">"Content-Disposition"</span>, <span style="color:#ce9178;">"attachment; filename=\"Faculty_Feedback_Report.csv\""</span>);
            <span style="color:#4ec9b0;">PrintWriter</span> out = response.<span style="color:#dcdcaa;">getWriter</span>();
            out.<span style="color:#dcdcaa;">println</span>(<span style="color:#ce9178;">"ID,Student Name,Subject / Course,Faculty Name,Rating,Feedback Comments,Submitted At"</span>);
            <span style="color:#6a9955;">// stream CSV data...</span>
            <span style="color:#569cd6;">return</span>;
        }
    }
}
</code></pre>
        </div>

        <!-- 4. ActiveSessionManager.java (Single-Device Session Lock) -->
        <div class="code-accordion-header" onclick="toggleCode('exp10SessionCode', 'exp10SessionIcon')">
            <span>&#128196; 4. Single-Device Session Security: ActiveSessionManager.java</span>
            <span id="exp10SessionIcon">&#9660; Click to Expand</span>
        </div>
        <div id="exp10SessionCode" class="code-accordion-content">
<pre style="margin:0;"><code style="color:#d4d4d4;"><span style="color:#6a9955;">/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Module: Security Layer - Concurrent Session Control
 * Description: Prevents simultaneous logins for the same student across different devices/browsers.
 */</span>
<span style="color:#569cd6;">package</span> <span style="color:#4ec9b0;">com.javalab.util</span>;

<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.util.Map</span>;
<span style="color:#569cd6;">import</span> <span style="color:#4ec9b0;">java.util.concurrent.ConcurrentHashMap</span>;

<span style="color:#569cd6;">public class</span> <span style="color:#4ec9b0;">ActiveSessionManager</span> {

    <span style="color:#6a9955;">// Thread-safe map tracking: Roll Number -&gt; Active Session ID</span>
    <span style="color:#569cd6;">private static final</span> <span style="color:#4ec9b0;">Map</span>&lt;<span style="color:#4ec9b0;">String</span>, <span style="color:#4ec9b0;">String</span>&gt; activeStudentSessions = <span style="color:#569cd6;">new</span> <span style="color:#4ec9b0;">ConcurrentHashMap</span>&lt;&gt;();

    <span style="color:#569cd6;">public static synchronized boolean</span> <span style="color:#dcdcaa;">isAlreadyLoggedIn</span>(<span style="color:#4ec9b0;">String</span> rollNumber, <span style="color:#4ec9b0;">String</span> currentSessionId) {
        <span style="color:#569cd6;">if</span> (rollNumber == <span style="color:#569cd6;">null</span> || rollNumber.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">isEmpty</span>()) <span style="color:#569cd6;">return false</span>;
        <span style="color:#4ec9b0;">String</span> key = rollNumber.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">toUpperCase</span>();
        <span style="color:#4ec9b0;">String</span> existingSession = activeStudentSessions.<span style="color:#dcdcaa;">get</span>(key);
        <span style="color:#569cd6;">return</span> existingSession != <span style="color:#569cd6;">null</span> &amp;&amp; !existingSession.<span style="color:#dcdcaa;">equals</span>(currentSessionId);
    }

    <span style="color:#569cd6;">public static synchronized void</span> <span style="color:#dcdcaa;">registerLogin</span>(<span style="color:#4ec9b0;">String</span> rollNumber, <span style="color:#4ec9b0;">String</span> sessionId) {
        <span style="color:#569cd6;">if</span> (rollNumber != <span style="color:#569cd6;">null</span> &amp;&amp; sessionId != <span style="color:#569cd6;">null</span>) {
            activeStudentSessions.<span style="color:#dcdcaa;">put</span>(rollNumber.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">toUpperCase</span>(), sessionId);
        }
    }

    <span style="color:#569cd6;">public static synchronized void</span> <span style="color:#dcdcaa;">removeLogin</span>(<span style="color:#4ec9b0;">String</span> rollNumber) {
        <span style="color:#569cd6;">if</span> (rollNumber != <span style="color:#569cd6;">null</span>) {
            activeStudentSessions.<span style="color:#dcdcaa;">remove</span>(rollNumber.<span style="color:#dcdcaa;">trim</span>().<span style="color:#dcdcaa;">toUpperCase</span>());
        }
    }
}
</code></pre>
        </div>
    </div>

</div>

<script>
    function selectRole(role) {
        document.getElementById('roleInput').value = role;
        var btnStudent = document.getElementById('btnRoleStudent');
        var btnTeacher = document.getElementById('btnRoleTeacher');
        var lbl = document.getElementById('lblUsername');
        var txt = document.getElementById('txtUsername');

        if (role === 'TEACHER') {
            btnTeacher.className = 'role-pill-btn active';
            btnStudent.className = 'role-pill-btn';
            lbl.innerText = 'Teacher Username';
            txt.placeholder = 'teacher';
        } else {
            btnStudent.className = 'role-pill-btn active';
            btnTeacher.className = 'role-pill-btn';
            lbl.innerText = 'Student Roll Number or Name';
            txt.placeholder = 'e.g. 24EARAD083 or Krishna Gupta';
        }
    }

    function syncFacultyBySubject() {
        var sub = document.getElementById('subjectDropdown').value;
        var fac = document.getElementById('facultyDropdown');
        if (sub.indexOf('Advanced Java') !== -1) {
            fac.value = 'Er. Ram Babu Buri';
        }
    }

    function toggleCode(id, iconId) {
        var el = document.getElementById(id);
        var icon = document.getElementById(iconId);
        if (el.style.display === 'block') {
            el.style.display = 'none';
            icon.innerText = '\u25BC Click to Expand';
        } else {
            el.style.display = 'block';
            icon.innerText = '\u25B2 Click to Collapse';
        }
    }

</script>

<%@ include file="footer.jspf" %>
