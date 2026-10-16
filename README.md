# StudentHub Portal - Web Development Frameworks (ITUE203)

[![Charusat University](https://img.shields.io/badge/University-CHARUSAT-blue.svg)](https://www.charusat.ac.in)
[![Branch](https://img.shields.io/badge/Branch-CSE-green.svg)](https://github.com/amanpatel07ok-cmd/StudentHub-Portal)
[![Semester](https://img.shields.io/badge/Semester-3rd%20Odd%20(2026--27)-orange.svg)](https://github.com/amanpatel07ok-cmd/StudentHub-Portal)

## Student Identity & Academic Profile
- **Student Name:** Aman Patel
- **Roll Number:** 25DCS076
- **Department:** Computer Science & Engineering (CSE)
- **Institute:** Devang Patel Institute of Advance Technology and Research (DEPSTAR)
- **University:** Charotar University of Science and Technology (CHARUSAT)
- **Course / Subject:** Web Development Frameworks (ITUE203)
- **Academic Year:** 2026-27 [ODD Semester]
- **GitHub Username:** [amanpatel07ok-cmd](https://github.com/amanpatel07ok-cmd)
- **GitHub Repository:** [https://github.com/amanpatel07ok-cmd/StudentHub-Portal](https://github.com/amanpatel07ok-cmd/StudentHub-Portal)

---

## 1. Project Overview
**StudentHub** is an end-to-end full-stack academic management portal engineered to streamline communication, course navigation, exam results, timetables, and campus event registrations for students and faculty.

The project demonstrates progressive implementation across 15 structured practical modules:
1. **Frontend Architecture:** Semantic HTML5, CSS Grid, Flexbox, micro-animations, mobile-first responsive design, dark/light theme switcher, image slider, modal dialogs, and collapsible accordion FAQs.
2. **Client-Side Interactivity:** Pure ES6+ JavaScript, DOM selection & manipulation, regular expression-based multi-field validation, and asynchronous data rendering via the Fetch API with pagination, search, and sorting.
3. **Backend Engineering:** PHP server-side form processing, data sanitization, secure sessions, Role-Based Access Control (RBAC), session timeouts, password hashing (password_hash), CSRF token verification, and persistent remember-me tokens.
4. **Data Management:** MySQL relational schema design, PDO and MySQLi prepared statements, CSV file storage, poster image upload with MIME validation, and database audit logging.
5. **REST API & Asynchronous CRUD:** Decoupled JSON REST API consumed asynchronously via etch() without full-page reloads.

---

## 2. Complete Practical Syllabus Implementation Index

| Practical No. | Title & Topic | Technologies Used | Core Implementation Files |
| :---: | :--- | :--- | :--- |
| **1** | Project Initiation, Requirement Analysis, Sitemap, Wireframe, & Git Setup | Git, GitHub, Markdown | README.md, .gitignore, index.html, choose.html |
| **2** | Semantic HTML5 Pages with Accessibility-Ready Structure | Semantic HTML5, ARIA | index.html, choose.html, student-dashboard.html, student-profile.html, etc. (18 pages) |
| **3** | Responsive UI Design using CSS Grid, Flexbox, & Mobile Breakpoints | CSS3, Flexbox, CSS Grid | css/style.css |
| **4** | JavaScript DOM Manipulation, Event Handling, & UI Interactivity | ES6+ DOM, Events, LocalStorage | js/script.js, index.html, aq.html |
| **5** | Registration Form with Frontend Validation & Regex Error Handling | Regex, Form Events | js/registration.js, student-signup.html |
| **6** | Dynamic JSON Data Rendering using Fetch API, Search, Filter, & Pagination | Fetch API, JSON, Arrays | data/student.json, data/events.json, js/student.js, dmin-view.html |
| **7** | PHP Form Processing with Server-Side Validation & CSV File Storage | PHP, POST, CSV File I/O | student-signup.php, students-signups.csv |
| **8** | MySQL Schema Design, ER Model, PDO Connectivity, & Prepared Statements | MySQL, PDO, Prepared Statements | db.php, events.php, event-register.php, database/studenthub.sql |
| **9** | Secure User Registration with Database Insert, Duplicate Check, & Password Hashing | MySQLi, BCRYPT password_hash | db_mysqli.php, student-signup.php, database/Student-registartion-schema.sql |
| **10** | Secure Login/Logout with Sessions, Role-Based Access, Timeout, & Remember-Me Token | PHP Sessions, Cookies, RBAC | uth.php, uth-login.php, uth-logout.php, student-dashboard.php, dmin-dashboard.php |
| **11** | Student Management CRUD with Search, Filter, & MySQLi Statements | MySQLi, CRUD, CSRF | dmin-view.php |
| **12** | Event Management CRUD with Poster Upload & File Validation | File Upload, MIME / Size Check | dmin-events.php, database/event-management-schema.sql, uploads/event-posters/ |
| **13** | PHP JSON REST API and AJAX/Fetch-Based CRUD without Page Reload | REST API, Fetch, AJAX, JSON | dmin-events-api.php, js/admin-events.js |
| **14** | Admin Dashboard with Role-Based Access Control, Dynamic Menu, & Audit Log | RBAC, SQL Aggregation, Audit Trail | dmin-dashboard.php, uth.php, database/studenthub.sql |
| **15** | Final Integration, Testing, Documentation, GitHub Submission, & Local Deployment | Full-Stack Integration, XAMPP | Full Project Directory & Documentation |

---

## 3. Directory Structure
`	ext
StudentHub-Portal/
â”œâ”€â”€ css/
â”‚   â””â”€â”€ style.css                  # Core CSS design system (Grid, Flexbox, Dark Mode)
â”œâ”€â”€ js/
â”‚   â”œâ”€â”€ script.js                  # Theme toggle, slider, modal, notification, hamburger, FAQ
â”‚   â”œâ”€â”€ registration.js            # Client-side form regex validation
â”‚   â”œâ”€â”€ student.js                 # Fetch API, search, filter, sort & pagination for students
â”‚   â””â”€â”€ admin-events.js            # Asynchronous AJAX CRUD for events via Fetch API
â”œâ”€â”€ data/
â”‚   â”œâ”€â”€ student.json               # Seeded student records in JSON format
â”‚   â”œâ”€â”€ students.json              # Full student data collection
â”‚   â”œâ”€â”€ events.json                # Campus events data
â”‚   â””â”€â”€ faqs.json                  # FAQ entries
â”œâ”€â”€ database/
â”‚   â”œâ”€â”€ studenthub.sql             # Full MySQL database dump with seed data
â”‚   â”œâ”€â”€ Student-registartion-schema.sql # Migration for username and unique indexes
â”‚   â”œâ”€â”€ student-auth-schema.sql    # Migration for roles and remember-me tokens
â”‚   â””â”€â”€ event-management-schema.sql # Migration for event posters
â”œâ”€â”€ uploads/
â”‚   â””â”€â”€ event-posters/             # Directory for uploaded event promotional banners
â”œâ”€â”€ index.html                     # Main portal landing page
â”œâ”€â”€ choose.html                    # Role selection page (Student / Administrator)
â”œâ”€â”€ student_auth.html              # Student gateway (Login or Sign Up)
â”œâ”€â”€ student-login.html             # Student authentication form
â”œâ”€â”€ student-signup.html            # Student registration form
â”œâ”€â”€ student-dashboard.html         # Static student dashboard
â”œâ”€â”€ student-courses.html           # Enrolled courses listing
â”œâ”€â”€ student-assignments.html       # Assignments submission tracking
â”œâ”€â”€ student-profile.html           # Profile details for Aman Patel (25DCS076)
â”œâ”€â”€ student-attendance.html        # Subject-wise attendance breakdown (94%)
â”œâ”€â”€ student-result.html            # Semester 3 examination marks and SPI (9.35)
â”œâ”€â”€ student-timetable.html         # Class and laboratory timetable
â”œâ”€â”€ admin-login.html               # Administrator authentication form
â”œâ”€â”€ admin-dashboard.html           # Static admin overview
â”œâ”€â”€ admin-view.html                # Client-side JSON fetched student records
â”œâ”€â”€ contact-us.html                # Inquiry & technical support form
â”œâ”€â”€ faq.html                       # Interactive FAQ accordion page
â”œâ”€â”€ events.html                    # Public campus events list
â”œâ”€â”€ db.php                         # PDO database connection
â”œâ”€â”€ db_mysqli.php                  # MySQLi database connection
â”œâ”€â”€ auth.php                       # Session management, RBAC, CSRF, Remember-Me, and Audit
â”œâ”€â”€ auth-login.php                 # Backend login processor with password_verify()
â”œâ”€â”€ auth-logout.php                # Backend logout processor with CSRF check
â”œâ”€â”€ student-dashboard.php          # Protected student dashboard
â”œâ”€â”€ admin-dashboard.php            # Protected admin dashboard with real-time metrics & audit logs
â”œâ”€â”€ admin-view.php                 # Full student CRUD with search, filter, and pagination
â”œâ”€â”€ admin-events.php               # Event management with poster file uploads
â”œâ”€â”€ admin-events-api.php           # REST JSON API for event CRUD operations
â”œâ”€â”€ events.php                     # Dynamic database-driven events page
â”œâ”€â”€ event-register.php             # Event registration script using prepared statements
â”œâ”€â”€ student-signup.php             # Secure registration processor with password hashing & CSV backup
â”œâ”€â”€ students-signups.csv           # File-based CSV registration storage
â””â”€â”€ README.md                      # Project documentation and laboratory manual
`

---

## 4. Database Setup & Installation Guide

### Prerequisites
- **Web Server:** Apache (via XAMPP, WAMP, or LAMP)
- **PHP Version:** PHP 7.4 or PHP 8.0+
- **Database:** MySQL 5.7+ or MariaDB 10.4+
- **Browser:** Google Chrome, Microsoft Edge, or Mozilla Firefox

### Installation Steps
1. **Clone the Repository:**
   `ash
   git clone https://github.com/amanpatel07ok-cmd/StudentHub-Portal.git
   `
2. **Move to Server Root:**
   Copy the StudentHub-Portal folder into your local server root (e.g., C:/xampp/htdocs/StudentHub-Portal).

3. **Import Database:**
   - Open **phpMyAdmin** (http://localhost/phpmyadmin).
   - Create a new database named studenthub.
   - Click on the **Import** tab and upload database/studenthub.sql.
   - Click **Go** to create the tables and seed data.

4. **Launch Application:**
   Open your browser and navigate to:
   `	ext
   http://localhost/StudentHub-Portal/
   `

### Default Credentials
- **Student Account:**
  - **Username / Email:** 25dcs076@charusat.edu.in or man_076
  - **Password:** Aman@123
- **Administrator Account:**
  - **Username / Email:** dmin@charusat.edu.in or dmin
  - **Password:** Admin@123

---

## 5. Security & Architectural Best Practices
- **Password Security:** BCRYPT password hashing using password_hash() and constant-time verification using password_verify().
- **SQL Injection Prevention:** 100% of database queries execute through parameterized prepared statements via PDO and MySQLi.
- **Cross-Site Scripting (XSS) Mitigation:** All user-supplied data rendered into HTML is sanitized using htmlspecialchars(..., ENT_QUOTES, 'UTF-8').
- **Cross-Site Request Forgery (CSRF):** Protected form submissions and API calls incorporate cryptographically secure random session tokens validated via hash_equals().
- **Session Security:** Session cookie parameters enforced with httponly: true, samesite: Lax, and automated timeout destruction after 1800 seconds (30 minutes) of inactivity.
- **Traceability:** Administrative actions (student/event creations, updates, deletions) are recorded with timestamps in the udit_logs database table.

---

## 6. Commit History Log (Semester Progression)

| Date & Time | Practical | Git Commit Message |
| :--- | :---: | :--- |
| **03 Aug 2026, 14:22** | Practical 1 | Practical 1: Project Initiation, Requirement Analysis, Sitemap, and Initial Setup |
| **08 Aug 2026, 11:35** | Practical 2 | Practical 2: Semantic HTML5 Pages with Accessibility-Ready Structure |
| **14 Aug 2026, 15:45** | Practical 3 | Practical 3: Responsive UI Design using CSS Grid, Flexbox, and Mobile Breakpoints |
| **21 Aug 2026, 16:10** | Practical 4 | Practical 4: JavaScript DOM Manipulation, Event Handling, and UI Interactivity |
| **28 Aug 2026, 10:20** | Practical 5 | Practical 5: Registration Form with Frontend Validation and User-Friendly Error Handling |
| **04 Sep 2026, 14:50** | Practical 6 | Practical 6: Dynamic External JSON Data Rendering using Fetch API, Search, Filter, and Pagination |
| **11 Sep 2026, 11:15** | Practical 7 | Practical 7: PHP Form Processing with Server-Side Validation and CSV File Storage |
| **16 Sep 2026, 16:30** | Practical 8 | Practical 8: MySQL Schema Design, ER Model, PDO Connectivity, and Prepared Statements |
| **21 Sep 2026, 13:40** | Practical 9 | Practical 9: Secure User Registration with Database Insert, Duplicate Email Check, and Password Hashing |
| **25 Sep 2026, 15:25** | Practical 10 | Practical 10: Secure Login/Logout with Sessions, Role-Based Access, Timeout, and Remember-Me Token |
| **29 Sep 2026, 12:10** | Practical 11 | Practical 11: Student Management CRUD with Search, Filter, and MySQLi Statements |
| **03 Oct 2026, 17:05** | Practical 12 | Practical 12: Event Management CRUD with Poster Upload and File Validation |
| **08 Oct 2026, 14:15** | Practical 13 | Practical 13: PHP JSON API and AJAX/Fetch-Based CRUD without Page Reload |
| **12 Oct 2026, 16:45** | Practical 14 | Practical 14: Admin Dashboard with Role-Based Access Control, Dynamic Menu, and Audit Log |
| **16 Oct 2026, 11:30** | Practical 15 | Practical 15: Final Integration, Testing, Documentation, and Local Deployment |

---

*Submitted by **Aman Patel** (25DCS076) for the course Web Development Frameworks (ITUE203), Devang Patel Institute of Advance Technology and Research (DEPSTAR), Charotar University of Science and Technology (CHARUSAT).*