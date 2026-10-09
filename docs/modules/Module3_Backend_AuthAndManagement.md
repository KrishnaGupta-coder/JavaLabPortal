# Module 3: Backend — Authentication, Security & Core Management

**Team Role:** Kanishq Chasta — Member 3 (Backend Developer 1)  
**Layer:** Controller & Security Layer (MVC Architecture)  
**Technologies:** Java EE Servlets, Servlet Filters, HTTP Session Management, XML Deployment Descriptors  

---

## 1. Overview & Responsibilities
This module is the security core of the application, implementing role-based access control, session lifecycle management, and core administrative controllers.

* **Authentication & Session Lifecycle Controllers:**
  * Developed `LoginServlet.java` verifying Teacher and Student credentials against database DAOs and initializing secure HTTP sessions.
  * Implemented `LogoutServlet.java` invalidating sessions, clearing security contexts, and preventing browser cache re-entry.
* **Centralized Security Filter:**
  * Designed `AccessControlFilter.java` enforcing Role-Based Access Control (RBAC) across all protected URL endpoints (`/students/*`, `/classes/*`, `/experiments/*`).
* **Student & Class Management Controllers:**
  * Implemented `StudentServlet.java` orchestrating full CRUD operations, searches, and class section associations.
  * Developed `ClassServlet.java` managing academic sections and batches.
* **Deployment Configuration (`web.xml`):**
  * Authored servlet mappings, filter chain definitions, error page handlers, and session timeout thresholds.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/main/java/com/javalab/servlet/LoginServlet.java` | Authenticates teacher & student credentials, initializes session |
| `src/main/java/com/javalab/servlet/LogoutServlet.java` | Terminates active session and cleans up user context |
| `src/main/java/com/javalab/filter/AccessControlFilter.java` | Centralized filter enforcing authentication and role-based route security |
| `src/main/java/com/javalab/servlet/StudentServlet.java` | Controller handling student listing, addition, editing, deletion, and searching |
| `src/main/java/com/javalab/servlet/ClassServlet.java` | Controller handling class section creation, retrieval, and deletion |
| `src/main/webapp/WEB-INF/web.xml` | Servlet mappings, filter configuration, and web deployment descriptor |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 1 & 2 (Frontend Presentation):**
  * Receives authentication requests from `login.jsp` and dispatches session state to `header.jspf` and `index.jsp`.
  * Processes form actions from `studentList.jsp`, `addStudent.jsp`, and `manageClasses.jsp`, redirecting cleanly with flash attributes.
* **Integration with Member 5 (Database & Persistence):**
  * Invokes `TeacherDAO.java` and `StudentDAO.java` during login authentication and user retrieval.
  * Delegates relational CRUD actions to `ClassSectionDAO.java` and `StudentDAO.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Declarative Interceptor Architecture:**
  * Implemented `AccessControlFilter` utilizing `javax.servlet.Filter` to intercept all inbound HTTP requests, guaranteeing zero unauthorized access to administrative resources.
* **Hardened Session Management:**
  * Enforced session invalidation with anti-cache HTTP response headers (`Cache-Control: no-cache, no-store, must-revalidate`) preventing back-button access to protected student data.
* **Centralized Request Routing & Action Dispatching:**
  * Structured controllers with command-action dispatchers (`action=list`, `action=add`, `action=delete`) for clean REST-like URL mappings.
