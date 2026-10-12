# Week 6: Academic DAOs Implementation & RTU Lab Experiment SQL Data Seeding (August 10 – August 16, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 6 of the Java Lab Portal development was dedicated to **academic daos implementation & rtu lab experiment sql data seeding**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Authored ClassSectionDAO.java, ExperimentDAO.java, TheoryContentDAO.java, and FeedbackDAO.java. Populated database.sql with seed data for 10 RTU syllabus experiments, default teacher admin, and test classes.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Managing foreign key constraints when deleting class sections with enrolled students.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Implement security interceptor filter and authentication servlets.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 6 Deliverables Validated and Merged.

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
- **Core Focus:** Experiment 3, 4, 6, and 7 wireframes, syntax highlighting formatting, and responsive terminal previews.
- **Weekly Tasks & Activity Log:**
  - **10/08/2026** (2.5 hrs, *In Progress*): Designed class hierarchy visual cards for demonstrating Java OOP concepts in Exp 3.
  - **11/08/2026** (2.5 hrs, *Completed*): Drafted interactive package import testing layout for Experiment 4 (Packages & Interfaces).
  - **12/08/2026** (3.0 hrs, *Completed*): Designed interactive preview cards for Experiment 6 (Exception Handling) try-catch demo.
  - **13/08/2026** (2.5 hrs, *Completed*): Designed thread lifecycle status badges for Experiment 7 (Multithreading) simulation.
  - **14/08/2026** (2.5 hrs, *Completed*): Designed SQL query execution preview container for Experiment 9 (JDBC Connectivity).
  - **15/08/2026** (2.0 hrs, *Completed*): Outlined interactive calculator UI with responsive numeric keypad and operation buttons.
  - **16/08/2026** (1.5 hrs, *Completed*): Aligned form submission action endpoints with backend controller URLs designed by Kanishq.
  - *Total Effort Logged:* **16.5 Engineering Hours**
- **Key Deliverable:** Experiment 3, 4, 6 & 7 UI Wireframes & Monospace Code Blocks.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Class management modals, dynamic student count indicators, and form field validation scripts.
- **Weekly Tasks & Activity Log:**
  - **10/08/2026** (2.5 hrs, *In Progress*): Built updateStudent.jsp form for editing existing student details.
  - **11/08/2026** (2.5 hrs, *Completed*): Implemented pre-population logic in updateStudent.jsp to load existing record data.
  - **12/08/2026** (3.0 hrs, *Completed*): Added hidden input fields for student ID to preserve record identity upon form update.
  - **13/08/2026** (2.5 hrs, *Completed*): Built manageClasses.jsp class section management dashboard under src/main/webapp/classes.
  - **14/08/2026** (2.5 hrs, *Completed*): Styled class section cards displaying enrolled student count and academic year tags.
  - **15/08/2026** (2.0 hrs, *Completed*): Implemented inline form on manageClasses.jsp for adding new class sections.
  - **16/08/2026** (1.5 hrs, *Completed*): Added delete section confirmation modal to prevent accidental removal of class data.
  - *Total Effort Logged:* **16.5 Engineering Hours**
- **Key Deliverable:** Class Batch Modal Wireframes & Search Component Layouts.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** URL mapping configuration, servlet context parameter management, and access filter interception rules.
- **Weekly Tasks & Activity Log:**
  - **10/08/2026** (2.5 hrs, *In Progress*): Implemented action parameter dispatching inside StudentServlet doPost() method.
  - **11/08/2026** (2.5 hrs, *Completed*): Implemented 'add' action handling: parse form inputs, instantiate Student, call StudentDAO.
  - **12/08/2026** (3.0 hrs, *Completed*): Integrated PortalHelper.isValidRollNumber() format validation before calling DAO insert.
  - **13/08/2026** (2.5 hrs, *Completed*): Implemented 'update' action handling: parse student ID, update fields, call StudentDAO.updateStudent().
  - **14/08/2026** (2.5 hrs, *Completed*): Implemented 'delete' action handling: parse student ID, invoke StudentDAO.deleteStudent().
  - **15/08/2026** (2.0 hrs, *Completed*): Implemented search keyword handling in StudentServlet doGet() using StudentDAO.searchStudents().
  - **16/08/2026** (1.5 hrs, *Completed*): Tested complete StudentServlet CRUD lifecycle using mock requests; verified data persistence.
  - *Total Effort Logged:* **16.5 Engineering Hours**
