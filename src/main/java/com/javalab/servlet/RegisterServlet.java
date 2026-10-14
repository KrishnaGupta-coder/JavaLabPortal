/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Student Self-Service Registration
 */
package com.javalab.servlet;

import com.javalab.dao.StudentDAO;
import com.javalab.model.Student;
import com.javalab.util.PortalHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private final StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String rollNumber = request.getParameter("rollNumber");
        String email = request.getParameter("email");
        String classIdStr = request.getParameter("classId");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (name == null || name.trim().isEmpty() ||
            rollNumber == null || rollNumber.trim().isEmpty() ||
            password == null || password.trim().isEmpty()) {
            response.sendRedirect("register.jsp?error=Please+fill+in+all+mandatory+fields.");
            return;
        }

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("register.jsp?error=Passwords+do+not+match.+Please+try+again.");
            return;
        }

        int classId = 1; // Default AI&DS-A
        if (classIdStr != null && !classIdStr.trim().isEmpty()) {
            try {
                classId = Integer.parseInt(classIdStr.trim());
            } catch (Exception ignored) {}
        }

        try {
            // Check if roll number already exists
            Student existing = studentDAO.getStudentByRoll(rollNumber.trim());
            if (existing != null) {
                response.sendRedirect("register.jsp?error=Roll+number+" + rollNumber.trim() + "+is+already+registered.+Please+log+in.");
                return;
            }

            Student s = new Student();
            s.setName(PortalHelper.cleanInput(name));
            s.setRollNumber(rollNumber.trim().toUpperCase());
            s.setClassId(classId);

            studentDAO.registerStudent(s, email, password);

            response.sendRedirect("login.jsp?msg=Registration+successful!+Please+log+in+with+your+name+and+roll+number.");

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Registration Database Error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
