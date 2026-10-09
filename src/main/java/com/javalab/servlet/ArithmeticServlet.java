/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Experiments Hub
 * Description: Controller for basic arithmetic calculations.
 */
package com.javalab.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ArithmeticServlet")
public class ArithmeticServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String result;

        try {
            double num1 = Double.parseDouble(request.getParameter("num1"));
            double num2 = Double.parseDouble(request.getParameter("num2"));
            String operation = request.getParameter("operation");

            double value;
            switch (operation) {
                case "add":      value = num1 + num2; break;
                case "subtract": value = num1 - num2; break;
                case "multiply": value = num1 * num2; break;
                case "divide":
                    if (num2 == 0) {
                        request.setAttribute("result", "Error: division by zero");
                        request.getRequestDispatcher("/arithmetic.jsp").forward(request, response);
                        return;
                    }
                    value = num1 / num2;
                    break;
                default:
                    value = 0;
            }

            result = String.valueOf(value);

        } catch (NumberFormatException e) {
            result = "Error: please enter valid numbers";
        }

        request.setAttribute("result", result);
        request.getRequestDispatcher("/arithmetic.jsp").forward(request, response);
    }
}

