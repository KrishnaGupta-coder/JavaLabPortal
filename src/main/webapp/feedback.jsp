<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jspf" %>

<%
    boolean isTeacher = "TEACHER".equals(session.getAttribute("role"));
    String studentName = (String) session.getAttribute("name");
    String rollNumber = (String) session.getAttribute("rollNumber");
%>

<h2>10. Online Student Feedback System (Mini Project)</h2>
<p style="color:#555;">
    Submit confidential course evaluation and faculty feedback. All feedback records are securely archived in the institutional database and accessible exclusively to academic faculty.
</p>

<% if (request.getParameter("msg") != null) { %>
    <div class="msg-success" style="padding:14px; font-size:15px; margin-bottom:20px;">
        &#10004; <%= request.getParameter("msg") %>
    </div>
<% } %>

<% if (isTeacher) { %>
    <div style="background:#e8eaf6; border-left:4px solid #3f51b5; padding:14px; border-radius:4px; margin-bottom:20px;">
        <strong>Faculty Notice:</strong> You are logged in as Teacher. You can inspect all student feedback reports, filter by subject or faculty name, and export to Excel/PDF in the review dashboard.
        <br><br>
        <a href="${pageContext.request.contextPath}/FeedbackServlet?action=list" class="btn btn-purple">Open Faculty Feedback Analytics &rarr;</a>
    </div>
<% } %>

<div class="card" style="max-width:680px; border-left-color:#ff9800; padding:24px;">
    <h3 style="margin-top:0; color:#e65100; border-bottom:1px solid #ffe0b2; padding-bottom:8px;">
        Course &amp; Faculty Feedback Submission Form
    </h3>

    <form method="post" action="${pageContext.request.contextPath}/FeedbackServlet">
        <input type="hidden" name="action" value="submit">

        <!-- Student Identifier (Auto-filled) -->
        <label>Student Name / Submitter</label>
        <input type="text" name="studentName" value="<%= (studentName != null ? studentName : "Student") %>" readonly style="background:#f5f5f5; color:#555; font-weight:bold;">

        <!-- Subject Selection -->
        <label>Subject / Course <span style="color:red;">*</span></label>
        <select name="course" id="subjectSelect" onchange="autoSelectFaculty()" required style="width:100%; padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:14px; background:white;">
            <option value="">-- Choose Subject / Laboratory --</option>
            <option value="Advanced Java Programming (5CS4-21)">Advanced Java Programming (5CS4-21)</option>
            <option value="Theory of Computation (5CS4-01)">Theory of Computation (5CS4-01)</option>
            <option value="Database Management Systems (5CS4-02)">Database Management Systems (5CS4-02)</option>
            <option value="Computer Networks (5CS4-03)">Computer Networks (5CS4-03)</option>
            <option value="Artificial Intelligence & Machine Learning">Artificial Intelligence &amp; Machine Learning</option>
            <option value="Software Engineering & Agile Methodologies">Software Engineering &amp; Agile Methodologies</option>
            <option value="Cyber Security & Cryptography">Cyber Security &amp; Cryptography</option>
            <option value="Other Departmental Course">Other Departmental Course</option>
        </select>

        <!-- Faculty Name Section (Under Subject) -->
        <div style="background:#fff8e1; border:1px solid #ffe082; padding:14px; border-radius:6px; margin-bottom:14px;">
            <label style="color:#b78103; font-weight:bold;">Faculty Member Teaching This Subject <span style="color:red;">*</span></label>
            <p style="font-size:12px; color:#666; margin:2px 0 8px 0;">Please confirm or select the instructor responsible for this course.</p>
            <select name="facultyName" id="facultySelect" required style="width:100%; padding:10px; border:1px solid #ccc; border-radius:4px; background:white;">
                <option value="Er. Ram Babu Buri">Er. Ram Babu Buri (Assistant Professor &amp; Project Guide)</option>
                <option value="Dr. A. K. Sharma">Dr. A. K. Sharma (Professor &amp; Head of Department)</option>
                <option value="Prof. Neha Gupta">Prof. Neha Gupta (Associate Professor)</option>
                <option value="Er. S. P. Verma">Er. S. P. Verma (Assistant Professor)</option>
                <option value="Other Faculty Member">Other Faculty Member</option>
            </select>
        </div>

        <!-- Rating Selection -->
        <label>Course &amp; Instruction Rating (1 to 5 Stars) <span style="color:red;">*</span></label>
        <select name="rating" required style="width:100%; padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:14px; background:white; font-size:14px;">
            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5) - Excellent (Clear concepts &amp; great practical guidance)</option>
            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5) - Very Good (Consistent pace &amp; good lab coverage)</option>
            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5) - Average (Syllabus met satisfactorily)</option>
            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5) - Needs Improvement</option>
            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5) - Unsatisfactory</option>
        </select>

        <!-- Detailed Comments -->
        <label>Feedback Remarks &amp; Suggestions <span style="color:red;">*</span></label>
        <textarea name="feedbackText" rows="4" placeholder="Share specific thoughts regarding lab exercises, clarity of practical programs, syllabus coverage, or areas of improvement..." required style="width:100%; padding:10px; border:1px solid #ccc; border-radius:4px; margin-bottom:18px; box-sizing:border-box;"></textarea>

        <button type="submit" class="btn btn-orange" style="width:100%; padding:12px; font-size:15px; font-weight:bold;">Submit Course Feedback</button>
    </form>
</div>

<script>
    function autoSelectFaculty() {
        var sub = document.getElementById('subjectSelect').value;
        var fac = document.getElementById('facultySelect');
        if (sub.indexOf('Advanced Java') !== -1) {
            fac.value = 'Er. Ram Babu Buri';
        }
    }
</script>

<%@ include file="footer.jspf" %>
