# Week 5: Teacher Authentication & Student Management DAO Layer Implementation (August 3 – August 9, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 5 of the Java Lab Portal development was dedicated to **teacher authentication & student management dao layer implementation**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Implemented TeacherDAO.java with credential verification using PreparedStatement. Developed StudentDAO.java with full CRUD: addStudent, getAllStudents, updateStudent, deleteStudent, and searchStudents with SQL joins.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** SQL syntax errors during multi-table joins between students and class sections.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Implement academic DAOs for classes, experiments, theory, and feedback.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 5 Deliverables Validated and Merged.

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
- **Core Focus:** Error view wireframing, friendly 404/500 UI layouts, and experiment syllabus directory prototyping.
- **Weekly Tasks & Activity Log:**
  - **03/08/2026** (2.5 hrs, *In Progress*): Drafted UI specifications for user error handling and session timeout redirection page.
  - **04/08/2026** (3.0 hrs, *Completed*): Designed friendly 404 and 500 error display layout in error.jsp wireframe.
  - **05/08/2026** (2.5 hrs, *Completed*): Structured navigation hierarchy linking home, syllabus, calculator, and login routes.
  - **06/08/2026** (3.0 hrs, *Completed*): Prototyped interactive syllabus status indicators (Core, Advanced, Completed) for experiments.
  - **07/08/2026** (2.5 hrs, *Completed*): Reviewed StudentDAO outputs with Juned to verify expected table columns for views.
  - **08/08/2026** (2.5 hrs, *Completed*): Created wireframe design for Experiment 3 (OOP Inheritance and Polymorphism) visual demo.
  - **09/08/2026** (1.5 hrs, *Completed*): Verified cross-browser rendering of drafted CSS on Chrome, Edge, and Firefox.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Error Page Layout & Interactive Experiment Directory Wireframe.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Theory syllabus list layouts, collapsible units, and student feedback star-rating form design.
- **Weekly Tasks & Activity Log:**
  - **03/08/2026** (2.5 hrs, *In Progress*): Began implementation of studentList.jsp table structure under src/main/webapp/students.
  - **04/08/2026** (3.0 hrs, *Completed*): Implemented responsive HTML table with columns: ID, Roll No, Full Name, Email, Class, Actions.
  - **05/08/2026** (2.5 hrs, *Completed*): Added action buttons (Edit and Delete) with icon styling for each student record.
  - **06/08/2026** (3.0 hrs, *Completed*): Implemented roll number search and section filter bar on studentList.jsp.
  - **07/08/2026** (2.5 hrs, *Completed*): Built addStudent.jsp form with structured card container and input groups.
  - **08/08/2026** (2.5 hrs, *Completed*): Added client-side JavaScript validation checking roll number regex and required fields.
  - **09/08/2026** (1.5 hrs, *Completed*): Tested addStudent.jsp form submission handling with StudentServlet GET and POST endpoints.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Theory Notes Presentation Wireframes & Feedback UI Layouts.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Credential validation logic, SQL injection prevention protocols, and password verification workflows.
- **Weekly Tasks & Activity Log:**
  - **03/08/2026** (2.5 hrs, *In Progress*): Implemented session.invalidate() inside LogoutServlet doGet() and doPost() methods.
  - **04/08/2026** (3.0 hrs, *Completed*): Added HTTP response headers clearing browser cache (Cache-Control: no-cache, no-store).
  - **05/08/2026** (2.5 hrs, *Completed*): Tested logout flow: clicking logout terminates session and prevents browser back- button access.
  - **06/08/2026** (3.0 hrs, *Completed*): Configured session timeout configuration in web.xml (session-timeout set to 30 minutes).
  - **07/08/2026** (2.5 hrs, *Completed*): Began implementation of StudentServlet.java for managing student entity lifecycle.
  - **08/08/2026** (2.5 hrs, *Completed*): Implemented doGet() in StudentServlet to fetch student list via StudentDAO.getAllStudents().
  - **09/08/2026** (1.5 hrs, *Completed*): Forwarded student list collection as request attribute to students/studentList.jsp view.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Credential Validation Algorithm & SQL Injection Defense Protocols.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Stack-based arithmetic evaluation engine implementation, division-by-zero validation, and decimal formatting.
- **Weekly Tasks & Activity Log:**
  - **03/08/2026** (2.5 hrs, *In Progress*): Added advanced mathematical operations in ArithmeticServlet: power (exponentiation) and modulo.
  - **04/08/2026** (3.0 hrs, *Completed*): Implemented session-based operation history log: recording operand1, op, operand2, result.
  - **05/08/2026** (2.5 hrs, *Completed*): Added input validation guarding against non-numeric character submissions in operands.
  - **06/08/2026** (3.0 hrs, *Completed*): Tested ArithmeticServlet operations; verified history log appends entries in session scope.
  - **07/08/2026** (2.5 hrs, *Completed*): Began implementation of ExperimentServlet.java for managing lab practical workflows.
  - **08/08/2026** (2.5 hrs, *Completed*): Implemented doGet() in ExperimentServlet loading syllabus experiments via ExperimentDAO.
  - **09/08/2026** (1.5 hrs, *Completed*): Forwarded experiment list to experiments.jsp directory view via request attribute.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** Postfix Expression Evaluation Logic & Error Handling Rules.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Data Access Object development for `TeacherDAO` (authentication) and `StudentDAO` (multi-table CRUD joins).
- **Weekly Tasks & Activity Log:**
  - **03/08/2026** (2.5 hrs, *In Progress*): Created Student.java entity model encapsulating id, rollNumber, name, email, and classSection.
  - **04/08/2026** (3.0 hrs, *Completed*): Created ClassSection.java entity model encapsulating classId, className, year, and capacity.
  - **05/08/2026** (2.5 hrs, *Completed*): Created Experiment.java entity model encapsulating expId, title, aim, description, and status.
  - **06/08/2026** (3.0 hrs, *Completed*): Created TheoryContent.java model for syllabus notes and Feedback.java for student reviews.
  - **07/08/2026** (2.5 hrs, *Completed*): Implemented parameterized constructors, getters, setters, and toString() across all POJO models.
  - **08/08/2026** (2.5 hrs, *Completed*): Verified entity encapsulation and tested POJO object serialization in standalone test runner.
  - **09/08/2026** (1.5 hrs, *Completed*): Began implementation of DAO persistence layer under com.javalab.dao package.
  - *Total Effort Logged:* **17.5 Engineering Hours**
- **Key Deliverable:** `TeacherDAO.java` (Authentication) & `StudentDAO.java` (CRUD with Relational Joins).

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | Error Page Layout & Interactive Experiment Directory Wireframe | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Theory Notes Presentation Wireframes & Feedback UI Layouts | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Credential Validation Algorithm & SQL Injection Defense Protocols | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Postfix Expression Evaluation Logic & Error Handling Rules | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | `TeacherDAO.java` (Authentication) & `StudentDAO.java` (CRUD with Relational Joins) | ✅ Completed |
