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
