# Module 5: Database & Persistence Layer

**Team Role:** Juned Hussain — Member 5 (Database & Persistence Engineer)  
**Layer:** Data Access & Model / Persistence Layer (MVC Architecture)  
**Technologies:** MySQL 8.x, JDBC (Java Database Connectivity), PreparedStatements, SQL DDL/DML, Java JavaBeans / POJOs  

---

## 1. Overview & Responsibilities
This module is the persistence foundation of the application. It designs the relational schema, manages JDBC connectivity, and encapsulates all database transactions through the Data Access Object (DAO) pattern and POJO entity models.

* **Relational Schema Design & DDL (`database.sql`):**
  * Designed normalized relational tables:
    * `teacher`: Stores teacher credentials (`id`, `username`, `password`, `name`).
    * `class_section`: Manages academic classes/sections (`id`, `class_name`).
    * `student`: Enforces unique RTU roll numbers (`id`, `name`, `roll_number`, `class_id` foreign key referencing `class_section(id)`).
    * `theory_content`: Stores published lecture notes (`id`, `title`, `content`, `created_at`).
    * `experiment`: Stores the 10 built-in experiments plus dynamic custom experiments (`id`, `title`, `description`, `type`, `live_url`, `code_content`, `order_no`).
    * `feedback`: Persists student lab ratings and textual feedback (`id`, `student_name`, `course`, `feedback_text`, `rating`, `submitted_at`).
  * Authored seed data and migration scripts for immediate zero-config lab setup.
* **Connection Management:**
  * `DBConnection.java`: Centralized JDBC connection factory supporting driver loading (`com.mysql.cj.jdbc.Driver`), connection URL configuration, and dynamic cloud auto-detection (Railway / Docker / local fallback).
* **Data Access Object (DAO) Layer:**
  * Implemented parameterized `PreparedStatement` queries across all DAOs to guarantee SQL injection immunity:
    * `TeacherDAO.java`: Teacher credential verification and lookup.
    * `StudentDAO.java`: Student CRUD, search by name/roll number, and roll number lookup for student login.
    * `ClassSectionDAO.java`: Class section creation, retrieval, and cascade safety.
    * `TheoryContentDAO.java`: Inserting notes, chronological fetching, and note deletion.
    * `ExperimentDAO.java`: Fetching ordered experiment list and inserting custom experiment records.
    * `FeedbackDAO.java`: Recording feedback submissions and calculating summaries.
* **Domain Entity Models / POJOs:**
  * Designed clean JavaBeans (`Teacher`, `Student`, `ClassSection`, `TheoryContent`, `Experiment`, `Feedback`) with encapsulated private fields, constructors, getters, and setters.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `database.sql` | Complete MySQL schema script, DDL tables, foreign keys, and seed records |
| `src/main/java/com/javalab/db/DBConnection.java` | Centralized JDBC connection manager with cloud environment auto-detection |
| `src/main/java/com/javalab/dao/TeacherDAO.java` | DAO for teacher account authentication and profile lookups |
| `src/main/java/com/javalab/dao/StudentDAO.java` | DAO for student CRUD, search queries, and roll number verification |
| `src/main/java/com/javalab/dao/ClassSectionDAO.java` | DAO for class section insertion, retrieval, and deletion |
| `src/main/java/com/javalab/dao/TheoryContentDAO.java` | DAO for reading and publishing study material records |
| `src/main/java/com/javalab/dao/ExperimentDAO.java` | DAO for catalog retrieval and dynamic experiment insertion |
| `src/main/java/com/javalab/dao/FeedbackDAO.java` | DAO for storing student feedback submissions and list queries |
| `src/main/java/com/javalab/util/PortalHelper.java` | Utility helper for safe JDBC resource cleanup and parsing |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 & 4 (Backend Controllers):**
  * Supplies domain models and handles persistence transactions for `LoginServlet`, `StudentServlet`, `ClassServlet`, `ExperimentServlet`, `TheoryServlet`, and `FeedbackServlet`.
* **Integration with Member 1 & 2 (Frontend Views):**
  * Delivers strongly-typed collections of domain objects (`List<Student>`, `List<Experiment>`) consumed by JSP expression language (EL) and JSTL rendering.

---

## 4. Technical Architecture & Engineering Highlights

* **Thread-Safe Connection Factory & Resource Lifecycle:**
  * Standardized `try-with-resources` blocks across all DAO operations, ensuring automatic closure of `Connection`, `PreparedStatement`, and `ResultSet` objects to eliminate connection leaks.
* **100% Prepared Statement Parameter Binding:**
  * Enforced parameterized SQL execution across every single database query, providing robust defense against SQL injection attacks.
* **Referential Integrity & 3NF Normalization:**
  * Architected a clean Third Normal Form (3NF) relational schema with explicit foreign key constraints, cascading guarantees, and indexed unique identifiers.
