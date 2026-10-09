/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Student & Class Management
 * Description: Controller for student registration, updates, and searches.
 */
package com.javalab.servlet;

import com.javalab.dao.StudentDAO;
import com.javalab.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {

    private final StudentDAO studentDAO = new StudentDAO();

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
            switch (action) {

                case "add": {
                    Student student = new Student();
                    student.setName(request.getParameter("name"));
                    student.setRollNumber(request.getParameter("rollNumber"));
                    student.setClassId(Integer.parseInt(request.getParameter("classId")));
                    studentDAO.addStudent(student);
                    response.sendRedirect("StudentServlet?action=list&msg=Student+added+successfully");
                    return;
                }

                case "update": {
                    Student student = new Student();
                    student.setId(Integer.parseInt(request.getParameter("id")));
                    student.setName(request.getParameter("name"));
                    student.setRollNumber(request.getParameter("rollNumber"));
                    student.setClassId(Integer.parseInt(request.getParameter("classId")));
                    studentDAO.updateStudent(student);
                    response.sendRedirect("StudentServlet?action=list&msg=Student+updated+successfully");
                    return;
                }

                case "delete": {
                    int id = Integer.parseInt(request.getParameter("id"));
                    studentDAO.deleteStudent(id);
                    response.sendRedirect("StudentServlet?action=list&msg=Student+deleted+successfully");
                    return;
                }

                case "edit": {
                    int id = Integer.parseInt(request.getParameter("id"));
                    Student student = studentDAO.getStudentById(id);
                    request.setAttribute("student", student);
                    request.getRequestDispatcher("/students/updateStudent.jsp").forward(request, response);
                    return;
                }

                case "search": {
                    String keyword = request.getParameter("keyword");
                    List<Student> results = (keyword == null || keyword.trim().isEmpty())
                            ? studentDAO.getAllStudents()
                            : studentDAO.searchStudents(keyword.trim());
                    request.setAttribute("students", results);
                    request.setAttribute("keyword", keyword);
                    request.getRequestDispatcher("/students/studentList.jsp").forward(request, response);
                    return;
                }

                case "list":
                default: {
                    List<Student> students = studentDAO.getAllStudents();
                    request.setAttribute("students", students);
                    request.getRequestDispatcher("/students/studentList.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

