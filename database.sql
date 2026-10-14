-- ============================================================
-- Project: Java Lab Portal Database Schema (MySQL 8.x)
-- Team: Krishna Gupta, Karan Ramlakhani, Kanishq Chasta, Jayesh Sharma, Juned Hussain
-- Database: javalabdb
-- ============================================================

CREATE DATABASE IF NOT EXISTS javalabdb;
USE javalabdb;

DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS experiment;
DROP TABLE IF EXISTS theory_content;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS class_section;
DROP TABLE IF EXISTS teacher;

-- Table: teacher
CREATE TABLE teacher (
    id       INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    name     VARCHAR(100) NOT NULL
);

INSERT INTO teacher (username, password, name) VALUES
    ('teacher', 'teacher123', 'Ram Babu Buri');

-- Table: class_section
CREATE TABLE class_section (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO class_section (class_name) VALUES
    ('AI&DS-A'), ('AI&DS-B'), ('AI&DS-C'),
    ('CS-A'), ('CS-B'), ('CS-C'),
    ('IT');

-- Table: student
CREATE TABLE student (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    roll_number VARCHAR(30) UNIQUE NOT NULL,
    password    VARCHAR(100) DEFAULT 'student123',
    email       VARCHAR(100),
    class_id    INT,
    FOREIGN KEY (class_id) REFERENCES class_section(id)
);

INSERT INTO student (name, roll_number, password, email, class_id) VALUES
    ('Krishna Gupta', '24EARAD083', 'student123', 'krishna@aceit.ac.in', (SELECT id FROM class_section WHERE class_name = 'AI&DS-A')),
    ('Aman Sharma',   '24EARAD045', 'student123', 'aman@aceit.ac.in', (SELECT id FROM class_section WHERE class_name = 'CS-A'));

-- Table: employee (Experiment 5: Employee Registration Desk JDBC CRUD)
CREATE TABLE employee (
    empid   VARCHAR(50) PRIMARY KEY,
    empname VARCHAR(100) NOT NULL,
    empno   VARCHAR(50) NOT NULL
);

INSERT INTO employee (empid, empname, empno) VALUES
    ('EMP101', 'Krishna Gupta', '9876543210'),
    ('EMP102', 'Aman Sharma',   '9123456780'),
    ('EMP103', 'Rohan Verma',   '9988776655');

-- Table: theory_content
CREATE TABLE theory_content (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    title      VARCHAR(200) NOT NULL,
    content    TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: experiment
CREATE TABLE experiment (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    title         VARCHAR(200) NOT NULL,
    description   TEXT,
    type          VARCHAR(20) NOT NULL DEFAULT 'CUSTOM',
    live_url      VARCHAR(200),
    code_content  TEXT,
    order_no      INT DEFAULT 0
);

INSERT INTO experiment (title, description, type, live_url, order_no) VALUES
    ('Student Registration Form', 'Swing-style form (JLabel and JTextField) converted to web page.', 'BUILTIN', 'exp1.jsp', 1),
    ('User Selection Form', 'JCheckBox, JRadioButton, and JComboBox selection inputs.', 'BUILTIN', 'exp2.jsp', 2),
    ('MVC Calculator', 'MVC architecture calculator with Model, View, and Controller separation.', 'BUILTIN', 'exp3.jsp', 3),
    ('Drawing Shapes', 'Shapes and 2D graphics drawn live with HTML5 canvas.', 'BUILTIN', 'exp4.jsp', 4),
    ('Employee Registration Desk (JDBC CRUD)', 'Desktop Swing Employee CRUD converted to web with live MySQL persistence (Save, Search, Update, Delete, Clean).', 'BUILTIN', 'exp5.jsp', 5),
    ('Network Chat Application', 'TCP/IP socket communication simulation between client and server.', 'BUILTIN', 'exp6-preview.jsp', 6),
    ('RMI Calculator', 'RMI-based client-server arithmetic simulation.', 'BUILTIN', 'exp7-preview.jsp', 7),
    ('Servlet Input/Output', 'Form input processing and result calculation using Java Servlet.', 'BUILTIN', 'arithmetic.jsp', 8),
    ('JSP Login Validation', 'Standalone JSP form validating login credentials.', 'BUILTIN', 'exp9.jsp', 9),
    ('Online Student Feedback System', 'Course feedback and rating submission web application with role-based access.', 'BUILTIN', 'feedback.jsp', 10);

-- Table: feedback
CREATE TABLE feedback (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    student_name   VARCHAR(100) NOT NULL,
    course         VARCHAR(100) NOT NULL,
    faculty_name   VARCHAR(100),
    feedback_text  TEXT NOT NULL,
    rating         INT NOT NULL,
    submitted_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO feedback (student_name, course, faculty_name, feedback_text, rating) VALUES
    ('Krishna Gupta', 'Advanced Java Lab', 'Ram Babu Buri', 'Hands-on practicals and MVC concepts clearly demonstrated.', 5);
