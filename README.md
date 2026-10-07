# Java Lab Portal - Product Version

**Team Members:**
- **Krishna Gupta** (Project Lead & Frontend Developer 1)
- **Karan Ramlakhani** (Frontend Developer 2)
- **Kanishq Chasta** (Backend Developer 1)
- **Jayesh Sharma** (Backend Developer 2)
- **Juned Hussain** (Database & Persistence Engineer)

This version turns the original major project into a proper
role-based product: teachers manage content and classes, students
log in with their roll number to view experiments and study
material, and the experiment list is database-driven so the teacher
can add new ones without a developer touching code.

## What's new in this version

1. **Teacher-added theory content** - TheoryServlet + theory/ pages. Teacher writes it, everyone can read it.
2. **Teacher-added experiments beyond the built-in 10** - the experiment table + ExperimentServlet + experiments/addExperiment.jsp.
3. **Experiments 6 & 7 visual previews** - exp6-preview.jsp and exp7-preview.jsp recreate Swing GUIs and are interactive via JavaScript.
4. **Role-based login** - login.jsp + LoginServlet + AccessControlFilter. Two roles: TEACHER and STUDENT.
5. **RTU Roll Number replaces email** in Student Management - and doubles as student login password.
6. **Course replaced with Class** - teacher creates classes (AI&DS-A, AI&DS-B, CS-A, IT) via ClassServlet, then assigns students.
7. **Students see a read-only view** - experiments and theory content only; no administrative access (enforced by AccessControlFilter).
8. **Product polish** - role-aware navigation with user chip, clean typography, hover states, badges distinguishing experiments.

## Login credentials

| Role | Username | Password |
|---|---|---|
| Teacher | teacher | teacher123 |
| Student | RTU Roll Number (e.g. 24EARAD083) | same RTU Roll Number |

Add more teacher accounts directly via SQL (INSERT INTO teacher ...) as needed.

## Architecture & Extensibility Note

The teacher can add a new experiment through the portal (title, description, and optional code text) and it appears immediately on the Experiments page as an educational card. Turning it into a live interactive web form requires a dedicated JSP/servlet.

## Team Architecture & Module Division (5 Members: 2 Frontend, 2 Backend, 1 Database)

The project follows a standard 3-Tier MVC (Model-View-Controller) architecture divided across our 5-member team:

| Module / Member | Role & Architectural Layer | Area of Responsibility | Files Handled |
|---|---|---|---|
| **Module 1**<br>*(Krishna Gupta - Lead)* | **Frontend Developer 1**<br>*(Presentation / View Layer)* | **Portal Shell, Auth & Experiments UI**<br>- Core layout & theme (header.jspf, footer.jspf)<br>- Role-based login screen & dashboard<br>- 10 Lab experiment views & Swing previews | login.jsp<br>index.jsp<br>header.jspf, ooter.jspf<br>experiments.jsp<br>exp1.jsp - exp4.jsp<br>exp6-preview.jsp, exp7-preview.jsp<br>exp9.jsp, rithmetic.jsp<br>error.jsp |
| **Module 2**<br>*(Karan Ramlakhani)* | **Frontend Developer 2**<br>*(Presentation / View Layer)* | **Management, Theory & Feedback UI**<br>- Student CRUD forms & list tables<br>- Class section management interface<br>- Theory notes reader & publishing form<br>- Add custom experiment modal<br>- Student feedback submission & review list | students/studentList.jsp<br>students/addStudent.jsp<br>students/updateStudent.jsp<br>classes/manageClasses.jsp<br>	heory/theoryList.jsp<br>	heory/addTheory.jsp<br>experiments/addExperiment.jsp<br>eedback.jsp<br>eedbackList.jsp |
| **Module 3**<br>*(Kanishq Chasta)* | **Backend Developer 1**<br>*(Controller & Filter Layer)* | **Authentication, Security & Core Management**<br>- Role-based authentication & session lifecycle<br>- Route protection & role security filter<br>- Student CRUD & Class section controllers<br>- Web deployment descriptor (web.xml) | LoginServlet.java<br>LogoutServlet.java<br>AccessControlFilter.java<br>StudentServlet.java<br>ClassServlet.java<br>web.xml |
| **Module 4**<br>*(Jayesh Sharma)* | **Backend Developer 2**<br>*(Controller & Business Logic)* | **Academic Hub, Experiments & Services**<br>- Experiment catalog & custom experiment handler<br>- Theory notes publishing & fetching logic<br>- Feedback processing controller<br>- MVC Calculator & Arithmetic business logic | ExperimentServlet.java<br>TheoryServlet.java<br>FeedbackServlet.java<br>CalculatorServlet.java<br>ArithmeticServlet.java<br>CalculatorModel.java |
| **Module 5**<br>*(Juned Hussain)* | **Database & Persistence Engineer**<br>*(Data Access & Model Layer)* | **Database Design & DAO / Model Architecture**<br>- Relational MySQL schema & seed data<br>- Centralized JDBC connection management<br>- Complete DAO layer with PreparedStatement<br>- Entity Model / Java Bean classes | database.sql<br>DBConnection.java<br>All DAOs: TeacherDAO.java, StudentDAO.java, ClassSectionDAO.java, TheoryContentDAO.java, ExperimentDAO.java, FeedbackDAO.java<br>All Models: Teacher.java, Student.java, ClassSection.java, TheoryContent.java, Experiment.java, Feedback.java |

