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
