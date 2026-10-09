/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Theory Content
 * Description: Controller for reading and publishing study notes.
 */
package com.javalab.servlet;

import com.javalab.dao.TheoryContentDAO;
import com.javalab.model.TheoryContent;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/TheoryServlet")
public class TheoryServlet extends HttpServlet {

    private final TheoryContentDAO theoryDAO = new TheoryContentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        handleRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
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
            if ("add".equals(action)) {
                TheoryContent content = new TheoryContent();
                content.setTitle(request.getParameter("title"));
                content.setContent(request.getParameter("content"));
                theoryDAO.addContent(content);
                response.sendRedirect("TheoryServlet?action=list&msg=Content+added+successfully");
                return;
            }

            if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                theoryDAO.deleteContent(id);
                response.sendRedirect("TheoryServlet?action=list&msg=Content+deleted");
                return;
            }

            List<TheoryContent> contentList = theoryDAO.getAllContent();
            request.setAttribute("contentList", contentList);
            request.getRequestDispatcher("/theory/theoryList.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

