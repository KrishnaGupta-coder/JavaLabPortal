# Java Lab Portal — Comprehensive Weekly Progress Reports (Weeks 1 to 12)
### Rajasthan Technical University (RTU) — 5th Semester Practical Laboratory
**Academic Session:** 2026 | **Project:** Java Lab Portal | **Architecture:** 3-Tier MVC (JSP, Servlets, MySQL 8.0)

---

# Week 1: Project Scoping, 3-Tier MVC Architecture & Toolchain Setup (July 6 – July 12, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 1 of the Java Lab Portal development was dedicated to **project scoping, 3-tier mvc architecture & toolchain setup**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Finalized project topic as Java Lab Portal based on RTU 5th Semester syllabus. Formed 5-member team and defined 3-tier MVC architecture. Divided into 5 modules: Frontend Portal Shell, Frontend Forms, Backend Auth, Backend Services, and Database Persistence. Set up Eclipse IDE and Apache Tomcat 9.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Dividing module boundaries to ensure independent development without merge bottlenecks.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Design relational database schema, Entity-Relationship (ER) diagram, and configure Git repository.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 1 Deliverables Validated and Merged.

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
- **Core Focus:** Requirements elicitation, RTU 5th Sem syllabus scoping, Tomcat 9 environment setup, and architecture definition.
- **Weekly Tasks & Activity Log:**
  - **06/07/2026** (2.0 hrs, *Completed*): Met with faculty guide; finalized project topic as Java Lab Portal based on RTU 5th Sem syllabus.
  - **07/07/2026** (2.5 hrs, *Completed*): Analyzed manual lab record system and drafted functional requirements for student and teacher portal.
  - **08/07/2026** (2.0 hrs, *Completed*): Outlined 3-tier MVC architecture and scheduled modular development phases with the team.
  - **09/07/2026** (2.5 hrs, *Completed*): Divided responsibilities across 5 modules and assigned dedicated modules to all team members.
  - **10/07/2026** (3.0 hrs, *Completed*): Configured Eclipse IDE for Enterprise Java and set up Apache Tomcat 9 local runtime server.
  - **11/07/2026** (2.0 hrs, *Completed*): Verified local development environments and JDK 17 / Tomcat 9 integration across the team.
  - **12/07/2026** (1.5 hrs, *Completed*): Finalized Software Requirement Specification (SRS) document and verified tool configurations.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** SRS Document & UI Viewport Scoping Blueprint.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Form layout requirements, student data attribute identification, and manual record analysis.
- **Weekly Tasks & Activity Log:**
  - **06/07/2026** (2.0 hrs, *Completed*): Attended project kickoff meeting; reviewed RTU Java Lab curriculum requirements with team.
  - **07/07/2026** (2.5 hrs, *Completed*): Analyzed teacher administrative workflows for managing student lab records and batches.
  - **08/07/2026** (2.0 hrs, *Completed*): Outlined requirements for student list table, student registration, and class section forms.
  - **09/07/2026** (2.5 hrs, *Completed*): Assigned Module 2: Frontend Management Forms, Class Sections, Theory, and Feedback UI.
  - **10/07/2026** (3.0 hrs, *Completed*): Set up Eclipse IDE for Enterprise Java and configured local Apache Tomcat 9 server.
  - **11/07/2026** (2.0 hrs, *Completed*): Verified local development environment and cloned Git repository onto local machine.
  - **12/07/2026** (1.5 hrs, *Completed*): Created frontend-management-forms branch for isolated development of management forms.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Form Requirements & Student Data Entry Specification.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Security model design, role definitions (Teacher vs Student), and servlet controller routing planning.
- **Weekly Tasks & Activity Log:**
  - **06/07/2026** (2.0 hrs, *Completed*): Participated in team planning meeting; analyzed project authentication and security needs.
  - **07/07/2026** (2.5 hrs, *Completed*): Researched Java Servlet 4.0 specifications and filter architecture for access control.
  - **08/07/2026** (2.0 hrs, *Completed*): Outlined security requirements: session tracking, role checking, and URL whitelisting.
  - **09/07/2026** (2.5 hrs, *Completed*): Assigned Module 3: Security Filter, Authentication Servlets, Student & Class Controllers.
  - **10/07/2026** (3.0 hrs, *Completed*): Configured Eclipse IDE with Tomcat 9 runtime and set up local development repository.
  - **11/07/2026** (2.0 hrs, *Completed*): Tested basic Java servlet deployment on Tomcat 9 to verify web descriptor routing.
  - **12/07/2026** (1.5 hrs, *Completed*): Created backend-auth-core branch for isolated development of security and controller components.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Authentication Security Protocol & Controller Mapping Specification.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** RTU syllabus experiment analysis, calculator math engine scoping, and Swing GUI conversion planning.
- **Weekly Tasks & Activity Log:**
  - **06/07/2026** (2.0 hrs, *Completed*): Attended project kickoff meeting; reviewed RTU practical syllabus requirements with team.
  - **07/07/2026** (2.5 hrs, *Completed*): Analyzed business logic requirements for laboratory calculations and experiment execution.
  - **08/07/2026** (2.0 hrs, *Completed*): Outlined calculation engine architecture separating math modeling from servlet controllers.
  - **09/07/2026** (2.5 hrs, *Completed*): Assigned Module 4: Calculator Logic, Arithmetic Services, Experiment, Theory & Feedback Servlets.
  - **10/07/2026** (3.0 hrs, *Completed*): Configured Eclipse IDE and Apache Tomcat 9 local runtime server on developer machine.
  - **11/07/2026** (2.0 hrs, *Completed*): Tested mathematical evaluation algorithms in standalone Java test project.
  - **12/07/2026** (1.5 hrs, *Completed*): Created backend-experiments-services branch for isolated development of lab services.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** RTU 5th Sem Lab Experiment Scoping & Calculator Requirements.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Relational data requirements analysis, 3NF normalization planning, and database tooling setup.
