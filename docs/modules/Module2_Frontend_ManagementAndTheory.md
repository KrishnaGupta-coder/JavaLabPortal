# Module 2: Frontend - " Management, Theory & Feedback UI

**Team Role:** Karan Ramlakhani - Member 2 (Frontend Developer 2)
**Layer:** View (Presentation Layer - " MVC)
**Technologies:** JSP, HTML5, CSS3, JavaScript (Form validation & DOM)

---

## 1. Overview & Responsibilities
This module covers all administrative data-entry forms, management tables, content delivery layouts, and the interactive student feedback interface. - **Student Management Interface:** Developed all views for full Student CRUD operations: - `students/studentList.jsp` - " Responsive tabular listing of students with class filters, search query parameters, and edit/delete action triggers. - `students/addStudent.jsp` - " Form to register new students with dynamic class dropdown selection and RTU Roll Number validation. - `students/updateStudent.jsp` - " Prefilled edit form for updating existing student details and class assignments. - **Class Section Management:** Created `classes/manageClasses.jsp` allowing teachers to create new branches/sections (`AI&DS-A`, `CS-A`, `IT`, etc.) and delete empty classes with confirmation dialogs. - **Theory & Study Material Views:** - `theory/theoryList.jsp` - " Clean article-style reader layout displaying published lecture and lab theory notes with timestamp chips. - `theory/addTheory.jsp` - " Teacher publishing form with multi-line text input and validation for adding new course material. - **Dynamic Experiment Creation UI:** `experiments/addExperiment.jsp` - " Administrative interface for teachers to expand the lab catalog with custom titles, descriptions, and code snippets. - **Feedback System UI:** - `feedback.jsp` - " Student submission form with interactive 1-5 star rating selector, course selection, and text review area. - `feedbackList.jsp` - " Tabular summary of all student reviews and rating badges.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `WebContent/students/studentList.jsp` | Student records table with search, class badges, and action buttons |
| `WebContent/students/addStudent.jsp` | New student registration form with class selection |
| `WebContent/students/updateStudent.jsp` | Pre-populated student modification form |
| `WebContent/classes/manageClasses.jsp` | Section creation and deletion management page |
| `WebContent/theory/theoryList.jsp` | Study material feed displaying published notes |
| `WebContent/theory/addTheory.jsp` | Teacher publishing interface for adding study notes |
| `WebContent/experiments/addExperiment.jsp` | Form for teacher to dynamically register custom experiments |
| `WebContent/feedback.jsp` | Student feedback submission form with rating stars |
| `WebContent/feedbackList.jsp` | Feedback responses list with rating badges and timestamps |

---

## 3. Integration with Other Team Members - **With Member 3 (Backend 1):** `studentList.jsp`, `addStudent.jsp`, and `updateStudent.jsp` submit requests to and render data dispatched by `StudentServlet.java`; `manageClasses.jsp` interacts with `ClassServlet.java`. - **With Member 4 (Backend 2):** `theoryList.jsp` and `addTheory.jsp` interact with `TheoryServlet.java`; `addExperiment.jsp` posts to `ExperimentServlet.java`; `feedback.jsp` and `feedbackList.jsp` communicate with `FeedbackServlet.java`. - **With Member 1 (Frontend 1):** Reuses the common `header.jspf` and `footer.jspf` layout for consistent aesthetics, CSS utility classes, and breadcrumbs.

---

## 4. Demo / Viva Talking Points
1. *"I developed all the data-driven presentation screens, including the student administration dashboard, class manager, theory content reader, and the feedback system."*
2. *"I designed user-friendly form controls such as prefilled update forms, dropdown select lists populated from backend models, and star rating widgets."*
3. *"The views cleanly separate presentation from business logic using JSTL and JSP EL expressions to render lists sent by the controller servlets."*


