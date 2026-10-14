<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javalab.model.Feedback" %>
<%@ include file="header.jspf" %>

<%
    boolean isTeacher = "TEACHER".equals(session.getAttribute("role"));
    if (!isTeacher) {
        response.sendRedirect("index.jsp?error=Feedback+evaluation+reports+are+accessible+to+faculty+only.");
        return;
    }

    List<Feedback> feedbackList = (List<Feedback>) request.getAttribute("feedbackList");
    String facultyQuery = (String) request.getAttribute("facultyQuery");
    String courseQuery = (String) request.getAttribute("courseQuery");
    String ratingFilter = (String) request.getAttribute("ratingFilter");

    int totalFeedbacks = (feedbackList != null) ? feedbackList.size() : 0;
    double avgRating = 0.0;
    if (totalFeedbacks > 0) {
        int sum = 0;
        for (Feedback f : feedbackList) sum += f.getRating();
        avgRating = (double) sum / totalFeedbacks;
    }
%>

<div style="display:flex; justify-content:space-between; align-items:center; flex-wrap:wrap; margin-bottom:16px;">
    <div>
        <h2 style="margin:0 0 4px 0;">Faculty Feedback &amp; Evaluation Analytics</h2>
        <p style="margin:0; color:#666; font-size:13px;">Confidential student reviews and rating analytics dashboard (Teacher Exclusive)</p>
    </div>
    <div style="display:flex; gap:10px; margin-top:10px;">
        <a href="${pageContext.request.contextPath}/FeedbackServlet?action=export_csv&facultyQuery=<%= facultyQuery != null ? facultyQuery : "" %>&courseQuery=<%= courseQuery != null ? courseQuery : "" %>" 
           class="btn btn-green" style="display:inline-flex; align-items:center; gap:6px;">
            &#128196; Export to Excel (CSV)
        </a>
        <button type="button" onclick="window.print()" class="btn btn-purple" style="display:inline-flex; align-items:center; gap:6px;">
            &#128438; Export to PDF / Print
        </button>
    </div>
</div>

<div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(200px, 1fr)); gap:16px; margin-bottom:20px;">
    <div style="background:white; padding:16px; border-radius:8px; border-left:4px solid #2196f3; box-shadow:0 2px 8px rgba(0,0,0,0.06);">
        <div style="font-size:12px; color:#666; font-weight:bold;">TOTAL FEEDBACKS</div>
        <div style="font-size:28px; font-weight:bold; color:#1e3c72; margin-top:4px;"><%= totalFeedbacks %></div>
    </div>
    <div style="background:white; padding:16px; border-radius:8px; border-left:4px solid #ff9800; box-shadow:0 2px 8px rgba(0,0,0,0.06);">
        <div style="font-size:12px; color:#666; font-weight:bold;">AVERAGE RATING</div>
        <div style="font-size:28px; font-weight:bold; color:#e65100; margin-top:4px;">
            <%= String.format("%.1f", avgRating) %> <span style="font-size:16px; color:#ffa000;">&#9733;</span>
            <span style="font-size:13px; color:#888; font-weight:normal;">/ 5.0</span>
        </div>
    </div>
    <div style="background:white; padding:16px; border-radius:8px; border-left:4px solid #4caf50; box-shadow:0 2px 8px rgba(0,0,0,0.06);">
        <div style="font-size:12px; color:#666; font-weight:bold;">PORTAL STATUS</div>
        <div style="font-size:18px; font-weight:bold; color:#2e7d32; margin-top:10px;">Active &amp; Normalized (3NF)</div>
    </div>
</div>

