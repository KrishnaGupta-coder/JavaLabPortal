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
