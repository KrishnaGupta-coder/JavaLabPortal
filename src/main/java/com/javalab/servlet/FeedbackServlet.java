/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Online Feedback System - Controller
 */
package com.javalab.servlet;

import com.javalab.dao.FeedbackDAO;
import com.javalab.model.Feedback;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {

    private final FeedbackDAO feedbackDAO = new FeedbackDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handleRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handleRequest(request, response);
    }

    private void handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String role = (String) session.getAttribute("role");
        String action = request.getParameter("action");
        if (action == null || action.trim().isEmpty()) {
            action = "STUDENT".equals(role) ? "form" : "list";
        }

        try {
            // Student submits feedback
            if ("submit".equals(action)) {
                String studentName = (String) session.getAttribute("name");
                if (studentName == null || studentName.trim().isEmpty()) {
                    studentName = request.getParameter("studentName");
                }
                if (studentName == null || studentName.trim().isEmpty()) {
                    studentName = "Anonymous Student";
                }

                String course = request.getParameter("course");
                String facultyName = request.getParameter("facultyName");
                String feedbackText = request.getParameter("feedbackText");

                int rating = 5;
                try {
                    rating = Integer.parseInt(request.getParameter("rating"));
                } catch (Exception ignored) { }

                Feedback feedback = new Feedback();
                feedback.setStudentName(studentName);
                feedback.setCourse(course);
                feedback.setFacultyName(facultyName != null && !facultyName.trim().isEmpty() ? facultyName.trim() : "Er. Ram Babu Buri");
                feedback.setFeedbackText(feedbackText);
                feedback.setRating(rating);

                feedbackDAO.addFeedback(feedback);

                // Students are NOT redirected to feedback list!
                response.sendRedirect("feedback.jsp?msg=Your+feedback+has+been+successfully+submitted+to+the+faculty.+Thank+you!");
                return;
            }

            // Export to CSV / Excel (Teacher ONLY)
            if ("export_csv".equals(action)) {
                if (!"TEACHER".equals(role)) {
                    response.sendRedirect("index.jsp?error=Export+privileges+are+restricted+to+faculty.");
                    return;
                }

                String facultyQuery = request.getParameter("facultyQuery");
                String courseQuery = request.getParameter("courseQuery");
                List<Feedback> list = feedbackDAO.searchFeedback(facultyQuery, courseQuery, null);

                response.setContentType("text/csv; charset=UTF-8");
                response.setHeader("Content-Disposition", "attachment; filename=\"Faculty_Feedback_Report.csv\"");

                PrintWriter out = response.getWriter();
                out.println("ID,Student Name,Subject / Course,Faculty Name,Rating,Feedback Comments,Submitted At");
                for (Feedback f : list) {
                    String cleanComment = f.getFeedbackText() != null ? f.getFeedbackText().replace("\"", "'") : "";
                    out.println(String.format("%d,\"%s\",\"%s\",\"%s\",%d,\"%s\",\"%s\"",
                        f.getId(),
                        f.getStudentName() != null ? f.getStudentName() : "",
                        f.getCourse() != null ? f.getCourse() : "",
                        f.getFacultyName() != null ? f.getFacultyName() : "",
                        f.getRating(),
                        cleanComment,
                        f.getSubmittedAt() != null ? f.getSubmittedAt() : ""
                    ));
                }
                out.flush();
                return;
            }

            // Teacher Feedback Dashboard (Teacher ONLY)
            if ("list".equals(action)) {
                if (!"TEACHER".equals(role)) {
                    response.sendRedirect("index.jsp?error=Feedback+evaluation+reports+are+accessible+to+faculty+only.");
                    return;
                }

                String facultyQuery = request.getParameter("facultyQuery");
                String courseQuery = request.getParameter("courseQuery");
                String ratingStr = request.getParameter("ratingFilter");
                Integer ratingFilter = null;
                if (ratingStr != null && !ratingStr.trim().isEmpty()) {
                    try {
                        ratingFilter = Integer.parseInt(ratingStr.trim());
                    } catch (Exception ignored) {}
                }

                List<Feedback> feedbackList = feedbackDAO.searchFeedback(facultyQuery, courseQuery, ratingFilter);
                request.setAttribute("feedbackList", feedbackList);
                request.setAttribute("facultyQuery", facultyQuery);
                request.setAttribute("courseQuery", courseQuery);
                request.setAttribute("ratingFilter", ratingStr);

                request.getRequestDispatcher("/feedbackList.jsp").forward(request, response);
                return;
            }

            // Default student form
            response.sendRedirect("feedback.jsp");

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
