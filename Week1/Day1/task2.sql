-- Create the school_management database
CREATE DATABASE school_management;

-- Switch to the school_management database
USE school_management;

-- Create the students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
);

-- Create the courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    credits INT
);


-- Add a new column grade to the students table
ALTER TABLE students
ADD grade VARCHAR(2);

-- Change the data type of the phone_number column to VARCHAR(15)
ALTER TABLE students
MODIFY phone_number VARCHAR(15);


-- Insert records into the students table
INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES
('pratik', 'bagade', 'pratik.bagade@example.com', '123-456-7890', '2000-01-15', 'A'),
('raj', 'Sham', 'raj.sham@example.com', '987-654-3210', '2001-02-20', 'B'),
('soham', 'ravi', 'soham.ravi@example.com', '555-123-4567', '2002-03-25', 'A');

-- Insert records into the courses table
INSERT INTO courses (course_name, course_description, credits)
VALUES
('Mathematics', 'An introduction to mathematical concepts and techniques.', 3),
('English Literature', 'Study of English literary works and analysis.', 4),
('Computer Science', 'Introduction to programming and computer science principles.', 4),
('Physics', 'Basic principles of physics and their applications.', 3),
('History', 'Overview of world history from ancient times to the modern era.', 3);

-- Select all students' first names, last names, and email addresses
SELECT first_name, last_name, email
FROM students;


-- Drop the students table
DROP TABLE students;

-- Drop the school_management database
DROP DATABASE school_management;

