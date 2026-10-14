/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiment 10 - Online Feedback System Controller
 */
package com.javalab.servlet;

import com.javalab.dao.FeedbackDAO;
import com.javalab.dao.StudentDAO;
import com.javalab.dao.TeacherDAO;
import com.javalab.model.Feedback;
import com.javalab.model.Student;
import com.javalab.model.Teacher;
import com.javalab.util.ActiveSessionManager;
import com.javalab.util.PortalHelper;

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
    private final StudentDAO studentDAO = new StudentDAO();
    private final TeacherDAO teacherDAO = new TeacherDAO();

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
            action = "view";
        }

        try {
            // 1. Experiment 10 Dedicated Login
            if ("exp10_login".equals(action)) {
                String reqRole = request.getParameter("role");
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if ("TEACHER".equalsIgnoreCase(reqRole)) {
                    Teacher teacher = teacherDAO.findByUsername(username != null ? username.trim() : "");
                    if (teacher != null && teacher.getPassword().equals(password != null ? password.trim() : "")) {
                        session.setAttribute("role", "TEACHER");
                        session.setAttribute("name", teacher.getName());
                        response.sendRedirect("feedback.jsp?msg=Welcome+Prof.+" + java.net.URLEncoder.encode(teacher.getName(), "UTF-8") + "!");
                        return;
                    }
                    response.sendRedirect("feedback.jsp?tab=login&error=Invalid+faculty+credentials.+Please+try+again.");
                    return;
                } else {
                    // Student Login
                    String rollOrName = username != null ? username.trim() : "";
                    Student student = studentDAO.getStudentByRoll(rollOrName);
                    if (student == null) {
                        student = studentDAO.getStudentByName(rollOrName);
                    }

                    if (student != null) {
                        String studentPwd = studentDAO.getStudentPassword(student.getId());
                        boolean pwdMatch = false;
                        if (password != null && !password.trim().isEmpty()) {
                            pwdMatch = password.trim().equals(studentPwd) || password.trim().equalsIgnoreCase(student.getRollNumber());
                        }

                        if (pwdMatch) {
                            String roll = student.getRollNumber();
                            // Enforce Single Active Device Session for Student
                            if (ActiveSessionManager.isAlreadyLoggedIn(roll, session.getId())) {
                                response.sendRedirect("feedback.jsp?tab=login&error=Security+Alert:+This+student+account+is+already+logged+in+on+another+device+or+browser.+Concurrent+logins+are+blocked+until+logout.");
                                return;
                            }

                            ActiveSessionManager.registerLogin(roll, session.getId());
                            session.setAttribute("role", "STUDENT");
                            session.setAttribute("name", student.getName());
                            session.setAttribute("rollNumber", student.getRollNumber());
                            session.setAttribute("studentId", student.getId());
                            session.setAttribute("className", student.getClassName());

                            response.sendRedirect("feedback.jsp?msg=Welcome+" + java.net.URLEncoder.encode(student.getName(), "UTF-8") + "!");
                            return;
                        }
                    }
                    response.sendRedirect("feedback.jsp?tab=login&error=Invalid+student+roll+number+or+password.+Please+try+again.");
                    return;
                }
            }

            // 2. Experiment 10 Dedicated Student-Only Registration
            if ("exp10_register".equals(action)) {
                String name = request.getParameter("name");
                String rollNumber = request.getParameter("rollNumber");
                String email = request.getParameter("email");
                String classIdStr = request.getParameter("classId");
                String password = request.getParameter("password");
                String confirmPassword = request.getParameter("confirmPassword");

                if (name == null || name.trim().isEmpty() ||
                    rollNumber == null || rollNumber.trim().isEmpty() ||
                    password == null || password.trim().isEmpty()) {
                    response.sendRedirect("feedback.jsp?tab=register&error=All+mandatory+fields+are+required.");
                    return;
                }

                if (!password.equals(confirmPassword)) {
                    response.sendRedirect("feedback.jsp?tab=register&error=Passwords+do+not+match.+Please+try+again.");
                    return;
                }

                int classId = 1;
                if (classIdStr != null && !classIdStr.trim().isEmpty()) {
                    try {
                        classId = Integer.parseInt(classIdStr.trim());
                    } catch (Exception ignored) {}
                }

                Student existing = studentDAO.getStudentByRoll(rollNumber.trim());
                if (existing != null) {
                    response.sendRedirect("feedback.jsp?tab=register&error=Roll+number+" + rollNumber.trim() + "+is+already+registered.+Please+log+in.");
                    return;
                }

                Student s = new Student();
                s.setName(PortalHelper.cleanInput(name));
                s.setRollNumber(rollNumber.trim().toUpperCase());
                s.setClassId(classId);

                studentDAO.registerStudent(s, email, password);

                // Auto login student in single session
                String roll = s.getRollNumber();
                ActiveSessionManager.registerLogin(roll, session.getId());
                session.setAttribute("role", "STUDENT");
                session.setAttribute("name", s.getName());
                session.setAttribute("rollNumber", s.getRollNumber());
                session.setAttribute("studentId", s.getId());

                response.sendRedirect("feedback.jsp?msg=Student+registration+successful!+You+are+now+logged+in+as+" + java.net.URLEncoder.encode(s.getName(), "UTF-8"));
                return;
            }

            // 3. Experiment 10 Logout
            if ("exp10_logout".equals(action)) {
                String roll = (String) session.getAttribute("rollNumber");
                if (roll != null) {
                    ActiveSessionManager.removeLogin(roll);
                }
                session.removeAttribute("role");
                session.removeAttribute("name");
                session.removeAttribute("rollNumber");
                session.removeAttribute("studentId");
                session.removeAttribute("className");

                response.sendRedirect("feedback.jsp?tab=login&msg=You+have+been+logged+out+of+the+feedback+system.");
                return;
            }

            // 4. Student submits feedback
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

                // Students are NOT shown other feedbacks! Redirect back with success status
                response.sendRedirect("feedback.jsp?submitted=true&msg=Feedback+successfully+recorded.+Thank+you+for+your+submission!");
                return;
            }

            // 5. Export to CSV / Excel (Teacher ONLY)
            if ("export_csv".equals(action)) {
                if (!"TEACHER".equals(role)) {
                    response.sendRedirect("feedback.jsp?error=Export+privileges+are+restricted+to+faculty.");
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

            // 6. Default view
            response.sendRedirect("feedback.jsp");

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
