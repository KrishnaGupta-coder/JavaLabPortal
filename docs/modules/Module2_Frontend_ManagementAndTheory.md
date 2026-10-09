# Module 2: Frontend — Management, Theory & Feedback UI

**Team Role:** Karan Ramlakhani — Member 2 (Frontend Developer 2)  
**Layer:** View (Presentation Layer — MVC Architecture)  
**Technologies:** JSP, HTML5, CSS3, DOM Scripting, Modal Dialogs  

---

## 1. Overview & Responsibilities
This module is responsible for the administrative management interfaces, dynamic theory viewing workflows, and the interactive student feedback submission system.

* **Student & Class Management Interfaces:**
  * Developed `studentList.jsp` with responsive data tables, search filters, and contextual actions.
  * Created `addStudent.jsp` with client-side form validation and class section dropdown binding.
  * Implemented `updateStudent.jsp` with pre-filled form fields for updating existing student details.
  * Designed `manageClasses.jsp` for managing academic sections, batch capacity, and student allocations.
* **Study Material & Theory Content UI:**
  * Built `theoryList.jsp` to display categorized lab manuals, algorithms, and code examples.
  * Created `addTheory.jsp` enabling teachers to author and publish custom experiment theory.
* **Feedback System UI:**
  * Implemented `feedback.jsp` with a 5-star rating interface and structured text inputs for student course reviews.
  * Developed `feedbackList.jsp` displaying aggregated ratings and student feedback submissions.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/main/webapp/students/studentList.jsp` | Student directory with search, filter, and action controls |
| `src/main/webapp/students/addStudent.jsp` | Student registration form with roll number validation |
| `src/main/webapp/students/updateStudent.jsp` | Student profile update interface with pre-populated values |
| `src/main/webapp/classes/manageClasses.jsp` | Academic section and class batch management dashboard |
| `src/main/webapp/theory/theoryList.jsp` | Study material library displaying lab syllabus manuals |
| `src/main/webapp/theory/addTheory.jsp` | Teacher publishing interface for adding custom experiment theory |
| `src/main/webapp/feedback.jsp` | Interactive student lab review submission interface |
| `src/main/webapp/feedbackList.jsp` | Administrative feedback viewing and rating summary table |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 (Backend 1 — Management Controllers):**
  * Student management views (`studentList.jsp`, `addStudent.jsp`, `updateStudent.jsp`) communicate directly with `StudentServlet.java` via query parameters and form submissions.
  * `manageClasses.jsp` dispatches section creation and deletion commands to `ClassServlet.java`.
* **Integration with Member 4 (Backend 2 — Services):**
  * `theoryList.jsp` and `addTheory.jsp` route content requests through `TheoryServlet.java`.
  * `feedback.jsp` dispatches ratings and student reviews to `FeedbackServlet.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Idempotent Form Submissions & Client-Side Guard Rails:**
  * Implemented form submission locks to eliminate duplicate HTTP POST requests, safeguarding database integrity against accidental multi-clicks.
* **Asynchronous Modal Pre-Population:**
  * Streamlined administrative CRUD workflows by pre-loading student and section entities directly into update dialogs using standardized request-scope attributes.
* **Defensive Relational Deletion Warnings:**
  * Engineered front-end safety intercepts that alert administrators before initiating cascading class section deletions.