- **Weekly Tasks & Activity Log:**
  - **06/07/2026** (2.0 hrs, *Completed*): Attended project kickoff meeting; reviewed database storage requirements with team.
  - **07/07/2026** (2.5 hrs, *Completed*): Analyzed relational data modeling needs for teachers, students, class sections, and lab data.
  - **08/07/2026** (2.0 hrs, *Completed*): Outlined database normalization strategy: achieving 3NF across all relational tables.
  - **09/07/2026** (2.5 hrs, *Completed*): Assigned Module 5: Database Schema (database.sql), DB Connection Pool, POJOs, and DAO Layer.
  - **10/07/2026** (3.0 hrs, *Completed*): Installed MySQL 8.0 Community Server and configured database user credentials.
  - **11/07/2026** (2.0 hrs, *Completed*): Created java_lab_portal database schema and verified user access permissions.
  - **12/07/2026** (1.5 hrs, *Completed*): Created database-persistence branch for isolated development of persistence components.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Initial Entity Identification & Database Normalization Plan.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | SRS Document & UI Viewport Scoping Blueprint | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Form Requirements & Student Data Entry Specification | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Authentication Security Protocol & Controller Mapping Specification | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | RTU 5th Sem Lab Experiment Scoping & Calculator Requirements | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Initial Entity Identification & Database Normalization Plan | ✅ Completed |

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

# Week 3: Database DDL Schema, Singleton Connection Pooling & Security Helpers (July 20 – July 26, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 3 of the Java Lab Portal development was dedicated to **database ddl schema, singleton connection pooling & security helpers**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Authored database.sql with normalized MySQL tables, foreign keys, and unique indexes. Developed DBConnection.java singleton connection pool with MySQL Connector/J. Developed PortalHelper.java for input sanitization and safe JDBC resource closing.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Preventing connection pool exhaustion during concurrent database calls.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Develop domain entity POJO models.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 3 Deliverables Validated and Merged.

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
- **Core Focus:** Design system tokens, system font typography, responsive grid rules, and glassmorphic aesthetic guidelines.
- **Weekly Tasks & Activity Log:**
  - **20/07/2026** (2.5 hrs, *In Progress*): Designed visual color palette and typography tokens using native system fonts (Segoe UI).
  - **21/07/2026** (2.5 hrs, *Completed*): Created reusable CSS utility classes for buttons, cards, badges, and responsive grid layouts.
  - **22/07/2026** (2.5 hrs, *Completed*): Outlined layout requirements for role-based navigation toggle between teacher and student.
  - **23/07/2026** (2.0 hrs, *Completed*): Drafted UI wireframes for login modal card with glassmorphism visual styling.
  - **24/07/2026** (3.0 hrs, *Completed*): Tested initial JSP layout rendering on local Apache Tomcat 9 web server.
  - **25/07/2026** (2.0 hrs, *Completed*): Created mockup wireframes for the main lab experiment directory dashboard.
  - **26/07/2026** (1.5 hrs, *Completed*): Reviewed weekly frontend progress and aligned component structure with Karan.
  - *Total Effort Logged:* **16.0 Engineering Hours**
- **Key Deliverable:** Portal Visual Tokens, Shared Typography & CSS Grid Standards.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** CSS component styling for form elements, buttons, badges, tables, and modal dialogues.
- **Weekly Tasks & Activity Log:**
  - **20/07/2026** (2.5 hrs, *In Progress*): Designed class section management dashboard layout with class card containers.
  - **21/07/2026** (2.5 hrs, *Completed*): Drafted inline form for adding new class sections with section name and academic year.
  - **22/07/2026** (2.5 hrs, *Completed*): Designed student count badge indicators for each class section card on manageClasses.jsp.
  - **23/07/2026** (2.0 hrs, *Completed*): Drafted modal confirmation alert layout before deleting a class section.
  - **24/07/2026** (3.0 hrs, *Completed*): Tested initial JSP layout rendering for student tables on local Tomcat server.
  - **25/07/2026** (2.0 hrs, *Completed*): Designed wireframe for custom experiment assignment form (addExperiment.jsp).
  - **26/07/2026** (1.5 hrs, *Completed*): Reviewed form layouts with Krishna to ensure consistent styling with portal shell.
  - *Total Effort Logged:* **16.0 Engineering Hours**
- **Key Deliverable:** Input Form UI Controls & Table Layout Specifications.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Servlet filter lifecycle planning, authentication handshake architecture, and logout session clearing rules.
- **Weekly Tasks & Activity Log:**
  - **20/07/2026** (2.5 hrs, *In Progress*): Began implementation of AccessControlFilter.java implementing javax.servlet.Filter.
  - **21/07/2026** (2.5 hrs, *Completed*): Implemented doFilter() method extracting HttpServletRequest and HttpSession objects.
  - **22/07/2026** (2.5 hrs, *Completed*): Configured public whitelist matching login.jsp, LoginServlet, CSS, JS, and image assets.
  - **23/07/2026** (2.0 hrs, *Completed*): Implemented unauthorized redirect logic sending unauthenticated users back to login portal.
  - **24/07/2026** (3.0 hrs, *Completed*): Tested AccessControlFilter by entering direct administrative URLs; confirmed blocking.
  - **25/07/2026** (2.0 hrs, *Completed*): Resolved infinite redirection loop for public CSS stylesheets and background graphics.
  - **26/07/2026** (1.5 hrs, *Completed*): Added role-specific authorization check: restricting /students and /classes to teacher role.
  - *Total Effort Logged:* **16.0 Engineering Hours**
