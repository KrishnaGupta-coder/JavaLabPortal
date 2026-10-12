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
