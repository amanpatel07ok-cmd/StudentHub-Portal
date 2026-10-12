-- =========================================================
-- STUDENTHUB PORTAL - COMPLETE DATABASE SCHEMA
-- University: CHARUSAT (DEPSTAR) | Subject: ITUE203
-- Student: Aman Patel | Roll No: 25DCS076
-- =========================================================

CREATE DATABASE IF NOT EXISTS studenthub DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE studenthub;

-- 1. Students Table
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    
ame VARCHAR(100) NOT NULL,
    username VARCHAR(50) NULL,
    email VARCHAR(255) NOT NULL,
    mobile VARCHAR(20) NOT NULL,
    course VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    gender VARCHAR(10) NULL,
    password VARCHAR(255) NULL,
    ole VARCHAR(20) NOT NULL DEFAULT 'student',
    ttendance INT DEFAULT 90,
    esult VARCHAR(20) DEFAULT 'PASS',
    emember_selector CHAR(32) NULL,
    emember_token_hash CHAR(64) NULL,
    emember_expires_at DATETIME NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_students_username (username),
    UNIQUE KEY uq_students_email (email),
    UNIQUE KEY uq_students_remember_selector (emember_selector)
) ENGINE=InnoDB;

-- 2. Events Table
CREATE TABLE IF NOT EXISTS events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(150) NOT NULL,
    event_date DATE NOT NULL,
    description TEXT NULL,
    poster_path VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 3. Event Registrations Table
CREATE TABLE IF NOT EXISTS egistrations (
    egistration_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    event_id INT NOT NULL,
    egistration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT k_reg_student FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE,
    CONSTRAINT k_reg_event FOREIGN KEY (event_id) REFERENCES events (event_id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 4. Audit Logs Table (Practical 14)
CREATE TABLE IF NOT EXISTS udit_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    dmin_id INT NULL,
    ction VARCHAR(50) NOT NULL,
    entity_type VARCHAR(50) NOT NULL,
    entity_id INT NULL,
    details TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Seed Sample Events
INSERT INTO events (event_name, event_date, description, poster_path) VALUES
('Annual Tech Fest 2026', '2026-10-15', 'Flagship state-level technical competitions including Hackathons, Coding Marathons, and Robotics arena.', NULL),
('Student Orientation & Induction', '2026-08-10', 'Welcome program for newly admitted students introducing department faculty, laboratories, and curriculum.', NULL),
('Annual Sports Day', '2026-10-25', 'University-wide sports championships including Cricket, Football, Badminton, Athletics, and Chess.', NULL);

-- Seed Student (Aman Patel) & Admin Accounts
INSERT INTO students (
ame, username, email, mobile, course, year, gender, ole, ttendance, esult, password) VALUES
('Aman Patel', 'aman_076', '25dcs076@charusat.edu.in', '9876543210', 'DCS', 2, 'Male', 'student', 94, 'PASS', '$8Mrc7pROmFzX252NJcVuKLWIPxUfqy98bo5Q0p.bp..'),
('System Administrator', 'admin', 'admin@charusat.edu.in', '9876543211', 'Admin', 0, 'Other', 'admin', 100, 'PASS', '$8Mrc7pROmFzX252NJcVuKLWIPxUfqy98bo5Q0p.bp..');

-- Seed initial audit entry
INSERT INTO udit_logs (ction, entity_type, entity_id, details) VALUES
('system_init', 'portal', 1, 'StudentHub Portal initialized with RBAC and Audit system by Aman Patel (25DCS076)');