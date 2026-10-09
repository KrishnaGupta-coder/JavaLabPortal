# Module 4: Backend — Experiments Hub, Theory & Calculator Business Logic

**Team Role:** Jayesh Sharma — Member 4 (Backend Developer 2)  
**Layer:** Controller & Business Logic Layer (MVC Architecture)  
**Technologies:** Java EE Servlets, Java Business Logic, Expression Parsing, Request Dispatching  

---

## 1. Overview & Responsibilities
This module implements the server-side business logic and controllers for the academic core of the portal: the dynamic experiments system, theory publishing workflows, the student feedback pipeline, and mathematical computation engines.

* **Dynamic Experiment Hub Controller:**
  * `ExperimentServlet.java`: Loads the ordered catalog of built-in and teacher-added experiments from `ExperimentDAO`. Processes teacher submissions for new experiments and persists them.
* **Theory & Study Content Controller:**
  * `TheoryServlet.java`: Handles retrieval of published theory notes for all users, as well as teacher-only note publishing and deletion actions through `TheoryContentDAO`.
* **Feedback System Controller:**
  * `FeedbackServlet.java`: Processes submitted course reviews, validates ratings and text input, persists them via `FeedbackDAO`, and compiles summary lists for viewing.
* **MVC Architecture Implementation (Experiment 3):**
  * `CalculatorModel.java`: Core business model that parses mathematical expressions, handles operator precedence, validates input strings, and computes results.
  * `CalculatorServlet.java`: Controller that accepts calculation requests from `exp3.jsp`, delegates computation to `CalculatorModel`, attaches result models to the request scope, and forwards to the view.
* **Arithmetic Processing (Experiment 8):**
  * `ArithmeticServlet.java`: Backend servlet handling arithmetic calculations (`+`, `-`, `*`, `/`) with division-by-zero checks.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/main/java/com/javalab/servlet/ExperimentServlet.java` | Controller managing lab experiment listings and custom experiment registration |
| `src/main/java/com/javalab/servlet/TheoryServlet.java` | Controller managing retrieval, publishing, and removal of theory content |
| `src/main/java/com/javalab/servlet/FeedbackServlet.java` | Controller handling student feedback submission and review listing |
| `src/main/java/com/javalab/servlet/CalculatorServlet.java` | MVC Controller routing calculations between JSP view and Calculator model |
| `src/main/java/com/javalab/servlet/ArithmeticServlet.java` | Controller processing arithmetic operations from Experiment 8 |
| `src/main/java/com/javalab/calc/CalculatorModel.java` | Pure Java business logic model performing mathematical expression evaluation |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 1 & 2 (Frontend Views):**
  * Consumes requests from `exp3.jsp`, `arithmetic.jsp`, `theoryList.jsp`, and `feedback.jsp`, forwarding computed attributes back to the view layer.
* **Integration with Member 5 (Database Persistence):**
  * Persists and queries lab data via `ExperimentDAO.java`, `TheoryContentDAO.java`, and `FeedbackDAO.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Strict MVC Decoupling & Component Lifecycle:**
  * Separated user interface templates (`exp3.jsp`), request routing (`CalculatorServlet.java`), and computational algorithms (`CalculatorModel.java`), demonstrating classic 3-tier MVC architecture.
* **Defensive Arithmetic Exception Handling:**
  * Engineered robust server-side validation to intercept division-by-zero, invalid numeric parsing, and overflow exceptions before dispatching results to views.
* **Dynamic Syllabus Extensibility:**
  * Designed the experiment catalog to support dynamic additions from faculty administrators without requiring server redeployment.