- **Key Deliverable:** URL Pattern Routing Table & Authentication Filter Interceptors.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Experiment demonstration models, theory content parsing, and dynamic parameter evaluator specifications.
- **Weekly Tasks & Activity Log:**
  - **10/08/2026** (2.5 hrs, *In Progress*): Implemented experiment detail viewing action in ExperimentServlet based on expId query param.
  - **11/08/2026** (2.5 hrs, *Completed*): Implemented doPost() in ExperimentServlet processing teacher submissions for custom experiments.
  - **12/08/2026** (3.0 hrs, *Completed*): Integrated ExperimentDAO.addExperiment() to persist teacher-created custom lab tasks.
  - **13/08/2026** (2.5 hrs, *Completed*): Implemented experiment status toggle handler allowing teachers to activate or close tasks.
  - **14/08/2026** (2.5 hrs, *Completed*): Tested ExperimentServlet CRUD operations against MySQL database; verified record persistence.
  - **15/08/2026** (2.0 hrs, *Completed*): Began implementation of TheoryServlet.java for managing syllabus topics and study notes.
  - **16/08/2026** (1.5 hrs, *Completed*): Implemented doGet() in TheoryServlet loading theory catalog via TheoryContentDAO.
  - *Total Effort Logged:* **16.5 Engineering Hours**
- **Key Deliverable:** Syllabus Experiment Model Specifications & Dynamic Evaluator DTOs.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Academic DAOs implementation (`ClassSectionDAO`, `ExperimentDAO`, `TheoryContentDAO`, `FeedbackDAO`) and SQL seeding.
- **Weekly Tasks & Activity Log:**
  - **10/08/2026** (2.5 hrs, *In Progress*): Created TeacherDAO.java and implemented validateTeacher(username, password) method.
  - **11/08/2026** (2.5 hrs, *Completed*): Used SQL PreparedStatement in TeacherDAO to bind parameters and prevent SQL injection.
  - **12/08/2026** (3.0 hrs, *Completed*): Created StudentDAO.java and implemented addStudent(Student s) method with parameterized insert.
  - **13/08/2026** (2.5 hrs, *Completed*): Implemented getAllStudents() in StudentDAO using SQL inner join fetching student and class info.
  - **14/08/2026** (2.5 hrs, *Completed*): Implemented updateStudent(Student s) and deleteStudent(id) methods inside StudentDAO.
  - **15/08/2026** (2.0 hrs, *Completed*): Implemented searchStudents(keyword) method supporting name and roll number query filtering.
  - **16/08/2026** (1.5 hrs, *Completed*): Created ClassSectionDAO.java with getAllClasses(), addClass(), and deleteClass() methods.
  - *Total Effort Logged:* **16.5 Engineering Hours**
- **Key Deliverable:** `ClassSectionDAO.java`, `ExperimentDAO.java`, `TheoryContentDAO.java`, `FeedbackDAO.java` & Seed Data Scripts.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | Experiment 3, 4, 6 & 7 UI Wireframes & Monospace Code Blocks | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Class Batch Modal Wireframes & Search Component Layouts | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | URL Pattern Routing Table & Authentication Filter Interceptors | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Syllabus Experiment Model Specifications & Dynamic Evaluator DTOs | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | `ClassSectionDAO.java`, `ExperimentDAO.java`, `TheoryContentDAO.java`, `FeedbackDAO.java` & Seed Data Scripts | ✅ Completed |