- **Key Deliverable:** Security Filter Specifications & Session Lifecycle Architecture.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Shunting-yard infix-to-postfix algorithm design, operator precedence mapping, and arithmetic edge case handling.
- **Weekly Tasks & Activity Log:**
  - **20/07/2026** (2.5 hrs, *In Progress*): Began implementation of CalculatorModel.java in com.javalab.calc package.
  - **21/07/2026** (2.5 hrs, *Completed*): Implemented expression tokenizer splitting string input into numbers and math operators.
  - **22/07/2026** (2.5 hrs, *Completed*): Implemented mathematical evaluator applying operator precedence and associativity rules.
  - **23/07/2026** (2.0 hrs, *Completed*): Added division-by-zero check throwing ArithmeticException with user-friendly message.
  - **24/07/2026** (3.0 hrs, *Completed*): Implemented support for floating-point decimal numbers and negative value parsing.
  - **25/07/2026** (2.0 hrs, *Completed*): Added memory store and clear functions within CalculatorModel state container.
  - **26/07/2026** (1.5 hrs, *Completed*): Conducted unit testing on CalculatorModel using JUnit test cases; verified expression logic.
  - *Total Effort Logged:* **16.0 Engineering Hours**
- **Key Deliverable:** Operator Precedence Algorithms & Arithmetic Evaluator Math Model.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** DDL schema script creation (`database.sql`), singleton connection pool (`DBConnection.java`), and `PortalHelper.java`.
- **Weekly Tasks & Activity Log:**
  - **20/07/2026** (3.0 hrs, *In Progress*): Began writing database.sql script with DDL creation statements.
  - **21/07/2026** (2.5 hrs, *Completed*): Authored CREATE TABLE teachers and CREATE TABLE class_sections statements.
  - **22/07/2026** (2.5 hrs, *Completed*): Authored CREATE TABLE students with foreign key referencing class_sections(class_id).
  - **23/07/2026** (2.0 hrs, *Completed*): Authored CREATE TABLE experiments, theory_content, and feedback tables.
  - **24/07/2026** (3.0 hrs, *Completed*): Added unique indexes on roll_number and username columns to enforce business uniqueness.
  - **25/07/2026** (2.5 hrs, *Completed*): Began implementation of DBConnection.java implementing singleton connection management.
  - **26/07/2026** (1.5 hrs, *Completed*): Implemented getConnection() method with thread-safe double-checked locking singleton.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `database.sql` DDL Script, `DBConnection.java` & `PortalHelper.java`.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | Portal Visual Tokens, Shared Typography & CSS Grid Standards | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Input Form UI Controls & Table Layout Specifications | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Security Filter Specifications & Session Lifecycle Architecture | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Operator Precedence Algorithms & Arithmetic Evaluator Math Model | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | `database.sql` DDL Script, `DBConnection.java` & `PortalHelper.java` | ✅ Completed |

<div style="page-break-after: always;"></div>

# Week 4: Domain Entity POJOs Modeling & Encapsulation Architecture (July 27 – August 2, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 4 of the Java Lab Portal development was dedicated to **domain entity pojos modeling & encapsulation architecture**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Developed Java Bean entity classes: Teacher.java, Student.java, ClassSection.java, Experiment.java, TheoryContent.java, and Feedback.java with strict encapsulation, constructors, getters, setters, and toString() overrides.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Handling null values in foreign key relations when initializing student entity models.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Build Teacher and Student Data Access Objects (DAOs).

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 4 Deliverables Validated and Merged.

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
- **Core Focus:** Hero banner design, quick action navigation cards, and Experiment 1 & 2 layout wireframing.
- **Weekly Tasks & Activity Log:**
  - **27/07/2026** (2.5 hrs, *In Progress*): Designed hero banner layout and quick navigation action cards for index.jsp.
  - **28/07/2026** (2.5 hrs, *Completed*): Created wireframe layouts for Experiment 1 (Core Java Basics) demonstration page.
  - **29/07/2026** (2.0 hrs, *Completed*): Created wireframe layouts for Experiment 2 (Control Statements) output terminal preview.
  - **30/07/2026** (2.0 hrs, *Completed*): Planned code snippet container styling with clean monospaced font formatting.
  - **31/07/2026** (2.5 hrs, *Completed*): Reviewed domain entity models with Juned to prepare data binding for frontend cards.
  - **01/08/2026** (2.5 hrs, *Completed*): Standardized responsive breakpoints across mobile, tablet, and desktop views.
  - **02/08/2026** (1.5 hrs, *Completed*): Verified HTML5 semantic structure across drafted portal templates.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Portal Dashboard Hero Wireframes & Experiment Index Layouts.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Student list data table wireframing, search filters, and batch allocation view design.
- **Weekly Tasks & Activity Log:**
  - **27/07/2026** (2.5 hrs, *In Progress*): Designed theory syllabus card view layout for browsing lecture topics (theoryList.jsp).
  - **28/07/2026** (2.5 hrs, *Completed*): Drafted rich text topic submission form layout for teachers (addTheory.jsp).
  - **29/07/2026** (2.0 hrs, *Completed*): Designed syllabus unit categorization tags (Unit 1 to Unit 5) for theory topics.
  - **30/07/2026** (2.0 hrs, *Completed*): Designed student feedback submission form layout with interactive star rating (feedback.jsp).
  - **31/07/2026** (2.5 hrs, *Completed*): Designed teacher feedback review dashboard table layout (feedbackList.jsp).
  - **01/08/2026** (2.5 hrs, *Completed*): Standardized form container styles, input field focus states, and button hover animations.
  - **02/08/2026** (1.5 hrs, *Completed*): Verified responsive table behavior: horizontal scrolling on mobile viewports.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Student Profile Cards & Class Allocation Table Wireframes.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** HTTP request dispatching sequence diagrams, parameter parsing rules, and session state architecture.
