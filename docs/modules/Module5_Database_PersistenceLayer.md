# Module 5: Database & Persistence Layer

**Team Role:** Juned Hussain — Member 5 (Database & Persistence Engineer)  
**Layer:** Data Access & Model / Persistence Layer (MVC Architecture)  
**Technologies:** MySQL 8.x, JDBC (Java Database Connectivity), PreparedStatements, Zero-Downtime DDL Migration, Java JavaBeans / POJOs  

---

## 1. Overview & Responsibilities
This module is the persistence foundation of the application. It designs the relational schema, manages JDBC connectivity, and encapsulates all database transactions through the Data Access Object (DAO) pattern and POJO entity models.

* **Relational Schema Design & DDL (`database.sql`):**
  * Designed normalized relational tables:
    * `teacher`: Stores teacher credentials (`id`, `username`, `password`, `name`).
    * `class_section`: Manages academic classes/sections (`id`, `class_name`).
    * `student`: Enforces unique RTU roll numbers, name, `class_id` foreign key, plus `password` and `email` columns for student self-registration and authentication.
    * `employee`: Dedicated table for Experiment 5 (`empid INT PRIMARY KEY`, `empname VARCHAR(100)`, `empno VARCHAR(20)`).
    * `theory_content`: Stores published lecture notes (`id`, `title`, `content`, `created_at`).
    * `experiment`: Stores the 10 built-in experiments plus dynamic custom experiments (`id`, `title`, `description`, `type`, `live_url`, `code_content`, `order_no`).
    * `feedback`: Persists student reviews updated with `faculty_name`, `course`, `student_name`, `rating`, `feedback_text`, and `submitted_at`.
  * Authored seed data and migration scripts for immediate zero-config lab setup.
* **Zero-Downtime Startup Schema Migration:**
  * `DBMigrator.java`: Automated startup migration runner. When the application initializes (locally or on Railway cloud), it verifies and executes non-destructive DDL migrations (`ALTER TABLE ADD COLUMN IF NOT EXISTS`, `CREATE TABLE IF NOT EXISTS`) without dropping tables, guaranteeing schema synchronization without downtime.
* **Connection Management:**
  * `DBConnection.java`: Centralized JDBC connection factory supporting dynamic cloud environment auto-detection (Railway / Docker / local fallback), driver registration (`com.mysql.cj.jdbc.Driver`), and connection pooling resilience.
* **Data Access Object (DAO) Layer:**
  * Implemented parameterized `PreparedStatement` queries across all DAOs to guarantee SQL injection immunity:
    * `TeacherDAO.java`: Teacher credential verification and lookup.
    * `StudentDAO.java`: Student CRUD, search by name/roll number, and roll number lookup for student login.
    * `EmployeeDAO.java`: Full JDBC CRUD operations for Experiment 5 (`saveEmployee`, `getEmployee`, `updateEmployee`, `deleteEmployee`).
    * `ClassSectionDAO.java`: Class section creation, retrieval, and cascade safety.
    * `TheoryContentDAO.java`: Inserting notes, chronological fetching, and note deletion.
    * `ExperimentDAO.java`: Fetching ordered experiment list and inserting custom experiment records.
    * `FeedbackDAO.java`: Storing student feedback submissions and executing multi-criteria filtered queries (`searchFeedback`).
* **Domain Entity Models / POJOs:**
  * Clean JavaBeans (`Teacher`, `Student`, `Employee`, `ClassSection`, `TheoryContent`, `Experiment`, `Feedback`) with private fields, full constructors, getters, and setters.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `database.sql` | Complete MySQL schema script, DDL tables, foreign keys, and seed records |
| `src/main/java/com/javalab/db/DBConnection.java` | Centralized JDBC connection manager with cloud environment auto-detection |
| `src/main/java/com/javalab/db/DBMigrator.java` | Automated startup runner applying zero-downtime non-destructive DDL migrations |
| `src/main/java/com/javalab/dao/TeacherDAO.java` | DAO for teacher account authentication and profile lookups |
| `src/main/java/com/javalab/dao/StudentDAO.java` | DAO for student CRUD, search queries, and roll number verification |
| `src/main/java/com/javalab/dao/EmployeeDAO.java` | DAO for Experiment 5 Employee CRUD operations (save, get, update, delete) |
| `src/main/java/com/javalab/dao/ClassSectionDAO.java` | DAO for class section insertion, retrieval, and deletion |
| `src/main/java/com/javalab/dao/TheoryContentDAO.java` | DAO for reading and publishing study material records |
| `src/main/java/com/javalab/dao/ExperimentDAO.java` | DAO for catalog retrieval and dynamic experiment insertion |
| `src/main/java/com/javalab/dao/FeedbackDAO.java` | DAO for storing student feedback submissions and filtered search queries |
| `src/main/java/com/javalab/model/Teacher.java` | Java Bean representing the Teacher entity |
| `src/main/java/com/javalab/model/Student.java` | Java Bean representing the Student entity |
| `src/main/java/com/javalab/model/Employee.java` | Java Bean representing the Employee entity (empid, empname, empno) |
| `src/main/java/com/javalab/model/ClassSection.java` | Java Bean representing the ClassSection entity |
| `src/main/java/com/javalab/model/TheoryContent.java` | Java Bean representing the TheoryContent entity |
| `src/main/java/com/javalab/model/Experiment.java` | Java Bean representing the Experiment entity |
| `src/main/java/com/javalab/model/Feedback.java` | Java Bean representing the Feedback entity |
| `src/main/java/com/javalab/util/PortalHelper.java` | Utility helper for safe JDBC resource cleanup and parsing |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 & 4 (Backend Controllers):**
  * Supplies domain models and handles persistence transactions for `LoginServlet`, `RegisterServlet`, `StudentServlet`, `ClassServlet`, `EmployeeServlet`, `ExperimentServlet`, `TheoryServlet`, and `FeedbackServlet`.
* **Integration with Member 1 & 2 (Frontend Views):**
  * Delivers strongly-typed collections of domain objects (`List<Student>`, `List<Experiment>`, `List<Feedback>`) consumed by JSP expression language (EL) and JSTL rendering.

---

## 4. Technical Architecture & Engineering Highlights

* **Automated Cloud-First DDL Migration:**
  * Zero-downtime database evolution via `DBMigrator` ensuring compatibility across local development and cloud production (Railway).
* **100% Prepared Statement Parameter Binding:**
  * Enforced parameterized SQL execution across every single database query, providing robust defense against SQL injection attacks.
* **Referential Integrity & 3NF Normalization:**
  * Architected a clean Third Normal Form (3NF) relational schema with explicit foreign key constraints, cascading guarantees, and indexed unique identifiers.
