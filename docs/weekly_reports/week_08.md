# Week 8: Student CRUD Dispatcher & Academic Class Management Controllers (August 24 – August 30, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 8 of the Java Lab Portal development was dedicated to **student crud dispatcher & academic class management controllers**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Developed StudentServlet.java handling GET and POST requests for student CRUD. Integrated roll number format validation. Developed ClassServlet.java for section management. Configured servlet mappings in web.xml.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Preserving form validation error messages across servlet redirects.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Build mathematical calculator engine and arithmetic lab servlets.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 8 Deliverables Validated and Merged.

---

### 📋 Team Members

| Name | Enrollment | Email | Mobile |
| :--- | :--- | :--- | :--- |
| **Krishna Gupta** | 24E1ARADM40P083 | 16krishnagupta06@gmail.com | 8955208472 |
| **Karan Ramlakhani** | 24E1ARADM30P076 | karanramlakhani45@gmail.com | 9828551234 |
| **Kanishq Chasta** | 24E1ARADM40P074 | chastapriyanshu14@gmail.com | 9414223456 |
| **Jayesh Sharma** | 24E1ARADM40P070 | jayeshpandit2505@gmail.com | 9610114567 |
| **Juned Hussain** | 24E1ARADM30P072 | junedhussain294@gmail.com | 9785336789 |

---

## 👥 Member-Wise Breakdown & Tasks

### 1. Krishna Gupta
- **Role / Domain:** Frontend Portal Shell, UI Layout & Experiment Interfaces
- **Module & Branch:** `Frontend Portal Shell & Lab Experiments Hub` (`frontend-portal-shell`)
- **Core Focus:** Implementation of `error.jsp`, `experiments.jsp` syllabus directory, and practical views `exp1.jsp` & `exp2.jsp`.
- **Weekly Tasks & Activity Log:**
  - **24/08/2026** (3.0 hrs, *In Progress*): Implemented error.jsp page handling 404 resource not found and session expiration.
  - **25/08/2026** (3.0 hrs, *Completed*): Styled error alerts with clean redirection buttons returning safely to portal home.
  - **26/08/2026** (2.5 hrs, *Completed*): Built experiments.jsp directory displaying complete RTU 5th Sem practical syllabus.
  - **27/08/2026** (2.5 hrs, *Completed*): Implemented dynamic status filter on experiments.jsp allowing category-based browsing.
  - **28/08/2026** (2.0 hrs, *Completed*): Implemented exp1.jsp demonstrating Core Java syntax, data types, and execution console.
  - **29/08/2026** (2.5 hrs, *Completed*): Implemented exp2.jsp demonstrating Control Statements with interactive parameter testing.
  - **30/08/2026** (1.5 hrs, *Completed*): Tested Exp 1 and Exp 2 page rendering on local Tomcat server; fixed syntax display styling.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `error.jsp`, `experiments.jsp`, `exp1.jsp` & `exp2.jsp` Core Views.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Implementation of `addStudent.jsp` enrollment form with real-time regex input validation.
- **Weekly Tasks & Activity Log:**
  - **24/08/2026** (3.0 hrs, *In Progress*): Built addTheory.jsp form for creating structured lecture notes and code examples.
  - **25/08/2026** (3.0 hrs, *Completed*): Added text area formatting helpers for inserting Java code snippets into theory notes.
  - **26/08/2026** (2.5 hrs, *Completed*): Built feedback.jsp form under src/main/webapp for collecting student laboratory reviews.
  - **27/08/2026** (2.5 hrs, *Completed*): Implemented interactive 5-star rating selector component using CSS and JavaScript.
  - **28/08/2026** (2.0 hrs, *Completed*): Added real-time character counter on comments text area in feedback.jsp.
  - **29/08/2026** (2.5 hrs, *Completed*): Built feedbackList.jsp review dashboard for teachers to inspect student ratings and comments.
  - **30/08/2026** (1.5 hrs, *Completed*): Implemented rating badge indicators and date-based sorting in feedbackList.jsp table.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `addStudent.jsp` Form & Validation Script Integrations.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Implementation of `StudentServlet.java` and `ClassServlet.java` dispatchers and `web.xml` deployment descriptor.
