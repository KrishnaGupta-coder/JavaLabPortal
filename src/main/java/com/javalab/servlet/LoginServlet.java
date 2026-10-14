/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Authentication & Access Control
 * Description: Handles user login validation and session initialization.
 */
package com.javalab.servlet;

import com.javalab.dao.StudentDAO;
import com.javalab.dao.TeacherDAO;
import com.javalab.model.Student;
import com.javalab.model.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private final TeacherDAO teacherDAO = new TeacherDAO();
    private final StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String role = request.getParameter("role");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        try {
            if ("TEACHER".equals(role)) {

                Teacher teacher = teacherDAO.findByUsername(
                        username == null ? "" : username.trim()
                );

                if (teacher != null
                        && teacher.getPassword().equals(password)) {

                    session.setAttribute("role", "TEACHER");
                    session.setAttribute("name", teacher.getName());

                    response.sendRedirect("index.jsp");
                    return;
                }

            }
            else if ("STUDENT".equals(role)) {

                String studentName = username == null
                        ? ""
                        : username.trim();

                String studentRollNumber = password == null
                        ? ""
                        : password.trim();

Student student = studentDAO.getStudentByName(studentName);

if (student != null
                        && student.getRollNumber().equals(studentRollNumber)) {

                    session.setAttribute("role", "STUDENT");
                    session.setAttribute("name", student.getName());
                    session.setAttribute("rollNumber", student.getRollNumber());
                    session.setAttribute("studentId", student.getId());
                    session.setAttribute("className", student.getClassName());

                    response.sendRedirect("index.jsp");
                    return;
                }
            }
            response.sendRedirect("login.jsp?error=Invalid+credentials");

        } catch (SQLException e) {

            request.setAttribute(
                    "errorMessage",
                    "Database error: " + e.getMessage()
            );

            request.getRequestDispatcher("/error.jsp")
                   .forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("login.jsp");
    }
}

