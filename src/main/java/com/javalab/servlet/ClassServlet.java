/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Student & Class Management
 * Description: Controller for class section creation and management.
 */
package com.javalab.servlet;

import com.javalab.dao.ClassSectionDAO;
import com.javalab.model.ClassSection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ClassServlet")
public class ClassServlet extends HttpServlet {

    private final ClassSectionDAO classDAO = new ClassSectionDAO();

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
                String className = request.getParameter("className");
                classDAO.addClass(className);
                response.sendRedirect("ClassServlet?action=list&msg=Class+created+successfully");
                return;
            }

            if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                classDAO.deleteClass(id);
                response.sendRedirect("ClassServlet?action=list&msg=Class+deleted");
                return;
            }

            List<ClassSection> classes = classDAO.getAllClasses();
            request.setAttribute("classes", classes);
            request.getRequestDispatcher("/classes/manageClasses.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