<div class="card" style="padding:16px; margin-bottom:20px; background:#fafafa; border:1px solid #ddd;">
    <form method="get" action="${pageContext.request.contextPath}/FeedbackServlet" style="display:flex; gap:12px; flex-wrap:wrap; align-items:flex-end;">
        <input type="hidden" name="action" value="list">

        <div style="flex:1; min-width:200px;">
            <label style="font-size:12px; font-weight:bold; color:#444;">Search by Faculty Name</label>
            <input type="text" name="facultyQuery" value="<%= facultyQuery != null ? facultyQuery : "" %>" placeholder="e.g. Ram Babu Buri" style="margin:0; width:100%;">
        </div>

        <div style="flex:1; min-width:200px;">
            <label style="font-size:12px; font-weight:bold; color:#444;">Filter by Subject / Course</label>
            <input type="text" name="courseQuery" value="<%= courseQuery != null ? courseQuery : "" %>" placeholder="e.g. Advanced Java" style="margin:0; width:100%;">
        </div>

        <div style="width:140px;">
            <label style="font-size:12px; font-weight:bold; color:#444;">Rating</label>
            <select name="ratingFilter" style="margin:0; width:100%; padding:9px; border:1px solid #ccc; border-radius:4px; background:white;">
                <option value="">All Ratings</option>
                <option value="5" <%= "5".equals(ratingFilter) ? "selected" : "" %>>5 Stars (&#9733;&#9733;&#9733;&#9733;&#9733;)</option>
                <option value="4" <%= "4".equals(ratingFilter) ? "selected" : "" %>>4 Stars (&#9733;&#9733;&#9733;&#9733;)</option>
                <option value="3" <%= "3".equals(ratingFilter) ? "selected" : "" %>>3 Stars (&#9733;&#9733;&#9733;)</option>
                <option value="2" <%= "2".equals(ratingFilter) ? "selected" : "" %>>2 Stars (&#9733;&#9733;)</option>
                <option value="1" <%= "1".equals(ratingFilter) ? "selected" : "" %>>1 Star (&#9733;)</option>
            </select>
        </div>

        <button type="submit" class="btn btn-blue" style="margin:0; padding:10px 18px;">Apply Filter</button>
        <a href="${pageContext.request.contextPath}/FeedbackServlet?action=list" class="btn" style="margin:0; background:#888; color:white; text-decoration:none; padding:10px 16px;">Reset</a>
    </form>
</div>

<div style="background:white; border-radius:8px; border:1px solid #ddd; overflow-x:auto; box-shadow:0 2px 8px rgba(0,0,0,0.06);">
    <table style="width:100%; border-collapse:collapse; font-size:13px; text-align:left;">
        <thead style="background:#1e3c72; color:white;">
            <tr>
                <th style="padding:12px;">#</th>
                <th style="padding:12px;">Subject / Course</th>
                <th style="padding:12px;">Faculty Name</th>
                <th style="padding:12px;">Rating</th>
                <th style="padding:12px;">Student Remarks</th>
                <th style="padding:12px;">Submitted At</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (feedbackList != null && !feedbackList.isEmpty()) {
                    int idx = 1;
                    for (Feedback f : feedbackList) {
                        StringBuilder stars = new StringBuilder();
                        for (int s = 0; s < f.getRating(); s++) stars.append("&#9733;");
                        for (int s = f.getRating(); s < 5; s++) stars.append("&#9734;");
            %>
            <tr style="border-bottom:1px solid #eee; background:<%= idx % 2 == 0 ? "#fcfcfc" : "white" %>;">
                <td style="padding:11px; font-weight:bold; color:#777;"><%= idx++ %></td>
                <td style="padding:11px; font-weight:bold; color:#1e3c72;"><%= f.getCourse() %></td>
                <td style="padding:11px; font-weight:600; color:#d84315;">
                    <%= (f.getFacultyName() != null && !f.getFacultyName().isEmpty()) ? f.getFacultyName() : "Er. Ram Babu Buri" %>
                </td>
                <td style="padding:11px; color:#ff9800; font-size:15px; white-space:nowrap;"><%= stars.toString() %></td>
                <td style="padding:11px; max-width:380px; line-height:1.4;"><%= f.getFeedbackText() %></td>
                <td style="padding:11px; color:#888; white-space:nowrap; font-size:12px;">
                    <%= (f.getSubmittedAt() != null) ? f.getSubmittedAt() : "Recent" %>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" style="padding:32px; text-align:center; color:#888;">
                    No feedback records matching the selected search criteria.
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<style media="print">
    nav, .role-switch, form, .btn, details, footer { display: none !important; }
    body { background: white !important; font-size: 11pt; }
    table { width: 100% !important; border: 1px solid #000; }
    th, td { border: 1px solid #ddd; padding: 6px; }
</style>

<%@ include file="footer.jspf" %>