- **Weekly Tasks & Activity Log:**
  - **27/07/2026** (2.5 hrs, *In Progress*): Began implementation of LoginServlet.java handling HTTP POST authentication requests.
  - **28/07/2026** (2.5 hrs, *Completed*): Implemented credential extraction and input sanitization inside LoginServlet doPost().
  - **29/07/2026** (2.0 hrs, *Completed*): Integrated TeacherDAO.validateTeacher() method to verify database password matches.
  - **30/07/2026** (2.0 hrs, *Completed*): Implemented session establishment logic: setAttribute("user") and setAttribute("role").
  - **31/07/2026** (2.5 hrs, *Completed*): Added error message forwarding back to login.jsp when credentials do not match.
  - **01/08/2026** (2.5 hrs, *Completed*): Tested teacher authentication flow with database test accounts seeded by Juned.
  - **02/08/2026** (1.5 hrs, *Completed*): Began implementation of LogoutServlet.java for clean session termination.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Request Dispatcher Sequence Diagrams & Session Tracking Schema.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Mathematical expression tokenization, multi-operand evaluation logic, and calculation history modeling.
- **Weekly Tasks & Activity Log:**
  - **27/07/2026** (2.5 hrs, *In Progress*): Began implementation of CalculatorServlet.java handling calculation HTTP POST requests.
  - **28/07/2026** (2.5 hrs, *Completed*): Implemented request parameter parsing: extract expression string from form submission.
  - **29/07/2026** (2.0 hrs, *Completed*): Integrated CalculatorModel evaluation and caught NumberFormatException for invalid inputs.
  - **30/07/2026** (2.0 hrs, *Completed*): Forwarded calculation result and expression back to arithmetic.jsp view via request attributes.
  - **31/07/2026** (2.5 hrs, *Completed*): Tested CalculatorServlet end-to-end with sample arithmetic expressions on Tomcat 9.
  - **01/08/2026** (2.5 hrs, *Completed*): Began implementation of ArithmeticServlet.java for individual binary mathematical operations.
  - **02/08/2026** (1.5 hrs, *Completed*): Implemented arithmetic operations: addition, subtraction, multiplication, and division.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Expression Tokenization Logic & Swing Preview Specifications.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Domain JavaBeans POJO construction (`Teacher`, `Student`, `ClassSection`, `Experiment`, `TheoryContent`, `Feedback`).
- **Weekly Tasks & Activity Log:**
  - **27/07/2026** (2.5 hrs, *In Progress*): Implemented PortalHelper.java utility class under com.javalab.util package.
  - **28/07/2026** (2.5 hrs, *Completed*): Added safeClose() method handling safe cleanup of ResultSet, Statement, and Connection.
  - **29/07/2026** (2.0 hrs, *Completed*): Added cleanInput() method stripping dangerous HTML tags to protect against XSS attacks.
  - **30/07/2026** (2.0 hrs, *Completed*): Added isValidRollNumber() regex validator checking RTU student roll number format.
  - **31/07/2026** (2.5 hrs, *Completed*): Executed database.sql on MySQL database instance; verified all 6 tables created without errors.
  - **01/08/2026** (2.5 hrs, *Completed*): Began implementation of POJO domain entity classes under com.javalab.model package.
  - **02/08/2026** (1.5 hrs, *Completed*): Created Teacher.java entity model with private fields: id, username, password, fullName, email.
  - *Total Effort Logged:* **15.5 Engineering Hours**
- **Key Deliverable:** Domain JavaBeans: `Teacher.java`, `Student.java`, `ClassSection.java`, `Experiment.java`, `TheoryContent.java`, `Feedback.java`.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | Portal Dashboard Hero Wireframes & Experiment Index Layouts | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Student Profile Cards & Class Allocation Table Wireframes | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Request Dispatcher Sequence Diagrams & Session Tracking Schema | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Expression Tokenization Logic & Swing Preview Specifications | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Domain JavaBeans: `Teacher.java`, `Student.java`, `ClassSection.java`, `Experiment.java`, `TheoryContent.java`, `Feedback.java` | ✅ Completed |

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

# Week 7: HTTP Security Filter, Role-Based Access Control & Auth Servlets (August 17 – August 23, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 7 of the Java Lab Portal development was dedicated to **http security filter, role-based access control & auth servlets**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Developed AccessControlFilter.java to intercept HTTP requests and verify session authorization with URL whitelisting. Developed LoginServlet.java for role validation and session tracking. Developed LogoutServlet.java with cache-control clearing headers.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Infinite redirection loops between the filter and login page for static assets.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Implement Student and Class Section servlet controllers.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 7 Deliverables Validated and Merged.

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
- **Core Focus:** Implementation of shared layout shell (`header.jspf`, `footer.jspf`), home dashboard (`index.jsp`), and `login.jsp`.
- **Weekly Tasks & Activity Log:**
  - **17/08/2026** (3.0 hrs, *In Progress*): Began implementation of shared navigation header component in header.jspf.
  - **18/08/2026** (2.5 hrs, *Completed*): Implemented responsive navbar toggle with active link highlight logic in header.jspf.
  - **19/08/2026** (2.5 hrs, *Completed*): Developed shared footer component in footer.jspf with academic credentials and RTU details.
  - **20/08/2026** (3.0 hrs, *Completed*): Built index.jsp portal home dashboard with lab overview banner and dynamic action cards.
  - **21/08/2026** (2.5 hrs, *Completed*): Implemented login.jsp portal view featuring glassmorphic login card and role selector.
  - **22/08/2026** (2.0 hrs, *Completed*): Added client-side form validation scripts in login.jsp checking username and password fields.
  - **23/08/2026** (1.5 hrs, *Completed*): Tested login form submission with LoginServlet and verified session redirect flow.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `header.jspf`, `footer.jspf`, `index.jsp` & `login.jsp` Core Views.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Implementation of `studentList.jsp` view with responsive tables, search bars, and action modals.
