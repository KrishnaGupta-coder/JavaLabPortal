# Week 10: Experiment Syllabus Catalog, Theory Notes & Feedback Controllers (September 7 – September 13, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 10 of the Java Lab Portal development was dedicated to **experiment syllabus catalog, theory notes & feedback controllers**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Developed ExperimentServlet.java for browsing syllabus experiments and custom submissions. Developed TheoryServlet.java for syllabus notes. Developed FeedbackServlet.java with XSS sanitization. Configured custom error pages in web.xml.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Preventing Cross-Site Scripting (XSS) in user feedback comments.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Construct frontend JSP views, navigation shell, and forms.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 10 Deliverables Validated and Merged.

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
- **Core Focus:** Implementation of `arithmetic.jsp` interactive calculator and expression evaluator with keypad UI.
- **Weekly Tasks & Activity Log:**
  - **07/09/2026** (3.0 hrs, *In Progress*): Developed arithmetic.jsp interactive calculator interface with numeric keypad buttons.
  - **08/09/2026** (2.5 hrs, *Completed*): Connected arithmetic.jsp form actions to CalculatorServlet and ArithmeticServlet backends.
  - **09/09/2026** (2.5 hrs, *Completed*): Added calculation history log table on arithmetic.jsp displaying past evaluated operations.
  - **10/09/2026** (3.0 hrs, *Completed*): Verified session-based memory and error alert formatting on arithmetic calculation view.
  - **11/09/2026** (2.5 hrs, *Completed*): Integrated shared header.jspf and footer.jspf across all practical experiment views.
  - **12/09/2026** (2.0 hrs, *Completed*): Conducted UI responsiveness testing across various mobile and laptop viewport widths.
  - **13/09/2026** (1.5 hrs, *Completed*): Audited CSS files; removed unused selectors and standardized color tokens across views.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `arithmetic.jsp` Interactive Live Evaluator & Keypad UI.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Implementation of `theoryList.jsp` syllabus notes view and `feedback.jsp` feedback submission interface.
- **Weekly Tasks & Activity Log:**
  - **07/09/2026** (3.0 hrs, *In Progress*): Refined table styling: subtle alternating row backgrounds and clean hover highlights.
  - **08/09/2026** (2.5 hrs, *Completed*): Polished card container border-radius and shadow tokens to match portal aesthetic.
  - **09/09/2026** (2.5 hrs, *Completed*): Added empty state illustrations for student list and class section views when no data exists.
  - **10/09/2026** (3.0 hrs, *Completed*): Tested form behavior on mobile devices; verified responsive grid collapse.
  - **11/09/2026** (2.5 hrs, *Completed*): Verified XSS safety: ensured form input values are properly escaped when re- rendered.
  - **12/09/2026** (2.0 hrs, *Completed*): Coordinated with Kanishq to verify redirect parameters after form action completion.
  - **13/09/2026** (1.5 hrs, *Completed*): Added success toast notifications appearing after student add, update, and delete actions.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `theoryList.jsp` & `feedback.jsp` Student Feedback Forms.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Implementation of `FeedbackServlet.java` with HTML sanitization against Cross-Site Scripting (XSS).
- **Weekly Tasks & Activity Log:**
  - **07/09/2026** (3.0 hrs, *In Progress*): Performed code review on LoginServlet and LogoutServlet with team members.
  - **08/09/2026** (2.5 hrs, *Completed*): Verified that user session attributes are purged completely upon calling LogoutServlet.
  - **09/09/2026** (2.5 hrs, *Completed*): Refactored StudentServlet helper methods for parsing and validating integer parameters safely.
  - **10/09/2026** (3.0 hrs, *Completed*): Refactored ClassServlet helper methods to ensure consistent redirection URL generation.
  - **11/09/2026** (2.5 hrs, *Completed*): Conducted security audit on all HTTP POST handlers to verify role permission enforcement.
  - **12/09/2026** (2.0 hrs, *Completed*): Verified that guest users attempting POST to /StudentServlet are blocked by AccessControlFilter.
  - **13/09/2026** (1.5 hrs, *Completed*): Optimized filter chain execution order in web.xml to ensure security filter executes first.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `FeedbackServlet.java` & Cross-Site Scripting (XSS) Sanitizers.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Simulation engine for standard Java Swing outputs and execution preview generators.
- **Weekly Tasks & Activity Log:**
  - **07/09/2026** (3.0 hrs, *In Progress*): Verified theory topic creation: teacher-created topic displays on theoryList.jsp card view.
  - **08/09/2026** (2.5 hrs, *Completed*): Verified feedback review dashboard: student ratings display with star rating badges.
  - **09/09/2026** (2.5 hrs, *Completed*): Tested concurrent calculation requests to verify thread safety of CalculatorModel.
  - **10/09/2026** (3.0 hrs, *Completed*): Refactored CalculatorModel methods for enhanced modularity and readability.
  - **11/09/2026** (2.5 hrs, *Completed*): Refactored ExperimentServlet action handling using clean switch-case dispatch logic.
  - **12/09/2026** (2.0 hrs, *Completed*): Refactored TheoryServlet and FeedbackServlet error logging to include exception traces.
  - **13/09/2026** (1.5 hrs, *Completed*): Verified that all servlet request attributes match exact names expected by JSP views.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** Live Swing Execution Simulation Scripts & RTU Output Validators.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Database normalization audit, connection pool timeout configuration, and seed data verification.
- **Weekly Tasks & Activity Log:**
  - **07/09/2026** (3.0 hrs, *In Progress*): Tested feedback insertion with special characters; verified clean SQL storage without escaping bugs.
  - **08/09/2026** (2.5 hrs, *Completed*): Conducted stress test: executed 500 rapid simulated queries to test connection pool stability.
  - **09/09/2026** (2.5 hrs, *Completed*): Verified that connection pool does not exhaust and recycles idle connections cleanly.
  - **10/09/2026** (3.0 hrs, *Completed*): Refactored StudentDAO queries to optimize column projection instead of SELECT * queries.
  - **11/09/2026** (2.5 hrs, *Completed*): Refactored ClassSectionDAO to return clean unmodifiable lists for read-only consumers.
  - **12/09/2026** (2.0 hrs, *Completed*): Verified MySQL character encoding is set to utf8mb4 across all table definitions.
  - **13/09/2026** (1.5 hrs, *Completed*): Generated fresh database.sql backup script containing all tables, constraints, and seed data.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** Index Optimizations, Foreign Key Audits & Production Seed Data Tuning.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | `arithmetic.jsp` Interactive Live Evaluator & Keypad UI | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | `theoryList.jsp` & `feedback.jsp` Student Feedback Forms | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | `FeedbackServlet.java` & Cross-Site Scripting (XSS) Sanitizers | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Live Swing Execution Simulation Scripts & RTU Output Validators | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Index Optimizations, Foreign Key Audits & Production Seed Data Tuning | ✅ Completed |
