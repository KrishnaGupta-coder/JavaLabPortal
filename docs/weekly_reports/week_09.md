# Week 9: Mathematical Expression Parser, Calculator Engine & Arithmetic Lab Servlets (August 31 – September 6, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 9 of the Java Lab Portal development was dedicated to **mathematical expression parser, calculator engine & arithmetic lab servlets**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Developed CalculatorModel.java implementing arithmetic expression parsing and operator precedence. Built CalculatorServlet.java for expression evaluation. Developed ArithmeticServlet.java for standard operations with session history logging.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Handling division-by-zero validation and malformed expression inputs.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Implement Experiment, Theory, and Feedback servlet controllers.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 9 Deliverables Validated and Merged.

---

### 📋 Team Members

| Name | Enrollment | Email | Mobile |
| :--- | :--- | :--- | :--- |
| **Krishna Gupta** | 24E1ARADM40P083 | 16krishnagupta06@gmail.com | 8955915536 |
| **Karan Ramlakhani** | 24E1ARADM30P076 | karanramlakhani45@gmail.com | 7878288690 |
| **Kanishq Chasta** | 24E1ARADM40P074 | chastapriyanshu14@gmail.com | 9079005461 |
| **Jayesh Sharma** | 24E1ARADM40P070 | jayeshpandit2505@gmail.com | 7073311093 |
| **Juned Hussain** | 24E1ARADM30P072 | junedhussain294@gmail.com | 9982614701 |

---

## 👥 Member-Wise Breakdown & Tasks

### 1. Krishna Gupta
- **Role / Domain:** Frontend Portal Shell, UI Layout & Experiment Interfaces
- **Module & Branch:** `Frontend Portal Shell & Lab Experiments Hub` (`frontend-portal-shell`)
- **Core Focus:** Implementation of practical experiment views `exp3.jsp`, `exp4.jsp`, `exp6-preview.jsp`, and `exp7-preview.jsp`.
- **Weekly Tasks & Activity Log:**
  - **31/08/2026** (3.0 hrs, *In Progress*): Built exp3.jsp demonstrating OOP principles (Inheritance, Method Overriding, Polymorphism).
  - **01/09/2026** (3.0 hrs, *Completed*): Added interactive class hierarchy diagrams and output simulation panels to exp3.jsp.
  - **02/09/2026** (2.5 hrs, *Completed*): Implemented exp4.jsp demonstrating Java packages, interfaces, and multiple inheritance.
  - **03/09/2026** (2.5 hrs, *Completed*): Built exp6-preview.jsp demonstrating Exception Handling with simulated try-catch blocks.
  - **04/09/2026** (3.0 hrs, *Completed*): Built exp7-preview.jsp demonstrating Multithreading with interactive thread status badges.
  - **05/09/2026** (2.0 hrs, *Completed*): Implemented exp9.jsp demonstrating JDBC database connectivity and SQL statement execution.
  - **06/09/2026** (1.5 hrs, *Completed*): Verified code preview formatting across all experiment views; eliminated horizontal scrollbars.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** `exp3.jsp`, `exp4.jsp`, `exp6-preview.jsp` & `exp7-preview.jsp` Views.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Implementation of `updateStudent.jsp` pre-filled edit form and `manageClasses.jsp` section management UI.
- **Weekly Tasks & Activity Log:**
  - **31/08/2026** (3.0 hrs, *In Progress*): Integrated shared header.jspf and footer.jspf across all management and theory pages.
  - **01/09/2026** (3.0 hrs, *Completed*): Tested student registration flow end-to-end: form submission, DB insert, table refresh.
  - **02/09/2026** (2.5 hrs, *Completed*): Tested student update flow: modal open, field pre-population, update submit, record change.
  - **03/09/2026** (2.5 hrs, *Completed*): Tested student delete flow: confirm dialog prompt, record deletion, list update.
  - **04/09/2026** (3.0 hrs, *Completed*): Tested class section creation and verified enrolled student count reflects correctly.
  - **05/09/2026** (2.0 hrs, *Completed*): Tested feedback submission flow and verified entries appear on teacher review dashboard.
  - **06/09/2026** (1.5 hrs, *Completed*): Fixed form validation styling: red outline on invalid inputs and clear inline error alerts.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** `updateStudent.jsp` & `manageClasses.jsp` Batch Allocation UI.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Role-based authorization checks in servlets, session redirect guards, and flash message alert propagation.
