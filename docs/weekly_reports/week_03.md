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
