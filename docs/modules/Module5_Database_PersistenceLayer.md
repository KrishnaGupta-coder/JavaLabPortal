# Module 5: Database & Persistence Layer

**Team Role:** Juned Hussain - Member 5 (Database & Persistence Engineer)
**Layer:** Data Access & Model / Persistence Layer (MVC)
**Technologies:** MySQL 8.x, JDBC (Java Database Connectivity), PreparedStatements, SQL DDL/DML, Java POJO / Beans

---

## 1. Overview & Responsibilities
This module is the backbone of the entire application. It designs the relational schema, manages JDBC connectivity, and encapsulates all database transactions through the Data Access Object (DAO) pattern and POJO entity models. - **Relational Schema Design & DDL (`database.sql`):** - Designed normalized relational tables: - `teacher` - " Stores teacher credentials (`id`, `username`, `password`, `name`). - `class_section` - " Manages academic classes/sections (`id`, `class_name`). - `student` - " Enforces unique RTU roll numbers (`id`, `name`, `roll_number`, `class_id` foreign key referencing `class_section(id)`). - `theory_content` - " Stores published lecture notes (`id`, `title`, `content`, `created_at`). - `experiment` - " Stores the 10 built-in experiments plus dynamic custom experiments (`id`, `title`, `description`, `type`, `live_url`, `code_content`, `order_no`). - `feedback` - " Persists student lab ratings and textual feedback (`id`, `student_name`, `course`, `feedback_text`, `rating`, `submitted_at`). - Authored seed data and migration scripts for immediate zero-config lab setup. - **Connection Management:** - `DBConnection.java` - " Centralized singleton-style JDBC connection factory that loads the MySQL Connector driver (`com.mysql.cj.jdbc.Driver`), manages database URLs (`jdbc:mysql://localhost:3306/javalabdb`), handles connection pooling, and handles connection teardown safely. - **Data Access Object (DAO) Layer:** - Implemented SQL statements with parameterized `PreparedStatement` across all DAOs to guarantee SQL injection immunity: - `TeacherDAO.java` - " Teacher credential verification and lookup. - `StudentDAO.java` - " Student CRUD, search by name/roll number, and roll number lookup for student login. - `ClassSectionDAO.java` - " Class section creation, retrieval, and cascade safety. - `TheoryContentDAO.java` - " Inserting notes, chronological fetching, and note deletion. - `ExperimentDAO.java` - " Fetching ordered experiment list and inserting custom experiment records. - `FeedbackDAO.java` - " Recording feedback submissions and calculating summaries. - **Domain Entity Models / POJOs:** - Designed clean JavaBeans (`Teacher`, `Student`, `ClassSection`, `TheoryContent`, `Experiment`, `Feedback`) with encapsulated private fields, constructors, getters, and setters.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `database.sql` | Complete MySQL schema script, DDL tables, foreign keys, and seed records |
| `src/com/javalab/db/DBConnection.java` | Centralized JDBC connection manager loading driver and providing connections |
| `src/com/javalab/dao/TeacherDAO.java` | DAO for teacher account authentication and profile lookups |
| `src/com/javalab/dao/StudentDAO.java` | DAO for student CRUD, search queries, and roll number verification |
| `src/com/javalab/dao/ClassSectionDAO.java` | DAO for class section insertion, retrieval, and deletion |
| `src/com/javalab/dao/TheoryContentDAO.java` | DAO for reading and publishing study material records |
| `src/com/javalab/dao/ExperimentDAO.java` | DAO for catalog retrieval and dynamic experiment insertion |
| `src/com/javalab/dao/FeedbackDAO.java` | DAO for storing student feedback submissions and list queries |
| `src/com/javalab/model/Teacher.java` | Java Bean representing the Teacher entity |
| `src/com/javalab/model/Student.java` | Java Bean representing the Student entity |
| `src/com/javalab/model/ClassSection.java` | Java Bean representing the ClassSection entity |
| `src/com/javalab/model/TheoryContent.java` | Java Bean representing the TheoryContent entity |
| `src/com/javalab/model/Experiment.java` | Java Bean representing the Experiment entity |
| `src/com/javalab/model/Feedback.java` | Java Bean representing the Feedback entity |

---

## 3. Integration with Other Team Members - **With Members 3 & 4 (Backend 1 & 2):** Serves as the persistence engine for all backend servlets (`LoginServlet`, `StudentServlet`, `ClassServlet`, `TheoryServlet`, `ExperimentServlet`, `FeedbackServlet`), abstracting SQL complexity behind clean Java methods. - **With Members 1 & 2 (Frontend 1 & 2):** Models provide standardized data transfer objects (DTOs) passed to JSP pages via request attributes.

---

## 4. Demo / Viva Talking Points
1. *"I designed and implemented the database and persistence tier, consisting of the relational MySQL schema (`database.sql`), the JDBC connection layer, and the complete DAO/Model architecture."*
2. *"I followed the Data Access Object (DAO) pattern to strictly isolate database interactions from business logic. Every query uses `PreparedStatement` to ensure prevention against SQL injection attacks."*
3. *"The schema maintains relational integrity through foreign keys - "for instance, linking the `student` table to `class_section` via `class_id`."*