- **Weekly Tasks & Activity Log:**
  - **31/08/2026** (3.0 hrs, *In Progress*): Coordinated with Jayesh to standardize request forwarding conventions across controllers.
  - **01/09/2026** (3.0 hrs, *Completed*): Conducted unit testing of AccessControlFilter under concurrent simulated sessions.
  - **02/09/2026** (2.5 hrs, *Completed*): Verified session isolation: logging in as teacher in one browser does not affect guest view.
  - **03/09/2026** (2.5 hrs, *Completed*): Tested student registration error redirection: duplicate roll numbers flash an error message.
  - **04/09/2026** (3.0 hrs, *Completed*): Verified flash error message rendering in session scope before redirecting back to form.
  - **05/09/2026** (2.0 hrs, *Completed*): Tested class section deletion safety: confirmed enrolled students trigger warning alert.
  - **06/09/2026** (1.5 hrs, *Completed*): Cleaned up unused import statements across all servlet and filter Java files.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Role-Based Routing Guards & Flash Message Session Handlers.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Implementation of `ExperimentServlet.java` and `TheoryServlet.java` academic syllabus controllers.
- **Weekly Tasks & Activity Log:**
  - **31/08/2026** (3.0 hrs, *In Progress*): Coordinated with Krishna to integrate arithmetic.jsp UI with CalculatorServlet backend.
  - **01/09/2026** (3.0 hrs, *Completed*): Verified keypad button submissions on arithmetic.jsp update display expression correctly.
  - **02/09/2026** (2.5 hrs, *Completed*): Verified evaluation result display: expressions evaluate and display result within input field.
  - **03/09/2026** (2.5 hrs, *Completed*): Verified arithmetic history table updates dynamically upon each evaluated expression.
  - **04/09/2026** (3.0 hrs, *Completed*): Tested division by zero error handling: displays clean error alert without crashing server.
  - **05/09/2026** (2.0 hrs, *Completed*): Coordinated with Karan to connect addExperiment.jsp and addTheory.jsp with backend servlets.
  - **06/09/2026** (1.5 hrs, *Completed*): Verified custom experiment creation: new assignment appears on student experiments directory.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** `ExperimentServlet.java` (Syllabus Browser) & `TheoryServlet.java` (Notes Engine).

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Search query optimization, student indexing benchmarks, and DAO exception handling robustness.
- **Weekly Tasks & Activity Log:**
  - **31/08/2026** (3.0 hrs, *In Progress*): Coordinated with Kanishq to test TeacherDAO integration with LoginServlet authentication.
  - **01/09/2026** (3.0 hrs, *Completed*): Verified that teacher login executes within 15 milliseconds against local MySQL database.
  - **02/09/2026** (2.5 hrs, *Completed*): Coordinated with Kanishq to test StudentDAO integration with StudentServlet CRUD operations.
  - **03/09/2026** (2.5 hrs, *Completed*): Tested student insertion with duplicate roll numbers; verified database rejects duplicates gracefully.
  - **04/09/2026** (3.0 hrs, *Completed*): Coordinated with Jayesh to test ExperimentDAO integration with ExperimentServlet.
  - **05/09/2026** (2.0 hrs, *Completed*): Verified that custom teacher-assigned experiments insert and retrieve with correct ordering.
  - **06/09/2026** (1.5 hrs, *Completed*): Coordinated with Jayesh to test FeedbackDAO integration with FeedbackServlet.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Transactional Integrity Audits & Student Search Query Optimizations.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | `exp3.jsp`, `exp4.jsp`, `exp6-preview.jsp` & `exp7-preview.jsp` Views | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | `updateStudent.jsp` & `manageClasses.jsp` Batch Allocation UI | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Role-Based Routing Guards & Flash Message Session Handlers | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | `ExperimentServlet.java` (Syllabus Browser) & `TheoryServlet.java` (Notes Engine) | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Transactional Integrity Audits & Student Search Query Optimizations | ✅ Completed |
