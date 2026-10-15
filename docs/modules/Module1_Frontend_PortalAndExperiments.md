# Module 1: Frontend — Portal Shell, Auth & Experiments UI

**Team Role:** Krishna Gupta — Member 1 (Lead / Frontend Developer 1)  
**Layer:** View (Presentation Layer — MVC Architecture)  
**Technologies:** JSP, HTML5, CSS3, JavaScript (HTML5 Canvas & DOM API), Responsive Design Systems  

---

## 1. Overview & Responsibilities
This module is responsible for the overall portal design system, global layout orchestration, navigation shell, role-based authentication experience, and practical lab experiment simulations.

* **Global Portal Shell & Theming:**
  * Designed the responsive navigation bar, live user identity status badge, brand header (`header.jspf`), unified footer (`footer.jspf`), and centralized responsive CSS styling with modern typography and sleek dark-mode accents.
* **Role-Based Authentication UI:**
  * Developed `login.jsp` featuring a clean Teacher / Student tab toggle, input validation feedback, and credential handling.
* **Role-Adaptive Home Dashboard:**
  * Engineered `index.jsp` that dynamically renders role-specific action cards, lab metrics, and shortcut links depending on whether a Teacher or Student session is active.
* **Complete 10-Experiment Suite with Desktop Window Frames & Source Code Accordions:**
  * Implemented `experiments.jsp` to showcase the catalog of RTU syllabus experiments and dynamic custom submissions.
  * Developed browser-based practical simulations of standard Java concepts wrapped inside authentic OS desktop window titlebars (macOS / Windows style traffic light control dots):
    * `exp1.jsp` & `exp2.jsp`: Responsive HTML5 forms simulating Java Swing GUI components (`JLabel`, `JTextField`, `JCheckBox`, `JRadioButton`, `JComboBox`).
    * `exp3.jsp`: MVC Calculator presentation view supporting arithmetic expression inputs and clear result cards.
    * `exp4.jsp`: HTML5 2D Canvas rendering of geometric shapes using standard 2D context (`fillRect`, `drawRect`, `fillOval`).
    * `exp5.jsp`: **Experiment 5 (Employee Registration Desk JDBC CRUD Form)** — Interactive desktop HR management UI with live input fields (`Employee ID`, `Employee Name`, `Contact No`), SQL statement visualization, and action triggers (`Save`, `Search`, `Update`, `Delete`, `Clean`).
    * `exp6-preview.jsp` & `exp7-preview.jsp`: Client-side visual simulations for Java Network Socket Chat (featuring authentic avatar portraits `Krishna_Gupta.png` and `Ram_Babu_Buri_Sir.jpg`) and RMI client-server calculator.
    * `arithmetic.jsp`: Experiment 8 arithmetic computation interface with desktop window frame styling and error feedback.
    * `exp9.jsp`: Experiment 9 standalone JSP login validation demo styled with desktop window titlebar.
  * **Interactive Java Source Code Accordions:**
    * Every experiment (1 to 10) embeds expandable syntax-highlighted Java source code accordions (`<details><summary>View Java Source Code</summary><pre><code>...</code></pre></details>`) allowing direct browser-based inspection of underlying backend Java files (including the 4-file suite in Experiment 10).
  * **Sanitization & Academic Neutrality:**
    * Removed hardcoded database credentials and personal author strings across all experiment JSPs to maintain rigorous academic standards.
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
| `src/main/webapp/exp5.jsp` | Experiment 5: Employee Registration Desk JDBC CRUD form simulation |
| `src/main/webapp/exp6-preview.jsp` | Experiment 6: Client-side interactive simulation of Network Socket Chat |
| `src/main/webapp/exp7-preview.jsp` | Experiment 7: Client-side interactive simulation of RMI Calculator |
| `src/main/webapp/exp9.jsp` | Experiment 9: Standalone JSP login validation demo |
| `src/main/webapp/arithmetic.jsp` | Experiment 8: Arithmetic computation input form |
| `src/main/webapp/images/Krishna_Gupta.png` | Authentic student chat avatar asset for Network Socket Chat |
| `src/main/webapp/images/Ram_Babu_Buri_Sir.jpg` | Authentic faculty chat avatar asset for Network Socket Chat |

---

## 3. Cross-Module Integration Contracts

* **Integration with Member 3 (Backend 1 — Auth & Security):**
  * `login.jsp` routes authentication requests via HTTP POST to `LoginServlet.java`.
  * `header.jspf` inspects session attributes (`user`, `role`) established by `LoginServlet` and protected by `AccessControlFilter`, conditionally adjusting visible menu items.
* **Integration with Member 4 (Backend 2 — Experiments & Calculators):**
  * `exp3.jsp` dispatches mathematical expressions to `CalculatorServlet.java` and displays computed result models.
  * `exp5.jsp` posts Employee CRUD operations (`save`, `search`, `update`, `delete`, `clean`) to `EmployeeServlet.java`.
  * `arithmetic.jsp` posts operands and operations to `ArithmeticServlet.java`.
  * `experiments.jsp` dynamically renders collections of lab experiments dispatched by `ExperimentServlet.java`.

---

## 4. Technical Architecture & Engineering Highlights

* **Desktop-in-Browser Simulation Paradigm:**
  * Re-engineered legacy desktop-centric Java lab experiments into modular, responsive browser simulations utilizing HTML5 Canvas, DOM event listeners, and OS-styled window frames.
* **Live Code Transparency via Accordions:**
  * Embedded expandable syntax-highlighted Java source code blocks in every experiment, allowing examiners to inspect backend architecture directly during viva evaluation without external IDEs.
* **Dynamic Role-Adaptive Presentation Layer:**
  * Implemented session-aware view rendering in `header.jspf` that conditionally injects administrative management controls based on active authenticated claims without client-side state leakage.