- **Weekly Tasks & Activity Log:**
  - **17/08/2026** (3.0 hrs, *In Progress*): Built addExperiment.jsp form under src/main/webapp/experiments for assigning lab tasks.
  - **18/08/2026** (2.5 hrs, *Completed*): Added input fields for experiment number, title, aim description, and syllabus unit dropdown.
  - **19/08/2026** (2.5 hrs, *Completed*): Styled experiment creation modal container matching portal visual theme.
  - **20/08/2026** (3.0 hrs, *Completed*): Tested addExperiment.jsp submission flow with ExperimentServlet backend.
  - **21/08/2026** (2.5 hrs, *Completed*): Built theoryList.jsp syllabus card view under src/main/webapp/theory.
  - **22/08/2026** (2.0 hrs, *Completed*): Implemented keyword search bar and unit filter tabs on theoryList.jsp.
  - **23/08/2026** (1.5 hrs, *Completed*): Added delete topic button with teacher role permission check on theory cards.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `studentList.jsp` Layout & Search Component View Templates.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** `AccessControlFilter.java` security interceptor, `LoginServlet.java`, and `LogoutServlet.java` implementation.
- **Weekly Tasks & Activity Log:**
  - **17/08/2026** (3.0 hrs, *In Progress*): Began implementation of ClassServlet.java for managing class section entities.
  - **18/08/2026** (2.5 hrs, *Completed*): Implemented doGet() in ClassServlet to load class sections via ClassSectionDAO.getAllClasses().
  - **19/08/2026** (2.5 hrs, *Completed*): Implemented doPost() for adding new class sections with section name and academic year.
  - **20/08/2026** (3.0 hrs, *Completed*): Implemented class section deletion handler in ClassServlet with safety validation.
  - **21/08/2026** (2.5 hrs, *Completed*): Added check preventing class deletion if active students are currently assigned to that section.
  - **22/08/2026** (2.0 hrs, *Completed*): Registered servlet URL mappings for ClassServlet and StudentServlet in web.xml.
  - **23/08/2026** (1.5 hrs, *Completed*): Configured welcome-file-list in web.xml mapping default root requests to index.jsp.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `AccessControlFilter.java`, `LoginServlet.java` & `LogoutServlet.java`.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** `CalculatorModel.java` arithmetic evaluation core engine with stack-based operator evaluation.
- **Weekly Tasks & Activity Log:**
  - **17/08/2026** (3.0 hrs, *In Progress*): Implemented doPost() in TheoryServlet for teacher creation of new theory syllabus topics.
  - **18/08/2026** (2.5 hrs, *Completed*): Implemented topic deletion action in TheoryServlet with teacher role permission check.
  - **19/08/2026** (2.5 hrs, *Completed*): Tested TheoryServlet topic listing and creation flows; verified data forwards to theoryList.jsp.
  - **20/08/2026** (3.0 hrs, *Completed*): Began implementation of FeedbackServlet.java handling student laboratory feedback reviews.
  - **21/08/2026** (2.5 hrs, *Completed*): Implemented doPost() in FeedbackServlet parsing studentName, rating score, and comments.
  - **22/08/2026** (2.0 hrs, *Completed*): Integrated XSS sanitization on feedback comments using PortalHelper.cleanInput() utility.
  - **23/08/2026** (1.5 hrs, *Completed*): Integrated FeedbackDAO.addFeedback() to record submitted student review into database.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** `CalculatorModel.java` Mathematical Evaluation Engine.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Database connection pooling unit testing, PreparedStatement performance tuning, and DAO verification.
- **Weekly Tasks & Activity Log:**
  - **17/08/2026** (3.0 hrs, *In Progress*): Added foreign key safety check in ClassSectionDAO before deleting active class sections.
  - **18/08/2026** (2.5 hrs, *Completed*): Created ExperimentDAO.java with queries fetching experiments ordered by order_no column.
  - **19/08/2026** (2.5 hrs, *Completed*): Implemented addExperiment() in ExperimentDAO for teacher-created custom lab assignments.
  - **20/08/2026** (3.0 hrs, *Completed*): Created TheoryContentDAO.java with getAllTheory(), addTheory(), and deleteTheory() methods.
  - **21/08/2026** (2.5 hrs, *Completed*): Created FeedbackDAO.java with addFeedback() and getAllFeedback() methods for reviews.
  - **22/08/2026** (2.0 hrs, *Completed*): Added database seed statements in database.sql populating all 10 RTU Java lab experiments.
  - **23/08/2026** (1.5 hrs, *Completed*): Seeded default teacher admin account (admin / admin123) and sample student records.
  - *Total Effort Logged:* **17.0 Engineering Hours**
- **Key Deliverable:** DAO Integration Verification & Prepared Statement Connection Pool Tests.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | `header.jspf`, `footer.jspf`, `index.jsp` & `login.jsp` Core Views | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | `studentList.jsp` Layout & Search Component View Templates | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | `AccessControlFilter.java`, `LoginServlet.java` & `LogoutServlet.java` | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | `CalculatorModel.java` Mathematical Evaluation Engine | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | DAO Integration Verification & Prepared Statement Connection Pool Tests | ✅ Completed |

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

