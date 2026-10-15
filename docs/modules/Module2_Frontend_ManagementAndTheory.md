# Module 2: Frontend — Management, Theory & Feedback UI

**Team Role:** Karan Ramlakhani — Member 2 (Frontend Developer 2)  
**Layer:** View (Presentation Layer — MVC Architecture)  
**Technologies:** JSP, HTML5, CSS3, DOM Scripting, Modal Dialogs, Client-Side Export Utilities  

---

## 1. Overview & Responsibilities
This module is responsible for administrative management interfaces, dynamic theory viewing workflows, and the interactive student feedback submission system.

* **Student & Class Management Interfaces:**
  * Developed `studentList.jsp` with responsive data tables, search filters, and contextual actions.
  * Created `addStudent.jsp` with client-side form validation and class section dropdown binding.
  * Implemented `updateStudent.jsp` with pre-filled form fields for updating existing student details.
  * Designed `manageClasses.jsp` for managing academic sections, batch capacity, and student allocations.
* **Study Material & Theory Content UI:**
  * Built `theoryList.jsp` to display categorized lab manuals, algorithms, and code examples.
  * Created `addTheory.jsp` enabling teachers to author and publish custom experiment theory.
* **Dynamic Custom Experiment Creation UI:**
  * Implemented `experiments/addExperiment.jsp` allowing faculty to dynamically expand the lab syllabus catalog.
* **Role-Based Feedback System Overhaul (Experiment 10):**
  * **Role-Adaptive Dual Dashboard (`feedback.jsp`):**
    * *Public / Unauthenticated Mode:* Renders a tabbed authentication card providing Experiment 10 standalone Login and Student-only Registration. Includes an active security notice regarding single-device session lock. Faculty registration is disabled here to protect administrative hierarchy.
    * *Student Mode:* Interactive lab feedback submission form. Features synchronized subject dropdown (e.g., `AI&DS`, `Java Programming Lab`, `Database Management`) and faculty selector (e.g., `Er. Ram Babu Buri`), 5-star interactive rating gauge, and constructive review input.
    * *Student Privacy Guarantee:* Students are strictly prohibited from viewing peer reviews or aggregate feedback records. Upon submission, a clean confirmation card is displayed; feedback records remain confidential and teacher-exclusive.
    * *Teacher Mode:* Executive summary dashboard displaying total reviews, average star rating badge, rating distribution, and quick action buttons to filter and audit records.
    * *Embedded Java Source Code Accordions:* Features expandable source accordions for all 4 core classes: `Feedback.java`, `FeedbackDAO.java`, `FeedbackServlet.java`, and `ActiveSessionManager.java`.
  * **Feedback Audit & Analytics Dashboard (`feedbackList.jsp`):**
    * Comprehensive review table displaying student names, course, faculty member, star rating, feedback remarks, and submission timestamps.
    * Dynamic search and filter toolbar: filter by faculty name, subject/course, and star rating.
    * Action Tools: One-click "Export to Excel (.CSV)" via backend streaming, and "Print / Save as PDF" with print-optimized CSS layout.

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
| `src/main/webapp/experiments/addExperiment.jsp` | Faculty form to dynamically register custom experiments |
| `src/main/webapp/feedback.jsp` | Role-adaptive Experiment 10 dashboard (Student form vs Teacher overview) |
| `src/main/webapp/feedbackList.jsp` | Teacher-exclusive feedback review table with search, CSV export, and print |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 (Backend 1 — Management Controllers):**
  * Student management views (`studentList.jsp`, `addStudent.jsp`, `updateStudent.jsp`) communicate directly with `StudentServlet.java` via query parameters and form submissions.
  * `manageClasses.jsp` dispatches section creation and deletion commands to `ClassServlet.java`.
* **Integration with Member 4 (Backend 2 — Services):**
  * `theoryList.jsp` and `addTheory.jsp` route content requests through `TheoryServlet.java`.
  * `experiments/addExperiment.jsp` posts to `ExperimentServlet.java`.
  * `feedback.jsp` and `feedbackList.jsp` route requests through `FeedbackServlet.java` (handling `exp10_login`, `exp10_register`, `submit`, `list`, `exportCsv`).
* **Integration with Member 1 (Frontend 1):**
  * Reuses common `header.jspf` and `footer.jspf` layout for consistent aesthetics, CSS utility classes, and navigation breadcrumbs.

---

## 4. Technical Architecture & Engineering Highlights

* **Student Privacy & Role Boundary Enforcement:**
  * Strictly decoupled student feedback submission from review auditing. Students receive instant confirmation without access to peer records, while teachers gain comprehensive review tools.
* **Multi-Format Reporting & Export:**
  * Implemented browser-side print formatting alongside server-streamed RFC 4180 CSV export for instant Excel evaluation.
* **Idempotent Form Submissions & Client-Side Guard Rails:**
  * Implemented form submission locks to eliminate duplicate HTTP POST requests, safeguarding database integrity against accidental multi-clicks.
