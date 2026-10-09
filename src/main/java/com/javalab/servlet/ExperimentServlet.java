/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiments Hub
 * Description: Controller for experiment catalog and custom additions.
 */
package com.javalab.servlet;

import com.javalab.dao.ExperimentDAO;
import com.javalab.model.Experiment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ExperimentServlet")
public class ExperimentServlet extends HttpServlet {

    private final ExperimentDAO experimentDAO = new ExperimentDAO();

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
                Experiment experiment = new Experiment();
                experiment.setTitle(request.getParameter("title"));
                experiment.setDescription(request.getParameter("description"));
                experiment.setCodeContent(request.getParameter("codeContent"));
                experiment.setOrderNo(experimentDAO.getNextOrderNo());
                experimentDAO.addExperiment(experiment);
                response.sendRedirect("ExperimentServlet?action=list&msg=Experiment+added+successfully");
                return;
            }

            if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                experimentDAO.deleteExperiment(id);
                response.sendRedirect("ExperimentServlet?action=list&msg=Experiment+deleted");
                return;
            }

            List<Experiment> experiments = experimentDAO.getAllExperiments();
            request.setAttribute("experiments", experiments);
            request.getRequestDispatcher("/experiments.jsp").forward(request, response);

        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

