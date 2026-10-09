# Module 3: Backend - " Authentication, Security & Core Management

**Team Role:** Kanishq Chasta - Member 3 (Backend Developer 1)
**Layer:** Controller & Filter Layer (MVC)
**Technologies:** Java EE (Servlet 3.0 / 2.5), Java Filter API, HTTP Session Management, XML

---

## 1. Overview & Responsibilities
This module implements the core gatekeeping, authentication, session lifecycle, security route protection, and administrative CRUD controllers for students and classes. - **Role-Based Authentication Engine:** - `LoginServlet.java` - " Inspects HTTP POST parameters, validates Teacher credentials or Student RTU Roll Numbers via the DAO layer, creates an `HttpSession`, and stores authenticated user details (`username`, `role`, `name`). - `LogoutServlet.java` - " Invalidates the user session, clears session attributes, and issues an HTTP redirect back to `login.jsp`. - **Application Security & Route Guard:** - `AccessControlFilter.java` - " Intercepts every inbound HTTP request across the portal: - Verifies session presence; redirects unauthenticated visitors to `login.jsp`. - Enforces role-based permissions: prevents students from accessing teacher-only URLs (`StudentServlet`, `ClassServlet`, `theory/addTheory.jsp`, `experiments/addExperiment.jsp`), redirecting unauthorized requests with status messages. - Excludes public assets (CSS, images, login actions) from blocking filters. - **Student CRUD Controller:** - `StudentServlet.java` - " Dispatches and handles actions: `list`, `add`, `update`, `delete`, and `search`. Validates form payloads, interacts with `StudentDAO`, and forwards clean model data to JSPs. - **Class Section Controller:** - `ClassServlet.java` - " Handles section operations: listing available classes, creating new class sections (`AI&DS-A`, etc.), and deleting classes via `ClassSectionDAO`. - **Deployment Descriptor Configuration:** - `web.xml` - " Maps servlet classes to URL patterns, configures filter chains (`AccessControlFilter` on `/*`), sets session timeouts, and defines `login.jsp` as the welcome file.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/com/javalab/servlet/LoginServlet.java` | Authenticates teacher & student credentials, initializes session |
| `src/com/javalab/servlet/LogoutServlet.java` | Terminates active session and cleans up user context |
| `src/com/javalab/filter/AccessControlFilter.java` | Centralized filter enforcing authentication and role-based route security |
| `src/com/javalab/servlet/StudentServlet.java` | Controller handling student listing, addition, editing, deletion, and searching |
| `src/com/javalab/servlet/ClassServlet.java` | Controller handling class section creation, retrieval, and deletion |
| `WebContent/WEB-INF/web.xml` | Servlet mappings, filter configuration, and web deployment descriptor |

---

## 3. Integration with Other Team Members - **With Member 1 & 2 (Frontend 1 & 2):** Receives HTTP form submissions from `login.jsp`, `addStudent.jsp`, `updateStudent.jsp`, and `manageClasses.jsp`; sets request attributes and forwards control to render `index.jsp` and `studentList.jsp`. - **With Member 5 (Database):** Invokes data operations via `TeacherDAO`, `StudentDAO`, and `ClassSectionDAO`, passing entity objects (`Teacher`, `Student`, `ClassSection`).

---

## 4. Demo / Viva Talking Points
1. *"I developed the core backend controllers for authentication and administrative management, along with the centralized security filter."*
2. *"I implemented `AccessControlFilter` using the Java EE Filter API, which intercepts all incoming requests to enforce role-based access control (RBAC). It guarantees that student users cannot access teacher administration servlets even if they type the URL directly in the browser address bar."*
3. *"I configured session management in `LoginServlet` and `LogoutServlet` and structured the web deployment descriptor (`web.xml`)."*


