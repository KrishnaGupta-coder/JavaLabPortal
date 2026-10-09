# Module 1: Frontend — Portal Shell, Auth & Experiments UI

**Team Role:** Krishna Gupta — Member 1 (Lead / Frontend Developer 1)  
**Layer:** View (Presentation Layer — MVC Architecture)  
**Technologies:** JSP, HTML5, CSS3, JavaScript (HTML5 Canvas & DOM API)  

---

## 1. Overview & Responsibilities
This module is responsible for the overall portal design system, global layout orchestration, navigation shell, role-based authentication experience, and practical lab experiment simulations.

* **Global Portal Shell & Theming:**
  * Designed the responsive navigation bar, user identity status badge, brand header (`header.jspf`), unified footer (`footer.jspf`), and centralized responsive CSS styling.
* **Role-Based Authentication UI:**
  * Developed `login.jsp` featuring a clean Teacher / Student tab toggle, input validation feedback, and credential handling.
* **Role-Adaptive Home Dashboard:**
  * Engineered `index.jsp` that dynamically renders role-specific action cards, lab metrics, and shortcut links depending on whether a Teacher or Student session is active.
* **Interactive Lab Experiment Hub:**
  * Implemented `experiments.jsp` to showcase the catalog of RTU syllabus experiments and dynamic submissions.
  * Developed web-based visual simulations of standard Java concepts:
    * `exp1.jsp` & `exp2.jsp`: Responsive HTML5 forms simulating Java Swing GUI components (`JLabel`, `JTextField`, `JCheckBox`, `JRadioButton`, `JComboBox`).
    * `exp3.jsp`: MVC Calculator presentation view supporting arithmetic expression inputs.
    * `exp4.jsp`: HTML5 2D Canvas rendering of geometric shapes using standard 2D context (`fillRect`, `drawRect`, `fillOval`).
    * `exp6-preview.jsp` & `exp7-preview.jsp`: Client-side visual simulations for Java Network Socket Chat and RMI client-server calculator.
    * `exp9.jsp`: Client-side validated JSP login demonstration.
    * `arithmetic.jsp`: Form interface for servlet-driven arithmetic operations.
    * `error.jsp`: Global HTTP 404/500 error display view.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `src/main/webapp/login.jsp` | Portal authentication view with Teacher/Student mode toggle |
| `src/main/webapp/index.jsp` | Role-aware landing dashboard with contextual quick actions |
| `src/main/webapp/header.jspf` | Unified navigation bar, session user badge, and core CSS bundle |
| `src/main/webapp/footer.jspf` | Unified footer template included across all portal pages |
| `src/main/webapp/error.jsp` | Global application error handler view |
| `src/main/webapp/experiments.jsp` | Lab experiments catalog hub displaying all live and custom experiments |
| `src/main/webapp/exp1.jsp` | Experiment 1: Java Swing Form components web simulation |
| `src/main/webapp/exp2.jsp` | Experiment 2: Form selection components (checkbox, radio, dropdown) |
| `src/main/webapp/exp3.jsp` | Experiment 3: MVC Calculator view |
| `src/main/webapp/exp4.jsp` | Experiment 4: 2D Graphics and shape drawing canvas |
| `src/main/webapp/exp6-preview.jsp` | Experiment 6: Client-side interactive simulation of Network Socket Chat |
| `src/main/webapp/exp7-preview.jsp` | Experiment 7: Client-side interactive simulation of RMI Calculator |
| `src/main/webapp/exp9.jsp` | Experiment 9: Standalone JSP login validation demo |
| `src/main/webapp/arithmetic.jsp` | Experiment 8: Arithmetic computation input form |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 (Backend 1 — Auth & Security):**
  * `login.jsp` routes authentication requests via HTTP POST to `LoginServlet.java`.
  * `header.jspf` inspects session attributes (`user`, `role`) established by `LoginServlet` and protected by `AccessControlFilter`, conditionally adjusting visible menu items.
* **Integration with Member 4 (Backend 2 — Experiments & Calculators):**
  * `exp3.jsp` dispatches mathematical expressions to `CalculatorServlet.java` and displays computed result models.
  * `arithmetic.jsp` posts operands and operations to `ArithmeticServlet.java`.
  * `experiments.jsp` dynamically renders collections of lab experiments dispatched by `ExperimentServlet.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Dynamic Role-Adaptive Presentation Layer:**
  * Implemented session-aware view rendering in `header.jspf` that conditionally injects administrative management controls based on active authenticated claims without client-side state leakage.
* **Web-Based Practical Simulation Paradigm:**
  * Re-engineered legacy desktop-centric Java lab experiments into modular, asynchronous web simulations utilizing HTML5 Canvas, DOM event listeners, and responsive JSP templates.
* **Strict Separation of Concerns:**
  * Decoupled presentation markup from backend business logic by strictly delegating state mutations and evaluations to Servlet controllers and DAO persistence layers.
