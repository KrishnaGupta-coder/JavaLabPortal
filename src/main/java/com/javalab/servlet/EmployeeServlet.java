/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiment 5 - Employee Servlet Controller
 */
package com.javalab.servlet;

import com.javalab.dao.EmployeeDAO;
import com.javalab.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

    private final EmployeeDAO employeeDAO = new EmployeeDAO();

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
        if (action == null || action.trim().isEmpty()) {
            action = "load";
        }

        try {
            if ("save".equals(action)) {
                String empid = request.getParameter("empid");
                String empname = request.getParameter("empname");
                String empno = request.getParameter("empno");

                Employee emp = new Employee(empid, empname, empno);
                boolean ok = employeeDAO.save(emp);
                if (ok) {
                    response.sendRedirect("EmployeeServlet?action=load&msg=Employee+Saved+Successfully");
                } else {
                    response.sendRedirect("EmployeeServlet?action=load&error=Failed+to+save+employee");
                }
                return;
            }
            else if ("search".equals(action)) {
                String searchId = request.getParameter("searchId");
                Employee found = employeeDAO.findById(searchId);
                List<Employee> all = employeeDAO.getAll();
                request.setAttribute("employeeList", all);
                if (found != null) {
                    request.setAttribute("searchEmployee", found);
                    request.setAttribute("msg", "Record found for ID: " + found.getEmpid());
                } else {
                    request.setAttribute("error", "No employee found with ID: " + searchId);
                }
                request.getRequestDispatcher("/exp5.jsp").forward(request, response);
                return;
            }
            else if ("update".equals(action)) {
                String empid = request.getParameter("empid");
                String empname = request.getParameter("empname");
                String empno = request.getParameter("empno");

                Employee emp = new Employee(empid, empname, empno);
                boolean ok = employeeDAO.update(emp);
                if (ok) {
                    response.sendRedirect("EmployeeServlet?action=load&msg=Employee+Updated+Successfully");
                } else {
                    response.sendRedirect("EmployeeServlet?action=load&error=Failed+to+update+employee");
                }
                return;
            }
            else if ("delete".equals(action)) {
                String empid = request.getParameter("empid");
                boolean ok = employeeDAO.delete(empid);
                if (ok) {
                    response.sendRedirect("EmployeeServlet?action=load&msg=Employee+Deleted+Successfully");
                } else {
                    response.sendRedirect("EmployeeServlet?action=load&error=Failed+to+delete+employee");
                }
                return;
            }

            // Default: load all
            List<Employee> all = employeeDAO.getAll();
            request.setAttribute("employeeList", all);
            request.getRequestDispatcher("/exp5.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database Error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