---

## Project structure

`
JavaLabPortal/
|-- src/com/javalab/
|   |-- db/DBConnection.java
|   |-- model/
|   |   |-- Student.java
|   |   |-- ClassSection.java
|   |   |-- Teacher.java
|   |   |-- TheoryContent.java
|   |   |-- Experiment.java
|   |   \-- Feedback.java
|   |-- dao/
|   |   |-- StudentDAO.java
|   |   |-- ClassSectionDAO.java
|   |   |-- TeacherDAO.java
|   |   |-- TheoryContentDAO.java
|   |   |-- ExperimentDAO.java
|   |   \-- FeedbackDAO.java
|   |-- servlet/
|   |   |-- LoginServlet.java
|   |   |-- LogoutServlet.java
|   |   |-- StudentServlet.java
|   |   |-- ClassServlet.java
|   |   |-- TheoryServlet.java
|   |   |-- ExperimentServlet.java
|   |   |-- ArithmeticServlet.java
|   |   |-- CalculatorServlet.java
|   |   \-- FeedbackServlet.java
|   |-- calc/CalculatorModel.java
|   \-- filter/AccessControlFilter.java
|-- WebContent/
|   |-- login.jsp
|   |-- index.jsp
|   |-- header.jspf / footer.jspf
|   |-- experiments.jsp
|   |-- exp1.jsp - exp4.jsp
|   |-- exp6-preview.jsp
|   |-- exp7-preview.jsp
|   |-- exp9.jsp
|   |-- arithmetic.jsp / feedback.jsp / feedbackList.jsp
|   |-- students/ (studentList / addStudent / updateStudent)
|   |-- classes/manageClasses.jsp
|   |-- theory/ (theoryList.jsp, addTheory.jsp)
|   |-- experiments/addExperiment.jsp
|   |-- error.jsp
|   \-- WEB-INF/web.xml
\-- database.sql
`

## Setup

1. Run database.sql in MySQL Workbench to initialize tables and seed data.
2. Update DBConnection.java with your local MySQL credentials.
3. Deploy Dynamic Web Project on Apache Tomcat v9.0 runtime.
4. Open http://localhost:8080/JavaLabPortal/ in your browser.

## Demo Flow

1. Log in as Teacher (teacher / teacher123).
2. Manage Classes -> create a class section if needed.
3. Student Management -> add a student into that class.
4. Add Theory Content -> publish lecture or lab notes.
5. Add New Experiment -> register an additional experiment.
6. Logout, then log in as Student using their RTU roll number.
7. Verify student read-only view: access lab experiments and theory notes with administrative routes restricted.