# Week 11: Frontend JSP Views, Layout Shell, Interactive Experiments & Form Interfaces (September 14 – September 20, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 11 of the Java Lab Portal development was dedicated to **frontend jsp views, layout shell, interactive experiments & form interfaces**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Built layout shell header.jspf, footer.jspf, index.jsp, and login.jsp. Developed student management views (studentList.jsp, addStudent.jsp, updateStudent.jsp), class views (manageClasses.jsp), theory views (theoryList.jsp), and feedback views. Implemented practical experiment pages (exp1.jsp to exp9.jsp, arithmetic.jsp).

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Inconsistent styling across subdirectories; resolved by standardizing shared CSS and native system fonts.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Complete system integration testing, bug fixes, and documentation.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 11 Deliverables Validated and Merged.

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
- **Core Focus:** Visual polish, responsive navigation navbar toggles, typography hierarchy, and cross-browser styling.
- **Weekly Tasks & Activity Log:**
  - **14/09/2026** (3.0 hrs, *In Progress*): Conducted end-to-end testing of portal navigation shell with all backend servlet routes.
  - **15/09/2026** (3.0 hrs, *Completed*): Verified role-based menu display: teacher admin links display only for authenticated teachers.
  - **16/09/2026** (3.5 hrs, *Completed*): Assisted Karan in integrating shared header and footer with student management forms.
  - **17/09/2026** (3.0 hrs, *Completed*): Conducted cross-browser styling verification on Chrome, Firefox, and Microsoft Edge.
  - **18/09/2026** (3.0 hrs, *Completed*): Verified clean font rendering using system fonts ('Segoe UI', Tahoma, Verdana).
  - **19/09/2026** (3.5 hrs, *Completed*): Tested exception redirection: entering invalid URLs correctly displays error.jsp.
  - **20/09/2026** (2.5 hrs, *Completed*): Verified all navigation links, experiment shortcuts, and logout redirection flows.
  - *Total Effort Logged:* **21.5 Engineering Hours**
- **Key Deliverable:** Frontend View Uniformity, Visual Polish & Cross-Browser Styling.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Client-side JavaScript form validation scripts, table overflow wrappers, and success/error alert banners.
- **Weekly Tasks & Activity Log:**
  - **14/09/2026** (3.0 hrs, *In Progress*): Conducted joint integration testing of Module 2 views with backend controllers.
  - **15/09/2026** (3.0 hrs, *Completed*): Verified that unauthenticated users cannot access management forms directly via URL.
  - **16/09/2026** (3.5 hrs, *Completed*): Resolved form action URL pathing issues when deploying under dynamic context root.
  - **17/09/2026** (3.0 hrs, *Completed*): Verified cross-browser form element consistency (date pickers, select dropdowns).
  - **18/09/2026** (3.0 hrs, *Completed*): Cleaned up inline CSS styling; migrated custom styles to main stylesheet.
  - **19/09/2026** (3.5 hrs, *Completed*): Replaced all non-system fonts with clean native system typography ('Segoe UI', Tahoma).
  - **20/09/2026** (2.5 hrs, *Completed*): Verified that all action links preserve current session authentication tokens.
  - *Total Effort Logged:* **21.5 Engineering Hours**
- **Key Deliverable:** Form Client Validation, Responsive Table Overflow & Toast Alerts.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Session expiration handling, back-button cache prevention (`Cache-Control: no-cache`), and CSRF defenses.
- **Weekly Tasks & Activity Log:**
  - **14/09/2026** (3.0 hrs, *In Progress*): Conducted joint integration testing of Module 3 controllers with Karan's frontend views.
  - **15/09/2026** (3.0 hrs, *Completed*): Fixed redirect pathing issues when deploying project under dynamic servlet context paths.
  - **16/09/2026** (3.5 hrs, *Completed*): Verified that student search query results populate correctly on studentList.jsp view.
  - **17/09/2026** (3.0 hrs, *Completed*): Verified student update operation updates database records and refreshes table seamlessly.
  - **18/09/2026** (3.0 hrs, *Completed*): Tested server reboot recovery: verified server restarts handle existing sessions cleanly.
  - **19/09/2026** (3.5 hrs, *Completed*): Standardized academic header comment crediting all 5 team members across Java source files.
  - **20/09/2026** (2.5 hrs, *Completed*): Removed all inline AI-generated comments across filter and servlet controller classes.
  - *Total Effort Logged:* **21.5 Engineering Hours**
- **Key Deliverable:** Session Expiry Interception, CSRF Defenses & Error Redirection Rules.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Calculation edge cases, invalid expression syntax handlers, and experiment code accuracy reviews.
- **Weekly Tasks & Activity Log:**
  - **14/09/2026** (3.0 hrs, *In Progress*): Participated in joint module integration testing on Apache Tomcat 9 web server.
  - **15/09/2026** (3.0 hrs, *Completed*): Tested full student experiment execution flow: select experiment, view code, execute demo.
  - **16/09/2026** (3.5 hrs, *Completed*): Fixed minor parameter parsing bug when submitting decimal values with trailing zeros.
  - **17/09/2026** (3.0 hrs, *Completed*): Verified that teacher-only experiment assignment actions are guarded against unauthorized access.
  - **18/09/2026** (3.0 hrs, *Completed*): Conducted performance profiling of calculation requests; verified sub-millisecond response time.
  - **19/09/2026** (3.5 hrs, *Completed*): Standardized academic header comment crediting all 5 team members across Java source files.
  - **20/09/2026** (2.5 hrs, *Completed*): Removed all inline AI-generated comments across calculator model and servlet classes.
  - *Total Effort Logged:* **21.5 Engineering Hours**
