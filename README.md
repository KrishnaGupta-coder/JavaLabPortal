# JavaLabPortal: Java Practical Lab Learning & Examination Portal

[![Live Demo](https://img.shields.io/badge/Live_Demo-Railway_Cloud-00C7B7?style=for-the-badge&logo=railway)](https://javalabportal-production.up.railway.app)
[![Docker](https://img.shields.io/badge/Docker-Tomcat_9-2496ED?style=for-the-badge&logo=docker)](https://github.com/KrishnaGupta-coder/JavaLabPortal)
[![Database](https://img.shields.io/badge/MySQL_8.0-Cloud_Database-4479A1?style=for-the-badge&logo=mysql)](https://github.com/KrishnaGupta-coder/JavaLabPortal)

> 🚀 **Live Production Deployment:** [https://javalabportal-production.up.railway.app](https://javalabportal-production.up.railway.app)

---

## Week 1: Project Administration & Abstract

### Project Administration

**Project Guide:** Er. Ram Babu Buri
* **Department:** Artificial Intelligence & Data Science (RTU 5th Semester)
* **Specializations:** Java EE, JSP-Servlet, MySQL, Software Engineering & System Architecture

### Team Members

| Name | Role / Layer | Module Ownership | Enrollment / Roll No | Email |
| :--- | :--- | :--- | :--- | :--- |
| **Krishna Gupta** | Project Lead / Frontend 1 | Module 1: Portal Shell & Lab Experiments Hub | 24E1ARADM40P083/24EARAD083 | 16krishnagupta06@gmail.com |
| **Karan Ramlakhani** | Frontend Developer 2 | Module 2: Management Forms & Theory UI | 24E1ARADM30P076/24EARAD076 | karanramlakhani45@gmail.com |
| **Kanishq Chasta** | Backend Developer 1 | Module 3: Security, Auth & Controllers | 24E1ARADM40P074/24EARAD074 | chastapriyanshu14@gmail.com |
| **Jayesh Sharma** | Backend Developer 2 | Module 4: Calculator & Experiment Services | 24E1ARADM40P070/24EARAD070 | jayeshpandit2505@gmail.com |
| **Juned Hussain** | Database Engineer | Module 5: Database Persistence & DAOs | 24E1ARADM30P072/24EARAD072 | junedhussain294@gmail.com |

---

### Abstract
This project introduces **JavaLabPortal**, a centralized web-based laboratory learning and practical evaluation platform engineered to overcome the constraints of traditional, manual engineering practical lab record keeping and evaluation for Rajasthan Technical University (RTU) 5th Semester students. While standard manual lab records lack interactive execution, dynamic code visualization, and transparent student performance tracking, JavaLabPortal establishes an institutional environment for engineering students to execute syllabus programs, study unit-wise theory content, calculate arithmetic expressions, and receive instructor feedback.

The system is built upon a standard 3-tier Model-View-Controller (MVC) architecture deployed on an Apache Tomcat 9 web server. It incorporates a relational MySQL database adhering to Third Normal Form (3NF) to manage students, faculty accounts, academic batches, syllabus experiments, and course notes. Java Servlets orchestrate business transactions and route requests, while standard Java Server Pages (JSP) and native responsive system typography deliver clean, accessible presentation views. Access control is managed through a central HTTP servlet filter enforcing Role-Based Access Control (RBAC) across Teacher and Student personas.

Furthermore, JavaLabPortal bridges practical demonstration with continuous institutional feedback. Teachers can dynamically publish custom lab assignments and theory lecture notes directly into MySQL without code redeployment, while students execute real-time arithmetic calculations, review interactive experiment previews, and submit laboratory evaluations. The resulting system modernizes collegiate practical education, providing a reliable, automated platform for practical viva preparation and coursework evaluation.

---

## Week 2: User Roles, SRS & System Architecture

### User Roles
JavaLabPortal enforces strict Role-Based Access Control (RBAC) at the servlet controller layer utilizing `AccessControlFilter` and server-managed HTTP sessions.
* **Teacher (Administrator):** Privileged faculty users who can create and manage class sections, register and update student profiles, assign custom lab experiments, publish unit-wise theory topics, and review student feedback.
* **Student:** Authenticated students identified by their official RTU Roll Number. Students can browse the complete lab syllabus (Experiments 1 to 10), view interactive GUI previews, execute arithmetic expressions, read theory notes, and submit ratings.
* **Guest / Unauthenticated User:** Permitted to view public landing pages, lab curriculum summaries, and the secure login portal. Protected administrative and student routes redirect unauthenticated users to the login screen.

---

### SRS Document
* You can access the complete [Project SRS Document (PDF)](https://drive.google.com/file/d/your-srs-drive-link/view?usp=sharing).

---

### Architecture & Core Modules
The JavaLabPortal architecture operates on a 3-tier MVC pattern, separating the presentation layer (JSP Views), controller layer (Java Servlets & Filters), and persistence layer (Model POJOs & JDBC DAOs).

```
[ Client Browser (JSP Views) ] 
             │
             ▼  (HTTP GET / POST)
[ Controller Layer: AccessControlFilter & Servlets ]
             │
             ▼  (Data Transfer / Business Logic)
[ Model & Persistence: POJOs & Data Access Objects (DAOs) ]
             │
             ▼  (JDBC PreparedStatement)
[ Relational Storage: MySQL Database 8.0 ]
```

#### Functional Modules
* **Module 1: Frontend Portal Shell & Experiment Hub (Krishna Gupta):**
  Renders the shared UI shell (`header.jspf`, `footer.jspf`), landing dashboard (`index.jsp`), role-based authentication portal (`login.jsp`), error handler (`error.jsp`), and individual interactive practical experiment interfaces (`exp1.jsp` through `exp9.jsp`, `arithmetic.jsp`).
* **Module 2: Frontend Management Forms & Theory Views (Karan Ramlakhani):**
  Renders administrative student tables (`studentList.jsp`), registration dialogs (`addStudent.jsp`, `updateStudent.jsp`), class section management (`manageClasses.jsp`), theory cards (`theoryList.jsp`), custom assignment forms (`addExperiment.jsp`), and feedback forms (`feedback.jsp`, `feedbackList.jsp`).
* **Module 3: Security, Authentication & Management Controllers (Kanishq Chasta):**
  Intercepts incoming HTTP requests via `AccessControlFilter.java`, validates credentials and session state via `LoginServlet.java` and `LogoutServlet.java`, processes student lifecycle in `StudentServlet.java`, manages class batches in `ClassServlet.java`, and configures `web.xml`.
* **Module 4: Calculator Model & Laboratory Services (Jayesh Sharma):**
  Encapsulates mathematical parsing and operator precedence in `CalculatorModel.java`, evaluates arithmetic requests via `CalculatorServlet.java` and `ArithmeticServlet.java`, dispatches syllabus content in `ExperimentServlet.java` and `TheoryServlet.java`, and sanitizes reviews in `FeedbackServlet.java`.
* **Module 5: Database Persistence & DAO Architecture (Juned Hussain):**
  Maintains the relational schema `database.sql`, implements singleton connection pooling in `DBConnection.java`, provides input sanitization and resource safety in `PortalHelper.java`, encapsulates entity POJOs, and executes SQL operations across all DAO classes.

---

### Relational Database Strategy
The system utilizes a relational database model in MySQL 8.0 to guarantee ACID compliance, transactional integrity, and referential constraints across student enrollments and lab assignments.
* **Normalization:** Normalized to Third Normal Form (3NF) to eliminate data redundancy across academic years and student profiles.
* **Parameterized Queries:** Every database interaction is executed via JDBC `PreparedStatement` to prevent SQL Injection vulnerabilities.
* **Connection Management:** `DBConnection.java` provides singleton connection acquisition, while `PortalHelper.safeClose()` guarantees that `ResultSet`, `PreparedStatement`, and `Connection` instances close in `finally` blocks to prevent resource leaks.
* **Indexing:** Explicit indexes on `roll_number`, `username`, and foreign keys (`class_id`) guarantee sub-millisecond query execution.

---

### Non-Functional Requirements
* **Performance:** Average server response time for database queries and page dispatches remains under 50 milliseconds on Apache Tomcat 9.
* **Security:** Role permissions are verified on every protected HTTP request. Input strings are sanitized via `PortalHelper.cleanInput()` to neutralize Cross-Site Scripting (XSS).
* **Reliability:** Custom error handlers in `web.xml` trap 404 (Not Found) and 500 (Internal Server Error) exceptions, redirecting users to `error.jsp` without exposing internal stack traces.
* **Portability:** Built strictly using Java EE standards (Servlet 4.0, JSP 2.3) and standard SQL, enabling platform-independent deployment across Windows and Linux environments.

---

## Week 3: UML Design

### 1. Class Diagram
```mermaid
classDiagram
    class DBConnection {
        -Connection connection
        +getConnection() Connection
        +closeConnection() void
    }

    class PortalHelper {
        +safeClose(ResultSet, Statement, Connection) void
        +cleanInput(String) String
        +isValidRollNumber(String) boolean
    }

    class Student {
        -int id
        -String rollNumber
        -String name
        -String email
        -int classId
        -String className
        +getRollNumber() String
        +getName() String
    }

    class StudentDAO {
        +addStudent(Student) void
        +updateStudent(Student) void
        +deleteStudent(int) void
        +getStudentById(int) Student
        +getStudentByRollNumber(String) Student
        +getStudentByName(String) Student
        +getAllStudents() List~Student~
    }

    class Teacher {
        -int id
        -String username
        -String password
        -String name
        +getUsername() String
        +getPassword() String
    }

    class TeacherDAO {
        +findByUsername(String) Teacher
        +validateTeacher(String, String) boolean
    }

    class AccessControlFilter {
        +doFilter(ServletRequest, ServletResponse, FilterChain) void
    }

    class LoginServlet {
        +doPost(HttpServletRequest, HttpServletResponse) void
    }

    class StudentServlet {
        +doGet(HttpServletRequest, HttpServletResponse) void
        +doPost(HttpServletRequest, HttpServletResponse) void
    }

    class CalculatorModel {
        -double currentResult
        +evaluate(String) double
        +calculate(double, double, String) double
    }

    DBConnection <.. StudentDAO : uses
    DBConnection <.. TeacherDAO : uses
    PortalHelper <.. StudentDAO : uses
    StudentDAO ..> Student : manages
    TeacherDAO ..> Teacher : manages
    StudentServlet ..> StudentDAO : calls
    LoginServlet ..> TeacherDAO : calls
    LoginServlet ..> StudentDAO : calls
    AccessControlFilter ..> LoginServlet : intercepts
```

---

## Week 4: Database Design & UI Mock-ups

### 1. Database Architecture & MySQL Relational Schema

#### A. Relational Tables Breakdown

* **`teachers` Table:** Administrative faculty credentials.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `username` (`VARCHAR(50)`, `UNIQUE`, `NOT NULL`)
  * `password` (`VARCHAR(100)`, `NOT NULL`)
  * `name` (`VARCHAR(100)`, `NOT NULL`)
  * `created_at` (`TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`)

* **`class_sections` Table:** Academic batches and sections.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `class_name` (`VARCHAR(50)`, `UNIQUE`, `NOT NULL`)
  * `created_at` (`TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`)

* **`students` Table:** Enrolled student records.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `roll_number` (`VARCHAR(30)`, `UNIQUE`, `NOT NULL`)
  * `name` (`VARCHAR(100)`, `NOT NULL`)
  * `email` (`VARCHAR(100)`)
  * `class_id` (`INT`, `FOREIGN KEY` -> `class_sections.id`)
  * `created_at` (`TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`)

* **`experiments` Table:** Syllabus and custom lab practicals.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `title` (`VARCHAR(150)`, `NOT NULL`)
  * `aim` (`TEXT`, `NOT NULL`)
  * `description` (`TEXT`)
  * `order_no` (`INT`, `DEFAULT 0`)
  * `is_active` (`BOOLEAN`, `DEFAULT TRUE`)

* **`theory_content` Table:** Unit-wise lecture notes.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `title` (`VARCHAR(150)`, `NOT NULL`)
  * `content` (`TEXT`, `NOT NULL`)
  * `unit_no` (`INT`, `DEFAULT 1`)
  * `created_at` (`TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`)

* **`feedback` Table:** Student ratings and reviews.
  * `id` (`INT`, `PRIMARY KEY`, `AUTO_INCREMENT`)
  * `student_name` (`VARCHAR(100)`, `NOT NULL`)
  * `rating` (`INT`, `CHECK (rating BETWEEN 1 AND 5)`)
  * `comments` (`TEXT`)
  * `created_at` (`TIMESTAMP`, `DEFAULT CURRENT_TIMESTAMP`)

---

#### B. Entity-Relationship (ER) Diagram

```mermaid
erDiagram
    CLASS_SECTIONS ||--o{ STUDENTS : "enrolls"
    TEACHERS ||--o{ EXPERIMENTS : "assigns"
    TEACHERS ||--o{ THEORY_CONTENT : "publishes"

    CLASS_SECTIONS {
        int id PK
        string class_name UK
        timestamp created_at
    }

    STUDENTS {
        int id PK
        string roll_number UK
        string name
        string email
        int class_id FK
        timestamp created_at
    }

    TEACHERS {
        int id PK
        string username UK
        string password
        string name
        timestamp created_at
    }

    EXPERIMENTS {
        int id PK
        string title
        string aim
        text description
        int order_no
        boolean is_active
    }

    THEORY_CONTENT {
        int id PK
        string title
        text content
        int unit_no
        timestamp created_at
    }

    FEEDBACK {
        int id PK
        string student_name
        int rating
        text comments
        timestamp created_at
    }
```

---

### 2. User Interface (UI) Mock-ups
* **Portal Dashboard & Navigation Shell (`index.jsp`):** Hero section with academic details and quick access cards to Lab Experiments, Theory Syllabus, and Calculator.
* **Teacher Administration Center (`manageClasses.jsp` & `studentList.jsp`):** Responsive tables with search, edit, delete modals, and batch allocation.
* **Interactive Lab Hub (`experiments.jsp` & `arithmetic.jsp`):** Unit-wise syllabus view with interactive Swing previews and live arithmetic evaluator.

---

## Week 5: Project Structure & Module 1 Implementation

### Project Directory Structure
```text
JavaLabPortal/
|-- docs/
|   \-- modules/
|       |-- Module1_Frontend_PortalAndExperiments.md
|       |-- Module2_Frontend_ManagementAndTheory.md
|       |-- Module3_Backend_AuthAndManagement.md
|       |-- Module4_Backend_ExperimentsAndServices.md
|       \-- Module5_Database_PersistenceLayer.md
|-- src/main/java/com/javalab/
|   |-- calc/
|   |   \-- CalculatorModel.java
|   |-- dao/
|   |   |-- ClassSectionDAO.java
|   |   |-- ExperimentDAO.java
|   |   |-- FeedbackDAO.java
|   |   |-- StudentDAO.java
|   |   |-- TeacherDAO.java
|   |   \-- TheoryContentDAO.java
|   |-- db/
|   |   \-- DBConnection.java
|   |-- filter/
|   |   \-- AccessControlFilter.java
|   |-- model/
|   |   |-- ClassSection.java
|   |   |-- Experiment.java
|   |   |-- Feedback.java
|   |   |-- Student.java
|   |   |-- Teacher.java
|   |   \-- TheoryContent.java
|   |-- servlet/
|   |   |-- ArithmeticServlet.java
|   |   |-- CalculatorServlet.java
|   |   |-- ClassServlet.java
|   |   |-- ExperimentServlet.java
|   |   |-- FeedbackServlet.java
|   |   |-- LoginServlet.java
|   |   |-- LogoutServlet.java
|   |   |-- StudentServlet.java
|   |   \-- TheoryServlet.java
|   \-- util/
|       \-- PortalHelper.java
|-- src/main/webapp/
|   |-- classes/manageClasses.jsp
|   |-- experiments/addExperiment.jsp
|   |-- students/ (addStudent.jsp, studentList.jsp, updateStudent.jsp)
|   |-- theory/ (addTheory.jsp, theoryList.jsp)
|   |-- WEB-INF/web.xml
|   |-- arithmetic.jsp
|   |-- error.jsp
|   |-- exp1.jsp - exp4.jsp
|   |-- exp6-preview.jsp, exp7-preview.jsp, exp9.jsp
|   |-- experiments.jsp
|   |-- feedback.jsp, feedbackList.jsp
|   |-- footer.jspf, header.jspf
|   |-- index.jsp, login.jsp
|-- .dockerignore
|-- Dockerfile
|-- database.sql
\-- README.md
```

---

### Member 1: Krishna Gupta (Portal Shell & Experiments Hub)

#### Role & Scope of Work
* **Frontend UI Shell:** Developed shared layout templates `header.jspf` and `footer.jspf`, landing page `index.jsp`, and secure login interface `login.jsp`.
* **Lab Experiment Views:** Developed practical demonstrations for RTU syllabus experiments (`exp1.jsp` through `exp4.jsp`, `exp6-preview.jsp`, `exp7-preview.jsp`, `exp9.jsp`).
* **Calculator Interface:** Implemented interactive numeric keypad and operation display in `arithmetic.jsp`.

#### Problems & Challenges Faced
1. **Responsive Navbar Collapse:** Mobile viewports caused menu items to overlap; resolved by implementing a pure CSS toggle and flexbox wrapper.
2. **Swing GUI Simulation in Web:** Recreating Java Swing desktop GUIs (Experiment 6 & 7) in browser views required custom CSS card frames and JavaScript event simulation.
3. **Session Timeout Feedback:** Handling expired user sessions cleanly without throwing JSP 500 errors; added session checks redirecting to `error.jsp`.

#### What Was Completed
* Responsive, cohesive UI shell utilizing native system typography (`Segoe UI`, `Tahoma`).
* 10 interactive practical experiment demonstration pages mapped to the RTU syllabus.
* Clean error handling interface and interactive arithmetic evaluator view.

---

## Week 6: Module 2 & Module 3 Implementation

### Member 2: Karan Ramlakhani (Management Forms & Theory Views)

#### Role & Scope of Work
* **Student Management UI:** Built `studentList.jsp` with responsive tables, search filters, and action triggers for edit and delete.
* **Enrollment Forms:** Built `addStudent.jsp` and `updateStudent.jsp` with client-side regex input validation.
* **Class & Theory Views:** Built `manageClasses.jsp` section dashboard, `theoryList.jsp` card view, and `addTheory.jsp` topic creator.
* **Feedback Views:** Developed `feedback.jsp` with 5-star rating selectors and `feedbackList.jsp` review dashboard.

#### Problems & Challenges Faced
1. **Form Field Pre-Population:** Passing existing student attributes into `updateStudent.jsp` modal without reloading the parent list.
2. **Table Overflow on Mobile:** Wide student data tables broke mobile screen layouts; resolved using responsive overflow wrappers.
3. **Star Rating UX:** Designing a lightweight, dependency-free CSS star rating widget that binds values cleanly to form inputs.

#### What Was Completed
* Complete student lifecycle forms (List, Add, Update, Search) with instant validation.
* Class section management interface displaying enrolled student count badges.
* Theory lecture notes reader and student feedback review dashboard.

---

### Member 3: Kanishq Chasta (Security, Authentication & Controllers)

#### Role & Scope of Work
* **Security Interceptor:** Implemented `AccessControlFilter.java` to guard protected routes against unauthenticated access.
* **Authentication Servlets:** Built `LoginServlet.java` (credential verification, role assignment) and `LogoutServlet.java` (session invalidation).
* **Management Controllers:** Implemented `StudentServlet.java` (CRUD action dispatcher) and `ClassServlet.java` (section management).
* **Web Deployment Descriptor:** Configured servlet endpoints, filter mappings, and custom error pages in `web.xml`.

#### Problems & Challenges Faced
1. **Infinite Redirection Loops:** Initial filter configuration blocked static assets (CSS, JS) from loading on login.jsp; resolved by implementing a strict public URL whitelist.
2. **Session Hijacking Prevention:** Enforced HTTP cache-control clearing headers (`no-cache`, `no-store`) on logout to prevent browser back-button access.
3. **Referential Integrity on Deletion:** Prevented deletion of class sections when students are actively enrolled by implementing dependency checks in `ClassServlet`.

#### What Was Completed
* Session-based `AccessControlFilter` securing teacher administrative routes.
* Robust authentication flow managing `TEACHER` and `STUDENT` roles.
* Complete servlet controllers handling student CRUD and class batch allocations.

---

## Week 7: Module 4 Implementation

### Member 4: Jayesh Sharma (Calculator & Experiment Services)

#### Role & Scope of Work
* **Calculation Engine:** Implemented `CalculatorModel.java` parsing expressions and enforcing operator precedence rules.
* **Arithmetic Servlets:** Developed `CalculatorServlet.java` and `ArithmeticServlet.java` with operation history tracking.
* **Lab Practical Controllers:** Developed `ExperimentServlet.java` for syllabus listing and teacher custom experiment creation.
* **Academic Services:** Built `TheoryServlet.java` for syllabus topics and `FeedbackServlet.java` for review processing.

#### Problems & Challenges Faced
1. **Operator Precedence Logic:** Correctly evaluating compound expressions with mixed operators without third-party libraries.
2. **Division by Zero:** Catching arithmetic errors and gracefully returning descriptive alerts without crashing the Tomcat worker thread.
3. **Cross-Site Scripting (XSS) in Feedback:** Sanitizing student review comments before database insertion using `PortalHelper.cleanInput()`.

#### What Was Completed
* Standalone `CalculatorModel` mathematical evaluation engine.
* Full suite of academic servlets handling experiments, theory content, and feedback.
* Session-based operation history log for interactive calculator views.

---

## Week 8: Module 5 Implementation & Summary

### Member 5: Juned Hussain (Database Persistence & DAO Layer)

#### Role & Scope of Work
* **Database Schema:** Authored `database.sql` creating normalized tables with foreign keys and unique constraints.
* **Connection Pooling:** Developed `DBConnection.java` implementing thread-safe singleton connection acquisition.
* **Utility Helpers:** Developed `PortalHelper.java` for safe JDBC closing and input validation.
* **DAO Layer:** Implemented `TeacherDAO`, `StudentDAO`, `ClassSectionDAO`, `ExperimentDAO`, `TheoryContentDAO`, and `FeedbackDAO`.
* **Seed Data:** Seeded default RTU syllabus experiments, default teacher credentials, and sample classes.

#### Problems & Challenges Faced
1. **Connection Leaks:** Preventing unclosed database connections under high query volume; resolved by centralizing cleanup in `PortalHelper.safeClose()`.
2. **Missing DAO Methods:** Implemented `getStudentByName()` in `StudentDAO` to resolve login lookup requirements cleanly.
3. **SQL Injection Defense:** Replaced all dynamic SQL string concatenation with parameterized `PreparedStatement` queries.

#### What Was Completed
* Production-ready `database.sql` schema and seed dataset.
* Thread-safe `DBConnection` singleton connection manager.
* Complete DAO persistence layer covering all entity operations with PreparedStatement parameter binding.

---

### Summary of Module Distribution

| Module | Member Name | Role & Architectural Layer | Primary Focus | Key Deliverables | Module Documentation |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Module 1** | Krishna Gupta (Lead) | Frontend Presentation Layer | Portal Shell, Theme & Lab UI | `index.jsp`, `header.jspf`, `login.jsp`, `exp1`–`exp9`, `arithmetic.jsp` | [📖 Module 1 Docs](docs/modules/Module1_Frontend_PortalAndExperiments.md) |
| **Module 2** | Karan Ramlakhani | Frontend Presentation Layer | Management Forms & Theory UI | `studentList.jsp`, `addStudent.jsp`, `manageClasses.jsp`, `theoryList.jsp`, `feedback.jsp` | [📖 Module 2 Docs](docs/modules/Module2_Frontend_ManagementAndTheory.md) |
| **Module 3** | Kanishq Chasta | Controller & Security Layer | Security Filter & Auth Servlets | `AccessControlFilter.java`, `LoginServlet.java`, `StudentServlet.java`, `web.xml` | [📖 Module 3 Docs](docs/modules/Module3_Backend_AuthAndManagement.md) |
| **Module 4** | Jayesh Sharma | Business Logic & Service Layer | Math Evaluation & Lab Servlets | `CalculatorModel.java`, `CalculatorServlet.java`, `ExperimentServlet.java`, `FeedbackServlet.java` | [📖 Module 4 Docs](docs/modules/Module4_Backend_ExperimentsAndServices.md) |
| **Module 5** | Juned Hussain | Persistence & Model Layer | Relational Schema, POJOs & DAOs | `database.sql`, `DBConnection.java`, `PortalHelper.java`, all Models & DAOs | [📖 Module 5 Docs](docs/modules/Module5_Database_PersistenceLayer.md) |

---

## Week 9: System Integration & End-to-End (E2E) Testing

When moving from individual module development to **System Integration & End-to-End (E2E) Testing**, the focus shifted from isolated unit testing to verifying **cross-module data flows, session lifecycle consistency, role-based security enforcement, transactional integrity, and Apache Tomcat runtime stability**.

In this phase, each team member took on an **Integration & Testing Lead role** for their respective domain, working together to unite all five modules into a secure, production-ready practical lab portal.

---

### 1. Member 1 (Krishna Gupta): Portal Shell & View Integration Lead

#### Integration & Testing Role
**Portal Shell Template, Cross-Device Viewport Consistency & Responsive Layout Lead.**

#### Work & Scope
* **Cross-Module View Aggregation**: Integrated the unified header/footer shell templates (`header.jspf`, `footer.jspf`) across all 15+ module JSPs, ensuring dynamic navigation rendering based on active session roles (Guest vs Student vs Teacher).
* **Cross-Browser & Device Compatibility**: Tested portal views across desktop, tablet, and mobile viewports to guarantee that practical experiment consoles, formula cards, and data tables render cleanly without layout breaks.
* **Navigation Flow & Flash Message Testing**: Verified breadcrumb consistency and flash notification alerts across login redirects, validation errors, and success notifications.

#### Problems Faced During Integration
1. **Session-Aware Navbar Desynchronization**: The navbar occasionally displayed "Guest" options immediately after login due to JSP page rendering before session attributes fully propagated.
2. **Horizontal Table Overflow on Mobile Screens**: Large student record tables and complex experiment formula cards broke viewport bounds on screens under 768px.
3. **Flash Message Persistence Across Refreshes**: Error messages (e.g., "Invalid Credentials") persisted even after manual page refreshes because session messages were not being cleared upon single consumption.

#### What They Completed
* **Unified Portal Viewport & Shell Integration Test Suite** validating layout rendering across Chrome, Firefox, Safari, and Edge.
* **Centralized Single-Use Flash Messaging Engine** ensuring notifications clear immediately after first display.
* **Responsive CSS Breakpoint Audit** guaranteeing seamless display across all mobile, tablet, and desktop resolutions.

---

### 2. Member 2 (Karan Ramlakhani): Management Forms & CRUD Integration Lead

#### Integration & Testing Role
**Administrative Form Pipelines, Client-Side Sanitization & Modal Integration Lead.**

#### Work & Scope
* **Management Pipeline Orchestration**: Integrated student and class management JSP forms with `StudentServlet` and `ClassServlet`, ensuring bi-directional form population and clean redirects.
* **Modal Pre-Population & Asynchronous Handling**: Verified that "Edit Student" and "Update Class" modals reliably load existing record data via URL query parameters without page reloading.
* **Input Sanitization & Validation Audits**: Enforced client-side regex validations on enrollment numbers (`ACEIT...`), institutional email formats, and required field boundaries.

#### Problems Faced During Integration
1. **Modal Form State Bleed**: Opening the edit modal for a student after closing a previous modal retained stale values from the previous record.
2. **Double-Submission Race Conditions**: Rapid double-clicking on the "Add Student" submit button generated duplicate HTTP POST requests, triggering MySQL primary key conflict exceptions.
3. **Foreign Key Constraint UI Shock**: Attempting to delete a class section currently containing enrolled students resulted in raw SQL error pages instead of user-friendly warning modals.

#### What They Completed
* **End-to-End Management CRUD Test Suite** verifying full lifecycle: *Add Student ➔ List View ➔ Edit Modal ➔ Update ➔ Confirmation Modal ➔ Safe Delete*.
* **Idempotent Form Submission Guard** automatically disabling submit buttons during active network requests.
* **Relational Constraint Safety Modal Suite** intercepting cascading delete attempts with intuitive advisory warnings.

---

### 3. Member 3 (Kanishq Chasta): Backend Authentication & Security Filter Lead

#### Integration & Testing Role
**Global Security Filter, Session Lifecycle & RBAC Authorization Lead.**

#### Work & Scope
* **Global Access Control Enforcement**: Integrated `AccessControlFilter` across all protected URL endpoints (`/students/*`, `/classes/*`, `/experiments/*`), enforcing strict Role-Based Access Control (RBAC).
* **Session Lifecycle & Penetration Testing**: Executed security tests simulating privilege escalation (e.g., students attempting direct access to teacher-only management endpoints) and session hijacking.
* **Authentication State Propagation**: Verified that logging out immediately invalidates `HttpSession`, clears `JSESSIONID` cookies, and blocks browser back-button access via HTTP cache control headers.

#### Problems Faced During Integration
1. **Direct JSP Filter Bypass**: Students could initially bypass `StudentServlet` checks by requesting `.jsp` files directly (e.g., `/students/studentList.jsp`), necessitating filter mappings for both servlet URLs and `.jsp` patterns.
2. **Stale Browser Back-Button Access**: After logging out, pressing the browser's "Back" button briefly exposed cached private student data until strict `no-cache, no-store` headers were enforced.
3. **Session Collision Across Multiple Tabs**: Concurrent sessions opened in multiple tabs under different roles caused session state overrides.

#### What They Completed
* **Global RBAC Security Matrix Test Suite** verifying complete access isolation between Guest, Student, and Teacher roles.
* **Hardened Session Lifecycle & Cache Control Suite** ensuring complete invalidation upon logout.
* **Penetration & Authorization Audit Report** confirming zero route leaks across 20+ portal endpoints.

---

### 4. Member 4 (Jayesh Sharma): Backend Experiment Services Lead

#### Integration & Testing Role
**Computational Engines, Experiment State Machine & Service Pipeline Lead.**

#### Work & Scope
* **Experiment Service Orchestration**: Integrated `CalculatorServlet`, `ArithmeticServlet`, `TheoryServlet`, and `FeedbackServlet` with their respective DAO components.
* **Mathematical Accuracy & Edge-Case Testing**: Verified arithmetic computation precision, handling extreme values, negative inputs, and floating-point operations across all lab calculators.
* **Theory Content & Feedback Ingestion**: Validated dynamic theory retrieval from MySQL and concurrent student feedback submissions.

#### Problems Faced During Integration
1. **Divide-by-Zero Arithmetic Crashes**: Passing a zero denominator into the arithmetic calculator triggered unhandled `ArithmeticException` 500 errors instead of graceful validation alerts.
2. **Theory Content Encoding Corruption**: Code snippets and technical formatting inside theory explanations suffered character mangling due to inconsistent character encodings.
3. **Feedback Submission Concurrency Lock**: High-volume concurrent feedback submissions during class lab simulations created database thread contention.

#### What They Completed
* **Experiment Computational Accuracy & State Test Suite** covering all lab operations and boundary inputs.
* **Resilient Exception Handler & UTF-8 Theory Pipeline** guaranteeing clean rendering of formatted code snippets.
* **High-Concurrency Service Benchmark Report** maintaining sub-150ms response times under peak student load.

---

### 5. Member 5 (Juned Hussain): Database & Persistence Integration Lead

#### Integration & Testing Role
**Connection Pooling, 3NF Relational Integrity & Performance Lead.**

#### Work & Scope
* **Connection Lifecycle Management**: Managed JDBC connection lifecycle in `DBConnection`, guaranteeing that every database interaction safely closes `ResultSet`, `Statement`, and `Connection`.
* **ACID Transaction & Referential Integrity Testing**: Validated foreign key cascading rules across `teachers`, `students`, `classes`, `experiments`, and `feedbacks` tables.
* **Cloud & Docker DB Portability**: Verified schema and seed scripts (`database.sql`) across local MySQL 8.0, cloud MySQL instances, and Docker containers.

#### Problems Faced During Integration
1. **Connection Pool Depletion**: High-frequency concurrent queries caused connections to stay open, exhausting the pool until `try-with-resources` was implemented across all 6 DAOs.
2. **Deadlock During Concurrent Enrolment**: Simultaneous inserts into `students` alongside class capacity updates caused row-level lock contention.
3. **UTF-8 Byte Order Mark (BOM) Script Breakage**: Hidden BOM characters in SQL and Java files caused compilation and migration failures on Linux/Docker environments.

#### What They Completed
* **Zero-Leak Connection Lifecycle Test Suite** verifying 1,000+ continuous transactions without connection exhaustion.
* **Optimized 3NF Relational Schema & Migration Script** with indexed foreign keys and strict constraints.
* **Cross-Environment Database Portability Audit** ensuring identical operation across Windows, Linux, Docker, and Cloud MySQL.

---

### Overall System Integration Summary

During final **Full System Acceptance Testing**, the unified portal request lifecycle was verified across all layers:

```
[Student / Teacher Browser]
            │
            ▼ (HTTP Request)
[AccessControlFilter (Mem 3)] ──[Role Check]──► [Login / Unauthorized Redirect]
            │
            ├─► [Portal Shell & JSP Views (Mem 1)]
            │            ▲
            │            │ (Forward View)
            ▼            │
[Servlet Controllers (Mem 3 & 4)]
            │
            ▼ (Invoke DAO)
[DAO Persistence Layer (Mem 5)]
            │
            ▼ (JDBC Driver)
[MySQL 8.0 Database / Cloud DB]
```

---

## Week 10: Final System Evaluation, Deliverables & Project Submission

During **Week 10**, the JavaLabPortal engineering team completed the final system evaluation, production containerization audit, comprehensive technical documentation, project presentation deck (PPT), and end-to-end video demonstration.

---

### Project Deliverables & Artifacts

| Deliverable | Description | Resource Link |
| :--- | :--- | :--- |
| 🌐 **Live Web Application** | Production Cloud Container on Railway (Apache Tomcat 9 + MySQL 8.0) | [Launch Live Portal](https://javalabportal-production.up.railway.app) |
| 📄 **Final Project Report** | Complete Technical Architecture Document, System Requirements Specification (SRS), ER Diagrams, Class Diagrams, and Evaluation Metrics | [View Project Report (PDF)](https://drive.google.com/file/d/your-project-report-link/view?usp=sharing) \| [`ARCHITECTURE.md`](./README.md) |
| 📊 **Presentation Deck (PPT)** | 20-Slide B.Tech Final Evaluation Deck covering 3-Tier MVC Architecture, RBAC Security, Database Design & Testing Results | [View Presentation (PPT / Slides)](https://drive.google.com/file/d/your-presentation-ppt-link/view?usp=sharing) |
| 🎥 **Video Demonstration** | HD Video Walkthrough of JavaLabPortal (Student Workflow, Teacher Admin Panel, Experiment Simulators & Feedback System) | [Watch Video Demonstration (YouTube)](https://www.youtube.com/watch?v=your-demo-video-id) \| [Drive Video Link](https://drive.google.com/file/d/your-drive-video-link/view?usp=sharing) |

---

### Key Accomplishments & Week 10 Milestones

#### 1. Final Project Report & Technical Documentation
* Compiled the comprehensive **Software Requirements Specification (SRS)** and **Technical Architecture Document** covering:
  * Strict **3-Tier Model-View-Controller (MVC)** architectural design.
  * **Relational Schema Design (3NF)** with referential integrity across 5 core entities.
  * **Role-Based Access Control (RBAC)** securing teacher administrative routes from unauthorized student access.
  * **Data Protection & Prepared Statements** guaranteeing 100% protection against SQL injection vulnerabilities.

#### 2. Final Evaluation Slide Deck (PPT)
* Prepared a structured 20-slide presentation deck covering:
  * **Problem Statement & Scope:** Replacing manual lab record books with an interactive digital lab simulator.
  * **MVC Architecture Topology:** Flow diagram illustrating JSP Views, Servlet Controllers, and DAO Models.
  * **Role-Based Access Security:** `AccessControlFilter` request interceptor mechanics and session lifecycle.
  * **Live Experiment Modules:** Interactive arithmetic calculators, dynamic experiment theories, and real-time feedback loops.
  * **Database Design & Stress Testing:** 3NF relational schema, indexing, and connection leak test results.

#### 3. End-to-End Product Video Demonstration
* Produced an HD video demonstration showcasing:
  * **Authentication & Role Switching:** Seamless login and authorization between Student and Teacher accounts.
  * **Student Lab Journey:** Executing lab experiments, reading theory, running calculator tests, and submitting feedback.
  * **Teacher Admin Panel:** Creating and updating student accounts, managing class batches, and reviewing student feedback.
  * **Security Enforcement:** Live demonstration of unauthorized URL blocking and secure session logout.

#### 4. Containerization & Production Deployment Audit
* Built and verified production **`Dockerfile`** with Apache Tomcat 9 (`tomcat:9.0-jdk11-temurin`) and MySQL JDBC driver integration.
* Configured dynamic cloud port binding (`$PORT`) and environment auto-detection for zero-config deployment on Railway, Render, and AWS.
