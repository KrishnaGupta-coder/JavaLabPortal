# Java Lab Portal — Product Version

**Team Members:**
- **Krishna Gupta** (Project Lead & Frontend Developer 1)
- **Jayesh Sharma** (Frontend Developer 2)
- **Kanishq Chasta** (Backend Developer 1)
- **Juned Hussain** (Backend Developer 2)
- **Karan Ramlakhani** (Database & Persistence Engineer)

This version turns the original major project into a proper
role-based product: teachers manage content and classes, students
log in with their roll number to view experiments and study
material, and the experiment list is database-driven so the teacher
can add new ones without a developer touching code.

## What's new in this version

1. **Teacher-added theory content** — `TheoryServlet` + `theory/` pages. Teacher writes it, everyone can read it.
2. **Teacher-added experiments beyond the built-in 10** — the `experiment` table + `ExperimentServlet` + `experiments/addExperiment.jsp`. See the honest limitation noted below.
3. **Experiments 6 & 7 visual previews** — `exp6-preview.jsp` and `exp7-preview.jsp` recreate the actual Swing GUIs and are locally interactive via JavaScript, so a class can see and "use" them without two JVMs.
4. **Role-based login** — `login.jsp` + `LoginServlet` + `AccessControlFilter`. Two roles: `TEACHER` and `STUDENT`.
5. **RTU Roll Number replaces email** in Student Management — and doubles as the student's login password.
6. **Course replaced with Class** — teacher creates classes (`AI&DS-A`, `AI&DS-B`, `AI&DS-C`, `CS-A`, `CS-B`, `CS-C`, `IT`) via `ClassServlet`, then assigns students into them.
7. **Students see a read-only view** — experiments and theory content only; no student-management, class-management, or content-creation access (enforced by `AccessControlFilter`, not just hidden links).
8. **Product polish** — real login screen, role-aware navigation with a user chip, refreshed color system and typography, hover states, badges distinguishing live/preview/custom experiments.

## Login credentials

| Role | Username | Password |
|---|---|---|
| Teacher | `teacher` | `teacher123` |
| Student | their RTU Roll Number (e.g. `24EARAD083`) | same RTU Roll Number |

Add more teacher accounts directly via SQL (`INSERT INTO teacher ...`) — there's no self-service teacher signup, intentionally, since only the instructor should be able to create one.

## An honest limitation on "add more programs"

The teacher can add a new experiment through the portal (title,
description, and optional code/instructions text) and it appears
immediately on the Experiments page. What it **cannot** do is
automatically become a new *live, running* page — that would mean
deploying arbitrary server-side code at runtime, which no ordinary
web app does safely. A teacher-added experiment shows as a
description card (and code block, if provided); turning it into an
actual interactive page still requires a developer to build a JSP/
servlet for it, the same way `exp1.jsp` through the feedback system
were built. This is a real architectural boundary, not a bug to fix
later.

## Team Architecture & Module Division (5 Members: 2 Frontend, 2 Backend, 1 Database)

The project follows a standard **3-Tier MVC (Model-View-Controller)** architecture divided across our 5-member team:

| Module / Member | Role & Architectural Layer | Area of Responsibility | Files Handled |
|---|---|---|---|
| **Module 1**<br>*(Krishna Gupta — Lead)* | **Frontend Developer 1**<br>*(Presentation / View Layer)* | **Portal Shell, Auth & Experiments UI**<br>• Core layout & theme (`header.jspf`, `footer.jspf`)<br>• Role-based login screen & dashboard<br>• 10 Lab experiment views & Swing previews | `login.jsp`<br>`index.jsp`<br>`header.jspf`, `footer.jspf`<br>`experiments.jsp`<br>`exp1.jsp` - `exp4.jsp`<br>`exp6-preview.jsp`, `exp7-preview.jsp`<br>`exp9.jsp`, `arithmetic.jsp`<br>`error.jsp` |
| **Module 2**<br>*(Jayesh Sharma)* | **Frontend Developer 2**<br>*(Presentation / View Layer)* | **Management, Theory & Feedback UI**<br>• Student CRUD forms & list tables<br>• Class section management interface<br>• Theory notes reader & publishing form<br>• Add custom experiment modal<br>• Student feedback submission & review list | `students/studentList.jsp`<br>`students/addStudent.jsp`<br>`students/updateStudent.jsp`<br>`classes/manageClasses.jsp`<br>`theory/theoryList.jsp`<br>`theory/addTheory.jsp`<br>`experiments/addExperiment.jsp`<br>`feedback.jsp`<br>`feedbackList.jsp` |
| **Module 3**<br>*(Kanishq Chasta)* | **Backend Developer 1**<br>*(Controller & Filter Layer)* | **Authentication, Security & Core Management**<br>• Role-based authentication & session lifecycle<br>• Route protection & role security filter<br>• Student CRUD & Class section controllers<br>• Web deployment descriptor (`web.xml`) | `LoginServlet.java`<br>`LogoutServlet.java`<br>`AccessControlFilter.java`<br>`StudentServlet.java`<br>`ClassServlet.java`<br>`web.xml` |
| **Module 4**<br>*(Juned Hussain)* | **Backend Developer 2**<br>*(Controller & Business Logic)* | **Academic Hub, Experiments & Services**<br>• Experiment catalog & custom experiment handler<br>• Theory notes publishing & fetching logic<br>• Feedback processing controller<br>• MVC Calculator & Arithmetic business logic | `ExperimentServlet.java`<br>`TheoryServlet.java`<br>`FeedbackServlet.java`<br>`CalculatorServlet.java`<br>`ArithmeticServlet.java`<br>`CalculatorModel.java` |
| **Module 5**<br>*(Karan Ramlakhani)* | **Database & Persistence Engineer**<br>*(Data Access & Model Layer)* | **Database Design & DAO / Model Architecture**<br>• Relational MySQL schema & seed data<br>• Centralized JDBC connection management<br>• Complete DAO layer with `PreparedStatement`<br>• Entity Model / Java Bean classes | `database.sql`<br>`DBConnection.java`<br>All DAOs: `TeacherDAO.java`, `StudentDAO.java`, `ClassSectionDAO.java`, `TheoryContentDAO.java`, `ExperimentDAO.java`, `FeedbackDAO.java`<br>All Models: `Teacher.java`, `Student.java`, `ClassSection.java`, `TheoryContent.java`, `Experiment.java`, `Feedback.java` |

