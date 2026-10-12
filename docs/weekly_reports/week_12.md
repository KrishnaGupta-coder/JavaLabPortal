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
