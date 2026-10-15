# Module 3: Backend — Authentication, Security & Core Management

**Team Role:** Kanishq Chasta — Member 3 (Backend Developer 1)  
**Layer:** Controller & Security Layer (MVC Architecture)  
**Technologies:** Java EE Servlets, Servlet Filters, HTTP Session Management, Concurrent Collections, XML Deployment Descriptors  

---

## 1. Overview & Responsibilities
This module is the security core of the application, implementing role-based access control, session lifecycle management, concurrent device locking, and core administrative controllers.

* **Authentication & Session Lifecycle Controllers:**
  * Developed `LoginServlet.java` verifying Teacher and Student credentials against database DAOs and initializing secure HTTP sessions.
  * Implemented `LogoutServlet.java` invalidating sessions, clearing security contexts, and preventing browser cache re-entry.
* **Concurrent Session Control & Single Active Device Lock:**
  * Developed `ActiveSessionManager.java` utilizing a thread-safe `ConcurrentHashMap<String, HttpSession>`.
  * When a user logs in from another browser or device, their prior session is automatically invalidated and replaced. This prevents credential sharing, unauthorized multi-device access, and zombie session persistence.
* **Student Self-Registration Controller:**
  * Developed `RegisterServlet.java` handling student self-registration (`action=register`).
  * Validates RTU roll numbers, prevents duplicate accounts, and assigns students to active class sections. Explicitly disallows student registration as faculty to preserve institutional hierarchy.
* **Centralized Security Filter (`AccessControlFilter.java`):**
  * Intercepts all incoming requests across the application.
  * Enforces Role-Based Access Control (RBAC): strictly protects administrative endpoints (`/students/*`, `/classes/*`, `/theory/addTheory.jsp`, `/experiments/addExperiment.jsp`) and teacher-exclusive feedback audits (`feedbackList.jsp`, `FeedbackServlet?action=list`, `FeedbackServlet?action=exportCsv`).
  * Bypasses static resources (CSS, JS, images) and public authentication routes (`/login.jsp`, `/RegisterServlet`, `action=exp10_login`, `action=exp10_register`).
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
| `src/main/java/com/javalab/servlet/RegisterServlet.java` | Controller for student self-registration with duplicate prevention |
| `src/main/java/com/javalab/util/ActiveSessionManager.java` | Thread-safe single active device session lock via ConcurrentHashMap |
| `src/main/java/com/javalab/filter/AccessControlFilter.java` | Centralized filter enforcing authentication and role-based route security |
| `src/main/java/com/javalab/servlet/StudentServlet.java` | Controller handling student listing, addition, editing, deletion, and searching |
| `src/main/java/com/javalab/servlet/ClassServlet.java` | Controller handling class section creation, retrieval, and deletion |
| `src/main/webapp/WEB-INF/web.xml` | Servlet mappings, filter configuration, and web deployment descriptor |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 1 & 2 (Frontend Presentation):**
  * Receives authentication requests from `login.jsp` and dispatches session state to `header.jspf` and `index.jsp`.
  * Processes form actions from `studentList.jsp`, `addStudent.jsp`, `manageClasses.jsp`, and `feedback.jsp` (auth); redirects cleanly with status flash messages.
* **Integration with Member 5 (Database & Persistence):**
  * Invokes `TeacherDAO.java` and `StudentDAO.java` during login authentication and student registration.
  * Delegates relational CRUD actions to `ClassSectionDAO.java` and `StudentDAO.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Thread-Safe Concurrent Session Management:**
  * Implemented single active session tracking via `ConcurrentHashMap` in `ActiveSessionManager` to eliminate duplicate logins and enforce strict exam integrity.
* **Declarative Interceptor Architecture:**
  * Implemented `AccessControlFilter` utilizing `javax.servlet.Filter` to intercept all inbound HTTP requests, guaranteeing zero unauthorized access to administrative resources.
* **Role-Segregated Registration Gateway:**
  * Enforced student-only self-registration while locking faculty provisioning to database administrators, preventing privilege escalation.
