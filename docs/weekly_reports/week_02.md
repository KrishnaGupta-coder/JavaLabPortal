# Week 2: Relational Database ER Modeling, Maven Web Layout & Git Branching (July 13 – July 19, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 2 of the Java Lab Portal development was dedicated to **relational database er modeling, maven web layout & git branching**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Designed ER diagrams covering Teacher, Student, ClassSection, Experiment, TheoryContent, and Feedback entities. Initialized GitHub repository with 5 dedicated feature branches. Created project folder structure following Maven standard web app conventions.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Deciding between integer primary keys versus composite keys for student-class mappings.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Write database DDL scripts and implement database connection pooling.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 2 Deliverables Validated and Merged.

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
- **Core Focus:** Repository initialization, team branching model, standard Maven web directory setup, and layout scaffolding.
- **Weekly Tasks & Activity Log:**
  - **13/07/2026** (2.5 hrs, *In Progress*): Drafted conceptual wireframes for portal landing page and responsive navigation header.
  - **14/07/2026** (2.5 hrs, *Completed*): Reviewed ER diagram with Juned to align frontend display attributes with database fields.
  - **15/07/2026** (2.0 hrs, *Completed*): Initialized GitHub repository JavaLabPortal; configured .gitignore for Eclipse metadata.
  - **16/07/2026** (2.0 hrs, *Completed*): Set up team branching strategy; created frontend-portal-shell branch for portal development.
  - **17/07/2026** (2.5 hrs, *Completed*): Designed standard layout structure separating shared header, footer, and main content regions.
  - **18/07/2026** (2.0 hrs, *Completed*): Configured Maven standard web directory structure under src/main/webapp.
  - **19/07/2026** (1.5 hrs, *Completed*): Reviewed syllabus experiments 1 to 9 with lab faculty to outline interactive web previews.
  - *Total Effort Logged:* **15.0 Engineering Hours**
- **Key Deliverable:** GitHub Repo Setup & Webapp Directory Architecture (`src/main/webapp`).

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Wireframing student enrollment forms, batch allocation interfaces, and modal workflows.
- **Weekly Tasks & Activity Log:**
  - **13/07/2026** (2.5 hrs, *In Progress*): Drafted UI wireframes for student listing table with action columns for edit and delete.
  - **14/07/2026** (2.5 hrs, *Completed*): Designed table pagination and search filter bar layout for quick roll number lookups.
  - **15/07/2026** (2.0 hrs, *Completed*): Drafted form fields for addStudent.jsp: roll number, name, email, and class section dropdown.
  - **16/07/2026** (2.0 hrs, *Completed*): Designed modal dialog wireframe for updating existing student profiles (updateStudent.jsp).
  - **17/07/2026** (2.5 hrs, *Completed*): Coordinated with Juned to verify student entity attributes required in form inputs.
  - **18/07/2026** (2.0 hrs, *Completed*): Created directory structure for forms under src/main/webapp/students and webapp/classes.
  - **19/07/2026** (1.5 hrs, *Completed*): Researched client-side validation rules for RTU student roll number format (e.g., 22EBKCS001).
  - *Total Effort Logged:* **15.0 Engineering Hours**
- **Key Deliverable:** Student Enrollment & Section Allocation Form Mockups.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Role-based access matrix, controller URL naming conventions, and HTTP session security standards.
- **Weekly Tasks & Activity Log:**
  - **13/07/2026** (2.5 hrs, *In Progress*): Drafted filter architecture diagram illustrating request interception and validation flow.
  - **14/07/2026** (2.5 hrs, *Completed*): Designed HTTP session attribute schema: userId, username, fullName, role, and loginTimestamp.
  - **15/07/2026** (2.0 hrs, *Completed*): Outlined list of public URLs vs protected routes requiring teacher authentication.
  - **16/07/2026** (2.0 hrs, *Completed*): Researched session fixation prevention techniques and secure cookie configuration.
  - **17/07/2026** (2.5 hrs, *Completed*): Created package structure: com.javalab.filter and com.javalab.servlet in project src.
  - **18/07/2026** (2.0 hrs, *Completed*): Configured initial web.xml deployment descriptor under src/main/webapp/WEB-INF.
  - **19/07/2026** (1.5 hrs, *Completed*): Coordinated with Juned on TeacherDAO method signatures required for credential checks.
  - *Total Effort Logged:* **15.0 Engineering Hours**
- **Key Deliverable:** Role-Based Access Control Architecture & Controller Specifications.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Expression evaluation algorithms research, operator stack logic, and experiment demonstration specs.
- **Weekly Tasks & Activity Log:**
  - **13/07/2026** (2.5 hrs, *In Progress*): Drafted mathematical expression evaluation model supporting standard arithmetic operations.
  - **14/07/2026** (2.5 hrs, *Completed*): Designed operator precedence rules (order of operations: multiply/divide before add/subtract).
  - **15/07/2026** (2.0 hrs, *Completed*): Outlined boundary conditions: division by zero, invalid characters, negative numbers, decimals.
  - **16/07/2026** (2.0 hrs, *Completed*): Designed session-based operation history schema for tracking recent user calculations.
  - **17/07/2026** (2.5 hrs, *Completed*): Created package structure: com.javalab.calc and servlet classes in project src.
  - **18/07/2026** (2.0 hrs, *Completed*): Coordinated with Juned to review ExperimentDAO and FeedbackDAO method signatures.
  - **19/07/2026** (1.5 hrs, *Completed*): Outlined ExperimentServlet workflow: syllabus listing, detail retrieval, custom submissions.
  - *Total Effort Logged:* **15.0 Engineering Hours**
- **Key Deliverable:** Expression Parsing Engine Specs & Experiment Input-Output Specs.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Entity-Relationship (ER) diagram authoring, primary/foreign key cardinality, and DDL schema planning.
- **Weekly Tasks & Activity Log:**
  - **13/07/2026** (2.5 hrs, *In Progress*): Drafted Entity-Relationship (ER) diagram mapping entities, primary keys, and relationships.
  - **14/07/2026** (2.5 hrs, *Completed*): Defined foreign key constraints linking students to class_sections table with cascade rules.
  - **15/07/2026** (2.0 hrs, *Completed*): Defined data types and column length limits (e.g., VARCHAR(20) for roll numbers, VARCHAR(100) for emails).
  - **16/07/2026** (2.0 hrs, *Completed*): Researched JDBC connection pooling techniques for Apache Tomcat web applications.
  - **17/07/2026** (2.5 hrs, *Completed*): Created package structure: com.javalab.db, com.javalab.model, com.javalab.dao, com.javalab.util.
  - **18/07/2026** (2.0 hrs, *Completed*): Added mysql-connector-j-8.0.33.jar driver to project WEB-INF/lib directory.
  - **19/07/2026** (1.5 hrs, *Completed*): Verified that MySQL JDBC driver registers properly on Apache Tomcat 9 startup.
  - *Total Effort Logged:* **15.0 Engineering Hours**
- **Key Deliverable:** Relational Entity-Relationship (ER) Diagram & Schema Blueprints.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | GitHub Repo Setup & Webapp Directory Architecture (`src/main/webapp`) | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Student Enrollment & Section Allocation Form Mockups | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Role-Based Access Control Architecture & Controller Specifications | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Expression Parsing Engine Specs & Experiment Input-Output Specs | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Relational Entity-Relationship (ER) Diagram & Schema Blueprints | ✅ Completed |
