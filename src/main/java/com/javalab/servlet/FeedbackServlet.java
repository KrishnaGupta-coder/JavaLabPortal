/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Online Feedback System
 * Description: Controller for processing student feedback submissions.
 */
package com.javalab.servlet;

import com.javalab.dao.FeedbackDAO;
import com.javalab.model.Feedback;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            if ("submit".equals(action)) {

                Feedback feedback = new Feedback();
                feedback.setStudentName(request.getParameter("studentName"));
                feedback.setCourse(request.getParameter("course"));
                feedback.setFeedbackText(request.getParameter("feedbackText"));

                int rating = 5;
                try {
                    rating = Integer.parseInt(request.getParameter("rating"));
                } catch (NumberFormatException ignored) { }
                feedback.setRating(rating);

                feedbackDAO.addFeedback(feedback);
                response.sendRedirect("FeedbackServlet?action=list&msg=Feedback+submitted.+Thank+you!");
                return;
            }

            List<Feedback> feedbackList = feedbackDAO.getAllFeedback();
            request.setAttribute("feedbackList", feedbackList);
            request.getRequestDispatcher("/feedbackList.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