---

## Project structure

```
JavaLabPortal/
├── src/com/javalab/
│   ├── db/DBConnection.java
│   ├── model/
│   │   ├── Student.java        (rollNumber + classId, no email/course)
│   │   ├── ClassSection.java    (NEW)
│   │   ├── Teacher.java         (NEW)
│   │   ├── TheoryContent.java   (NEW)
│   │   ├── Experiment.java      (NEW - DB-driven experiment list)
│   │   └── Feedback.java
│   ├── dao/
│   │   ├── StudentDAO.java      (updated + getStudentByRollNumber for login)
│   │   ├── ClassSectionDAO.java (NEW)
│   │   ├── TeacherDAO.java      (NEW)
│   │   ├── TheoryContentDAO.java(NEW)
│   │   ├── ExperimentDAO.java   (NEW)
│   │   └── FeedbackDAO.java
│   ├── servlet/
│   │   ├── LoginServlet.java    (NEW - role-based auth)
│   │   ├── LogoutServlet.java   (NEW)
│   │   ├── StudentServlet.java  (updated, teacher-only)
│   │   ├── ClassServlet.java    (NEW, teacher-only)
│   │   ├── TheoryServlet.java   (NEW, add=teacher-only, list=everyone)
│   │   ├── ExperimentServlet.java (NEW, add=teacher-only, list=everyone)
│   │   ├── ArithmeticServlet.java
│   │   ├── CalculatorServlet.java
│   │   └── FeedbackServlet.java
│   ├── calc/CalculatorModel.java
│   └── filter/AccessControlFilter.java (NEW - enforces login + role rules everywhere)
├── WebContent/
│   ├── login.jsp                (NEW - real system login, role toggle)
│   ├── index.jsp                (role-aware dashboard)
│   ├── header.jspf / footer.jspf(role-aware nav, refreshed CSS)
│   ├── experiments.jsp          (now reads from the database)
│   ├── exp1.jsp - exp4.jsp
│   ├── exp6-preview.jsp         (NEW - interactive chat mockup)
│   ├── exp7-preview.jsp         (NEW - interactive calculator mockup)
│   ├── exp9.jsp                 (renamed from the old login.jsp demo)
│   ├── arithmetic.jsp / feedback.jsp / feedbackList.jsp
│   ├── students/ (studentList / addStudent / updateStudent - updated fields)
│   ├── classes/manageClasses.jsp (NEW)
│   ├── theory/ (theoryList.jsp, addTheory.jsp) (NEW)
│   ├── experiments/addExperiment.jsp (NEW)
│   ├── error.jsp
│   └── WEB-INF/web.xml           (welcome file is now login.jsp)
└── database.sql                  (full new schema, replaces the old one)
```


## Setup

Same Eclipse + Tomcat + MySQL setup as before (Dynamic Web Project,
Tomcat runtime, MySQL Connector/J jar in `WEB-INF/lib`) — see the
earlier version of this README if you need the step-by-step, it
hasn't changed. What's different this time:

1. **Run the new `database.sql`** — it **drops and recreates** the
   `student`, `class_section`, `teacher`, `theory_content`, and
   `experiment` tables (email/course are gone for good). If you have
   existing student data you want to keep, export it first and
   re-insert with roll numbers and class IDs afterward.
2. Update `DBConnection.java` with your MySQL username/password as
   before.
3. Deploy and open `http://localhost:8080/JavaLabPortal/` — it will
   land on the login page automatically (`AccessControlFilter`
   redirects any unauthenticated request there).

## Demo flow

1. **Log in as Teacher** (`teacher` / `teacher123`).
2. **Manage Classes** → create a class if none exist yet.
3. **Student Management** → add a student into that class (their
   roll number becomes their password).
4. **Add Theory Content** → publish some study material.
5. **Add New Experiment** → add an 11th experiment to show the
   "product" extensibility.
6. **Logout**, then **log in as that Student** using their roll
   number as both username and password.
7. As the student: open **Experiments** (try #6 and #7's visual
   previews), open **Theory Content** — notice there's no Student
   Management or Manage Classes link, and typing those servlet URLs
   directly redirects back to the dashboard (that's
   `AccessControlFilter` doing its job, not just a hidden button).