- **Key Deliverable:** Boundary Condition Handlers (Division-by-Zero) & Expression Validations.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Connection leak profiling, resource closing audits via `PortalHelper.closeResources()`, and schema cleanup.
- **Weekly Tasks & Activity Log:**
  - **14/09/2026** (3.0 hrs, *In Progress*): Participated in joint module integration testing on Apache Tomcat 9 web server.
  - **15/09/2026** (3.0 hrs, *Completed*): Verified that database operations execute without throwing stale connection exceptions.
  - **16/09/2026** (3.5 hrs, *Completed*): Verified database rollback behavior when invalid class section assignments are submitted.
  - **17/09/2026** (3.0 hrs, *Completed*): Audited database table constraints: verified ON DELETE RESTRICT on class section foreign keys.
  - **18/09/2026** (3.0 hrs, *Completed*): Verified that student search queries utilize database indexes for fast query response.
  - **19/09/2026** (3.5 hrs, *Completed*): Standardized academic header comment crediting all 5 team members across Java source files.
  - **20/09/2026** (2.5 hrs, *Completed*): Removed all inline AI-generated comments across DBConnection, PortalHelper, POJOs, and DAOs.
  - *Total Effort Logged:* **21.5 Engineering Hours**
- **Key Deliverable:** Database Connection Leak Profiling & Connection Pool Resiliency.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | Frontend View Uniformity, Visual Polish & Cross-Browser Styling | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Form Client Validation, Responsive Table Overflow & Toast Alerts | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Session Expiry Interception, CSRF Defenses & Error Redirection Rules | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Boundary Condition Handlers (Division-by-Zero) & Expression Validations | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Database Connection Leak Profiling & Connection Pool Resiliency | ✅ Completed |

<div style="page-break-after: always;"></div>

# Week 12: System Integration Testing, End-to-End Validation, Deployment & Documentation (September 21 – September 28, 2026)
## Java Lab Portal — RTU 5th Sem Practical Lab Web Application

---

## 📌 Executive Summary
Week 12 of the Java Lab Portal development was dedicated to **system integration testing, end-to-end validation, deployment & documentation**. The 5-member engineering team operated across dedicated feature branches in alignment with the standard 3-tier Model-View-Controller (MVC) architecture deployed on Apache Tomcat 9 and MySQL 8.0.

### 📝 Work Completed (Portal Submission)
> Deployed full project to Apache Tomcat 9. Executed end-to-end integration tests for teacher and student roles. Verified session termination, form validations, and experiment previews. Standardized academic headers, authored module MODULE_README.md files and repository README.md.

### ⚠️ Key Challenges & Technical Resolutions
- **Challenge Encountered:** Session timeout handling causing exceptions on stale form submissions.
- **Engineering Resolution:** The team resolved this through modular architectural separation, explicit interface contracts, and thorough peer code reviews.

### 🎯 Plan for Next Week
> Submit final project repository and attend viva examination.

