/**
 * Project: Java Lab Portal (RTU 5th Sem Practical Lab)
 * Developed by: Krishna Gupta, Jayesh Sharma, Kanishq Chasta, Juned Hussain, Karan Ramlakhani
 * Module: Authentication & Access Control
 * Description: Intercepts HTTP requests and verifies role permissions.
 */
package com.javalab.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class AccessControlFilter implements Filter {

    private static final String ROLE_STUDENT = "STUDENT";
    private static final String ROLE_TEACHER = "TEACHER";
    private static final String[] PUBLIC_ENDPOINTS = {
            "/login.jsp", "/LoginServlet", "/error.jsp"
    };
    private static final String[] TEACHER_EXCLUSIVE_ENDPOINTS = {
            "/StudentServlet", "/students/",
            "/ClassServlet", "/classes/",
            "/theory/addTheory.jsp",
            "/experiments/addExperiment.jsp"
    };
    private static final String[] ACTION_RESTRICTED_ENDPOINTS = {
            "/TheoryServlet", "/ExperimentServlet"
    };

    @Override
    public void init(FilterConfig filterConfig) { }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        String contextPath = httpRequest.getContextPath();
        String targetURI = httpRequest.getRequestURI().substring(contextPath.length());
        if (isPublicOrStatic(targetURI)) {
            filterChain.doFilter(request, response);
            return;
        }

        HttpSession activeSession = httpRequest.getSession(false);
        String currentRole = (activeSession != null) ? (String) activeSession.getAttribute("role") : null;
        if (currentRole == null) {
            httpResponse.sendRedirect(contextPath + "/login.jsp?error=Please+login+first");
            return;
        }
        if (ROLE_STUDENT.equalsIgnoreCase(currentRole)) {
            if (isTeacherExclusive(targetURI)) {
                httpResponse.sendRedirect(contextPath + "/index.jsp?error=Teachers+only");
                return;
            }
            if (isActionRestricted(targetURI)) {
                String requestedAction = httpRequest.getParameter("action");
                if ("add".equalsIgnoreCase(requestedAction) || "delete".equalsIgnoreCase(requestedAction)) {
                    httpResponse.sendRedirect(contextPath + "/index.jsp?error=Teachers+only");
                    return;
                }
            }
        }

        filterChain.doFilter(request, response);
    }

    private boolean isPublicOrStatic(String uri) {
        if (uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".png") || uri.endsWith(".ico")) {
            return true;
        }
        for (String endpoint : PUBLIC_ENDPOINTS) {
            if (uri.equals(endpoint)) return true;
        }
        return false;
    }

    private boolean isTeacherExclusive(String uri) {
        for (String restricted : TEACHER_EXCLUSIVE_ENDPOINTS) {
            if (uri.equals(restricted) || uri.startsWith(restricted)) {
                return true;
            }
        }
        return false;
    }

    private boolean isActionRestricted(String uri) {
        for (String gated : ACTION_RESTRICTED_ENDPOINTS) {
            if (uri.equals(gated)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void destroy() { }
}

