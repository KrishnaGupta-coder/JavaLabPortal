/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiments Hub
 * Description: Controller for MVC Calculator routing and calculations.
 */
package com.javalab.servlet;

import com.javalab.calc.CalculatorModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {

    private final CalculatorModel model = new CalculatorModel();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String expression = request.getParameter("expression");
        request.setAttribute("expression", expression);

        if (expression == null || expression.trim().isEmpty()) {
            request.setAttribute("result", "0.0");
        } else {
            try {
                double value = model.evaluateExpression(expression.trim());
                request.setAttribute("result", String.valueOf(value));
            } catch (ArithmeticException e) {
                request.setAttribute("result", e.getMessage());
            } catch (Exception e) {
                request.setAttribute("result", "Error");
            }
        }

        request.getRequestDispatcher("/exp3.jsp").forward(request, response);
    }
}