- **Weekly Tasks & Activity Log:**
  - **24/08/2026** (3.0 hrs, *In Progress*): Configured custom error page handlers in web.xml for HTTP status codes 404 and 500.
  - **25/08/2026** (3.0 hrs, *Completed*): Mapped error locations to error.jsp; verified exception propagation and user-friendly display.
  - **26/08/2026** (2.5 hrs, *Completed*): Tested SQL injection resistance on login form by submitting single-quote and OR payloads.
  - **27/08/2026** (2.5 hrs, *Completed*): Verified that PreparedStatement binding successfully neutralized all SQL injection payloads.
  - **28/08/2026** (2.0 hrs, *Completed*): Audited servlet exception handling: added try-catch blocks with descriptive error logging.
  - **29/08/2026** (2.5 hrs, *Completed*): Optimized servlet response character encoding to UTF-8 to prevent character corruption.
  - **30/08/2026** (1.5 hrs, *Completed*): Reviewed web.xml deployment descriptor formatting and eliminated duplicate servlet mappings.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `StudentServlet.java`, `ClassServlet.java` & `web.xml` Routing Config.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Implementation of `CalculatorServlet.java` and `ArithmeticServlet.java` web evaluation controllers.
- **Weekly Tasks & Activity Log:**
  - **24/08/2026** (3.0 hrs, *In Progress*): Implemented doGet() in FeedbackServlet to retrieve feedback entries for teacher review dashboard.
  - **25/08/2026** (3.0 hrs, *Completed*): Tested FeedbackServlet: submitted test feedback and verified appearance on feedbackList.jsp.
  - **26/08/2026** (2.5 hrs, *Completed*): Configured servlet mappings for CalculatorServlet, ArithmeticServlet, and ExperimentServlet in web.xml.
  - **27/08/2026** (2.5 hrs, *Completed*): Configured servlet mappings for TheoryServlet and FeedbackServlet in web.xml.
  - **28/08/2026** (2.0 hrs, *Completed*): Tested calculation engine with large numeric values to verify absence of integer overflow.
  - **29/08/2026** (2.5 hrs, *Completed*): Audited servlet database connections; ensured all DAO instances close connections cleanly.
  - **30/08/2026** (1.5 hrs, *Completed*): Verified consistent character encoding (UTF-8) across all servlet response streams.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `CalculatorServlet.java` & `ArithmeticServlet.java` Engine Controllers.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Foreign key cascading integrity audits, student-class join optimizations, and transaction stress tests.
- **Weekly Tasks & Activity Log:**
  - **24/08/2026** (3.0 hrs, *In Progress*): Tested all DAO CRUD queries using JUnit test suite; verified successful persistence.
  - **25/08/2026** (3.0 hrs, *Completed*): Verified PreparedStatement parameter bindings against potential SQL injection attack strings.
  - **26/08/2026** (2.5 hrs, *Completed*): Verified database transaction rollback handling when multiple related queries execute.
  - **27/08/2026** (2.5 hrs, *Completed*): Checked JDBC connection pool cleanup: confirmed zero connection leaks across 100 test queries.
  - **28/08/2026** (2.0 hrs, *Completed*): Added database indexing on foreign key columns (class_id in students table) for fast joins.
  - **29/08/2026** (2.5 hrs, *Completed*): Audited exception handling in all DAO classes: logged SQLExceptions with query context.
  - **30/08/2026** (1.5 hrs, *Completed*): Ensured all DAO methods use PortalHelper.safeClose() inside finally blocks for resource cleanup.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** Database Stress Testing, Foreign Key Cascading & Query Tuning.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | `error.jsp`, `experiments.jsp`, `exp1.jsp` & `exp2.jsp` Core Views | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | `addStudent.jsp` Form & Validation Script Integrations | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | `StudentServlet.java`, `ClassServlet.java` & `web.xml` Routing Config | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | `CalculatorServlet.java` & `ArithmeticServlet.java` Engine Controllers | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Database Stress Testing, Foreign Key Cascading & Query Tuning | ✅ Completed |
