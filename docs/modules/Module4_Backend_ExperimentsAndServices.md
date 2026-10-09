# Module 4: Backend - " Experiments Hub, Theory & Calculator Business Logic

**Team Role:** Jayesh Sharma - Member 4 (Backend Developer 2)
**Layer:** Controller & Business Logic Layer (MVC)
**Technologies:** Java EE Servlets, Java Business Logic, Expression Parsing, Request Dispatching

---

## 1. Overview & Responsibilities
This module implements the server-side business logic and controllers for the academic core of the portal: the dynamic experiments system, theory publishing workflows, the student feedback pipeline, and mathematical computation engines. - **Dynamic Experiment Hub Controller:** - `ExperimentServlet.java` - " Loads the ordered catalog of built-in and teacher-added experiments from `ExperimentDAO`. Processes teacher submissions for new experiments, persists them, and re-renders the updated hub dynamically. - **Theory & Study Content Controller:** - `TheoryServlet.java` - " Handles retrieval of published theory notes for all users, as well as teacher-only note publishing and deletion actions through `TheoryContentDAO`. - **Feedback System Controller:** - `FeedbackServlet.java` - " Processes submitted course reviews, validates ratings and text input, persists them via `FeedbackDAO`, and compiles summary lists for viewing. - **MVC Architecture Demonstration (Experiment 3):** - `CalculatorModel.java` - " Core business model that parses mathematical expressions, handles operator precedence, validates input strings, and computes results. - `CalculatorServlet.java` - " The controller that accepts calculation requests from `exp3.jsp`, delegates computation to `CalculatorModel`, attaches result models to the request scope, and forwards to the view. - **Arithmetic Processing (Experiment 8):** - `ArithmeticServlet.java` - " Backend servlet handling basic arithmetic calculations (`+`, `-`, `*`, `/`) with division-by-zero checks.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/com/javalab/servlet/ExperimentServlet.java` | Controller managing lab experiment listings and custom experiment registration |
| `src/com/javalab/servlet/TheoryServlet.java` | Controller managing retrieval, publishing, and removal of theory content |
| `src/com/javalab/servlet/FeedbackServlet.java` | Controller handling student feedback submission and review listing |
| `src/com/javalab/servlet/CalculatorServlet.java` | MVC Controller routing calculations between JSP view and Calculator model |
| `src/com/javalab/servlet/ArithmeticServlet.java` | Controller processing arithmetic operations from Experiment 8 |
| `src/com/javalab/calc/CalculatorModel.java` | Pure Java business logic model performing mathematical expression evaluation |

---

## 3. Integration with Other Team Members - **With Member 1 & 2 (Frontend 1 & 2):** Serves dynamic data to `experiments.jsp`, `exp3.jsp`, `arithmetic.jsp`, `theoryList.jsp`, `feedbackList.jsp`, and processes submissions from `addTheory.jsp`, `addExperiment.jsp`, and `feedback.jsp`. - **With Member 5 (Database):** Invokes CRUD methods on `ExperimentDAO`, `TheoryContentDAO`, and `FeedbackDAO`, passing corresponding entity models (`Experiment`, `TheoryContent`, `Feedback`).

---

## 4. Demo / Viva Talking Points
1. *"I developed the backend controllers responsible for academic services: the dynamic experiments engine, theory notes pipeline, feedback management, and MVC computation."*
2. *"For Experiment 3, I implemented a strict Model-View-Controller architecture where `CalculatorModel.java` performs pure business computation completely decoupled from presentation and HTTP protocols."*
3. *"In `ExperimentServlet`, I enabled dynamic extensibility so teachers can introduce new lab experiments stored in the database without recompiling or redeploying code."*