### 🔗 Official Repository & Tracking
- **GitHub Repository:** [https://github.com/KrishnaGupta-coder/JavaLabPortal](https://github.com/KrishnaGupta-coder/JavaLabPortal)
- **Milestone Status:** Week 12 Deliverables Validated and Merged.

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
- **Core Focus:** End-to-end integration testing, UI mockups showcase in documentation, and repository `README.md` authoring.
- **Weekly Tasks & Activity Log:**
  - **21/09/2026** (3.0 hrs, *In Progress*): Coordinated team integration testing on Apache Tomcat 9; logged minor UI alignment bugs.
  - **22/09/2026** (3.0 hrs, *Completed*): Fixed table container overflow on student list and verified button alignments.
  - **23/09/2026** (3.0 hrs, *Completed*): Validated form submission flash alerts: success toast notifications display properly.
  - **24/09/2026** (2.5 hrs, *Completed*): Removed all non-ASCII characters and em-dashes from JSP templates to ensure clean UTF-8.
  - **25/09/2026** (2.5 hrs, *Completed*): Standardized academic header crediting all 5 members across Module 1 JSP files.
  - **26/09/2026** (2.0 hrs, *Completed*): Authored MODULE_README.md documenting portal shell architecture and experiment interfaces.
  - **27/09/2026** (2.0 hrs, *Completed*): Authored root project README.md documenting system overview, setup, and team contributions.
  - **28/09/2026** (2.0 hrs, *Completed*): Executed final project deployment check on Tomcat 9; prepared lab viva presentation.
  - *Total Effort Logged:* **20.0 Engineering Hours**
- **Key Deliverable:** End-to-End UI Verification, UI Mockups Showcase & Repository `README.md`.

---

### 2. Karan Ramlakhani
- **Role / Domain:** Frontend Management Forms, Class Section & Theory Interfaces
- **Module & Branch:** `Frontend Management Forms & Theory UI` (`frontend-management-forms`)
- **Core Focus:** Full-stack form testing, responsive view verification across mobile/desktop, and frontend documentation.
- **Weekly Tasks & Activity Log:**
  - **21/09/2026** (3.0 hrs, *In Progress*): Participated in full system regression testing on Apache Tomcat 9 server.
  - **22/09/2026** (3.0 hrs, *Completed*): Fixed minor text alignment in feedback star rating component on mobile view.
  - **23/09/2026** (3.0 hrs, *Completed*): Verified teacher class deletion safety message displays when enrolled students exist.
  - **24/09/2026** (2.5 hrs, *Completed*): Removed all non-ASCII characters and em-dashes from Module 2 JSP templates.
  - **25/09/2026** (2.5 hrs, *Completed*): Added standardized academic header comment crediting all 5 team members in JSP files.
  - **26/09/2026** (2.0 hrs, *Completed*): Removed all inline AI-generated comments across student, class, and theory JSP views.
  - **27/09/2026** (2.0 hrs, *Completed*): Authored MODULE_README.md documenting frontend management forms and theory interface.
  - **28/09/2026** (2.0 hrs, *Completed*): Verified clean build and verified branch readiness for final GitHub pull request merge.
  - *Total Effort Logged:* **20.0 Engineering Hours**
- **Key Deliverable:** Forms Validation Audit, Accessibility Review & Frontend Documentation.

---

### 3. Kanishq Chasta
- **Role / Domain:** Authentication, Security Filter & Core Management Controllers
- **Module & Branch:** `Security, Auth & Controllers` (`backend-auth-core`)
- **Core Focus:** Security penetration audit, role-based boundary testing, and architecture documentation.
- **Weekly Tasks & Activity Log:**
  - **21/09/2026** (3.0 hrs, *In Progress*): Participated in full system regression testing on Apache Tomcat 9 server.
  - **22/09/2026** (3.0 hrs, *Completed*): Verified session timeout redirection: inactive sessions redirect to login.jsp with alert.
  - **23/09/2026** (3.0 hrs, *Completed*): Validated web.xml validation against Java Servlet 4.0 schema specification.
  - **24/09/2026** (2.5 hrs, *Completed*): Cleaned up non-ASCII characters and em-dashes from Java docstrings and web descriptor.
  - **25/09/2026** (2.5 hrs, *Completed*): Verified zero compilation warnings in Eclipse workspace for Module 3 classes.
  - **26/09/2026** (2.0 hrs, *Completed*): Authored MODULE_README.md documenting security architecture and controller API contracts.
  - **27/09/2026** (2.0 hrs, *Completed*): Assisted Krishna with updating master README.md controller documentation.
  - **28/09/2026** (2.0 hrs, *Completed*): Final inspection of backend-auth-core branch; verified clean git status ready for merge.
  - *Total Effort Logged:* **20.0 Engineering Hours**
- **Key Deliverable:** Security Penetration Audit, Role Privilege Verification & Security Docs.

---

### 4. Jayesh Sharma
- **Role / Domain:** Business Logic, Calculator Model & Laboratory Experiment Services
- **Module & Branch:** `Calculator & Experiment Services` (`backend-experiments-services`)
- **Core Focus:** Calculator engine stress testing, experiment demonstration accuracy verification, and module READMEs.
- **Weekly Tasks & Activity Log:**
  - **21/09/2026** (3.0 hrs, *In Progress*): Participated in full system regression testing on Apache Tomcat 9 server.
  - **22/09/2026** (3.0 hrs, *Completed*): Verified error handling on malformed arithmetic expressions; returned clean error message.
  - **23/09/2026** (3.0 hrs, *Completed*): Verified feedback submission character limit validation (maximum 500 characters).
  - **24/09/2026** (2.5 hrs, *Completed*): Cleaned up non-ASCII characters and em-dashes from Java docstrings and comments.
  - **25/09/2026** (2.5 hrs, *Completed*): Verified zero compilation errors or warnings in Eclipse workspace for Module 4 classes.
  - **26/09/2026** (2.0 hrs, *Completed*): Authored MODULE_README.md documenting calculation engine and experiment service endpoints.
  - **27/09/2026** (2.0 hrs, *Completed*): Assisted Krishna with updating master README.md services architecture documentation.
  - **28/09/2026** (2.0 hrs, *Completed*): Final inspection of backend-experiments-services branch; verified clean git status for merge.
  - *Total Effort Logged:* **20.0 Engineering Hours**
- **Key Deliverable:** Expression Precision Test Suite, Experiment Code Accuracy & Lab Docs.

---

### 5. Juned Hussain
- **Role / Domain:** Database Schema, Connection Management, Entity POJOs & DAO Layer
- **Module & Branch:** `Database Persistence & DAOs` (`database-persistence`)
- **Core Focus:** Database stress testing, backup script validation, ACID compliance verification, and final submission packaging.
- **Weekly Tasks & Activity Log:**
  - **21/09/2026** (3.0 hrs, *In Progress*): Participated in full system regression testing on Apache Tomcat 9 server.
  - **22/09/2026** (3.0 hrs, *Completed*): Verified clean database export: executed database.sql on a fresh machine with zero errors.
  - **23/09/2026** (3.0 hrs, *Completed*): Validated that all database test accounts have clearly documented default passwords.
  - **24/09/2026** (2.5 hrs, *Completed*): Cleaned up non-ASCII characters and em-dashes from database.sql and Java docstrings.
  - **25/09/2026** (2.5 hrs, *Completed*): Verified zero compilation errors or warnings in Eclipse workspace for Module 5 classes.
  - **26/09/2026** (2.0 hrs, *Completed*): Authored MODULE_README.md documenting database schema, table relations, and DAO methods.
  - **27/09/2026** (2.0 hrs, *Completed*): Assisted Krishna with updating master README.md persistence architecture documentation.
  - **28/09/2026** (2.0 hrs, *Completed*): Final inspection of database-persistence branch; verified clean git status ready for merge.
  - *Total Effort Logged:* **20.0 Engineering Hours**
- **Key Deliverable:** Database Backup Protocols, ACID Resilience Audit & Persistence Docs.

---

## 📊 Summary Matrix

| Member | Module | Deliverable | Status |
| :--- | :--- | :--- | :---: |
| **Krishna Gupta** | Frontend Portal Shell & Lab Experiments Hub | End-to-End UI Verification, UI Mockups Showcase & Repository `README.md` | ✅ Completed |
| **Karan Ramlakhani** | Frontend Management Forms & Theory UI | Forms Validation Audit, Accessibility Review & Frontend Documentation | ✅ Completed |
| **Kanishq Chasta** | Security, Auth & Controllers | Security Penetration Audit, Role Privilege Verification & Security Docs | ✅ Completed |
| **Jayesh Sharma** | Calculator & Experiment Services | Expression Precision Test Suite, Experiment Code Accuracy & Lab Docs | ✅ Completed |
| **Juned Hussain** | Database Persistence & DAOs | Database Backup Protocols, ACID Resilience Audit & Persistence Docs | ✅ Completed |
