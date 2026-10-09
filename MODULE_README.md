# Module 1: Frontend - " Portal Shell, Auth & Experiments UI

**Team Role:** Krishna Gupta - Member 1 (Frontend Developer 1)
**Layer:** View (Presentation Layer - " MVC)
**Technologies:** JSP, HTML5, CSS3, JavaScript (Canvas & DOM)

---

## 1. Overview & Responsibilities
This module is responsible for the overall design system, global layout, navigation shell, role-based login experience, and interactive experiment demonstrations. - **Global Portal Shell & Theming:** Designed the responsive navigation bar, user identity pill/chip, brand header (`header.jspf`), footer (`footer.jspf`), and centralized CSS styles. - **Role-Based Authentication UI:** Developed `login.jsp` featuring the Teacher / Student tab toggle, validation alerts, and responsive login card. - **Home Dashboard:** Built `index.jsp` that displays role-tailored action cards, metrics, and shortcuts based on whether a Teacher or Student is logged in. - **Experiment Demonstrations & Mockups:** Implemented the UI for the 10 Java lab experiments: - `experiments.jsp` - " The experiment showcase hub that renders experiment cards dynamically. - `exp1.jsp` & `exp2.jsp` - " Interactive HTML5 web forms simulating Java Swing GUI components (`JLabel`, `JTextField`, `JCheckBox`, `JRadioButton`, `JComboBox`). - `exp3.jsp` - " MVC Calculator interface for expression input and result display. - `exp4.jsp` - " HTML5 2D Canvas rendering of geometric shapes (`fillRect`, `drawRect`, `fillOval`). - `exp6-preview.jsp` & `exp7-preview.jsp` - " Fully interactive client-side mockups simulating desktop Java TCP/IP Socket Chat and RMI Calculator with local JavaScript. - `exp9.jsp` - " Client-validated JSP Login demonstration. - `arithmetic.jsp` - " Form UI for arithmetic servlet calculations. - `error.jsp` - " Friendly global error page for 404/500 HTTP status handling.

---

## 2. Files Handled

| File Path | Description |
|---|---|
| `WebContent/login.jsp` | Portal authentication page with Teacher/Student mode toggle |
| `WebContent/index.jsp` | Role-aware landing dashboard with contextual quick actions |
| `WebContent/header.jspf` | Common navigation bar, session user badge, and core CSS bundle |
| `WebContent/footer.jspf` | Unified footer included across all portal pages |
| `WebContent/error.jsp` | Global application error handler view |
| `WebContent/experiments.jsp` | Lab experiments catalog hub displaying all live & custom experiments |
| `WebContent/exp1.jsp` | Experiment 1: Swing Form components simulation |
| `WebContent/exp2.jsp` | Experiment 2: Selection components (checkbox, radio, dropdown) |
| `WebContent/exp3.jsp` | Experiment 3: MVC Calculator view |
| `WebContent/exp4.jsp` | Experiment 4: 2D Graphics and Shapes drawing canvas |
| `WebContent/exp6-preview.jsp` | Experiment 6: Client-side interactive mockup of Network Socket Chat |
| `WebContent/exp7-preview.jsp` | Experiment 7: Client-side interactive mockup of RMI Calculator |
| `WebContent/exp9.jsp` | Experiment 9: Standalone JSP login validation demo |
| `WebContent/arithmetic.jsp` | Experiment 8: Arithmetic computation input form |

---

## 3. Integration with Other Team Members - **With Member 3 (Backend 1):** `login.jsp` posts credentials to `LoginServlet.java`; `header.jspf` reads session attributes set by `LoginServlet` and enforced by `AccessControlFilter`. - **With Member 4 (Backend 2):** `exp3.jsp` posts calculation requests to `CalculatorServlet.java`; `arithmetic.jsp` posts to `ArithmeticServlet.java`; `experiments.jsp` consumes experiment collections dispatched by `ExperimentServlet.java`.

---

## 4. Demo / Viva Talking Points
1. *"I was responsible for the presentation tier covering the portal shell, the responsive UI theme, and the interactive lab experiment interfaces."*
2. *"I converted desktop Java concepts (Swing components, Canvas graphics, Socket chat) into intuitive, responsive browser experiences using JSP, CSS3, and JavaScript."*
3. *"The UI dynamically adapts depending on the logged-in user role (Teacher vs Student), conditionally rendering management links and badges."*


