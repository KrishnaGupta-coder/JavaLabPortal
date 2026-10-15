# Module 4: Backend — Experiments Hub, Theory & Calculator Business Logic

**Team Role:** Jayesh Sharma — Member 4 (Backend Developer 2)  
**Layer:** Controller & Business Logic Layer (MVC Architecture)  
**Technologies:** Java EE Servlets, Java Business Logic, Expression Parsing, CSV Streaming (RFC 4180), Request Dispatching  

---

## 1. Overview & Responsibilities
This module implements the server-side business logic and controllers for the academic core of the portal: the dynamic experiments system, theory publishing workflows, the student feedback pipeline, employee CRUD desk, and mathematical computation engines.

* **Dynamic Experiment Hub Controller:**
  * `ExperimentServlet.java`: Loads the ordered catalog of built-in and teacher-added experiments from `ExperimentDAO`. Processes teacher submissions for new experiments and persists them.
* **Employee Registration Desk CRUD Controller (Experiment 5):**
  * `EmployeeServlet.java`: Controller for Experiment 5. Processes CRUD requests (`save`, `search`, `update`, `delete`, `clean`). Validates employee IDs and contact numbers, delegates persistence to `EmployeeDAO.java`, and sets structured status messages and model attributes for `exp5.jsp`.
* **Role-Based Feedback Pipeline & Data Streaming:**
  * `FeedbackServlet.java`: Overhauled controller managing Experiment 10.
    * Action `exp10_login`: Authenticates users and registers session with `ActiveSessionManager`.
    * Action `exp10_register`: Dispatches student self-registration.
    * Action `exp10_logout`: Terminates session and cleans up active device registry.
    * Action `submit`: Accepts student feedback (subject, faculty name, rating, text), validates constraints, persists via `FeedbackDAO`, and redirects student to confirmation view without exposing peer records.
    * Action `list`: Teacher-only action retrieving filtered feedback records based on faculty, course, and rating.
    * Action `exportCsv`: Direct server-side streaming of RFC 4180 compliant CSV reports with `Content-Disposition: attachment; filename=feedback_report.csv` and MIME type `text/csv` for instant Excel analysis.
* **Theory & Study Content Controller:**
  * `TheoryServlet.java`: Handles retrieval of published theory notes for all users, as well as teacher-only note publishing and deletion actions through `TheoryContentDAO`.
* **MVC Architecture Implementation (Experiment 3):**
  * `CalculatorModel.java`: Core business model that parses mathematical expressions, handles operator precedence, validates input strings, and computes results.
  * `CalculatorServlet.java`: Controller that accepts calculation requests from `exp3.jsp`, delegates computation to `CalculatorModel`, attaches result models to the request scope, and forwards to the view.
* **Arithmetic Processing (Experiment 8):**
  * `ArithmeticServlet.java`: Backend servlet handling arithmetic calculations (`+`, `-`, `*`, `/`) with defensive numeric parsing and division-by-zero checks.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/main/java/com/javalab/servlet/ExperimentServlet.java` | Controller managing lab experiment listings and custom experiment registration |
| `src/main/java/com/javalab/servlet/EmployeeServlet.java` | Controller handling Employee CRUD operations (save, search, update, delete, clean) |
| `src/main/java/com/javalab/servlet/FeedbackServlet.java` | Controller handling role-based feedback actions, student submission, and CSV streaming |
| `src/main/java/com/javalab/servlet/TheoryServlet.java` | Controller managing retrieval, publishing, and removal of theory content |
| `src/main/java/com/javalab/servlet/CalculatorServlet.java` | MVC Controller routing calculations between JSP view and Calculator model |
| `src/main/java/com/javalab/servlet/ArithmeticServlet.java` | Controller processing arithmetic operations with defensive division-by-zero validation |
| `src/main/java/com/javalab/calc/CalculatorModel.java` | Pure Java business logic model performing mathematical expression evaluation |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 1 & 2 (Frontend Views):**
  * Consumes requests from `exp3.jsp`, `exp5.jsp`, `arithmetic.jsp`, `theoryList.jsp`, `feedback.jsp`, and `feedbackList.jsp`, forwarding computed attributes back to the view layer.
* **Integration with Member 5 (Database Persistence):**
  * Persists and queries lab data via `ExperimentDAO.java`, `EmployeeDAO.java`, `TheoryContentDAO.java`, and `FeedbackDAO.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Streamed Binary / Text Exporting:**
  * Implemented direct servlet-to-browser CSV streaming using proper RFC 4180 escaping and HTTP headers, enabling high-performance export without server memory bloat.
* **Complete Employee CRUD Controller:**
  * Standardized CRUD lifecycle operations with transactional validation, parameterized queries, and clean view dispatching.
* **Strict MVC Decoupling & Component Lifecycle:**
  * Separated user interface templates (`exp3.jsp`), request routing (`CalculatorServlet.java`), and computational algorithms (`CalculatorModel.java`), demonstrating classic 3-tier MVC architecture.
