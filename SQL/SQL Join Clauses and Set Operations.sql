--SQL Join Clauses and Set Operations
--This is part of an assignment we had to do in our database class. The assignment was to create a database and then write queries to answer the questions below.
-- Scenario: Students, Enrollments, and Courses database

-- Drop existing tables for a clean start
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;

-- Create the tables
CREATE TABLE students ( 
  student_id INT PRIMARY KEY, 
  student_name VARCHAR(50), 
  age INT, 
  grade CHAR(1) 
); 

CREATE TABLE courses ( 
  course_id INT PRIMARY KEY, 
  course_name VARCHAR(50) 
); 

CREATE TABLE enrollments ( 
  enrollment_id INT PRIMARY KEY, 
  student_id INT, 
  course_id INT, 
  FOREIGN KEY (student_id) REFERENCES students(student_id), 
  FOREIGN KEY (course_id) REFERENCES courses(course_id) 
); 

-- Insert sample data
-- (Data remains the same)

-- Verify the data
SELECT * FROM students; 
SELECT * FROM courses; 
SELECT * FROM enrollments; 

--------------------------------------------------------------

-- JOIN Queries

-- Question 1: List students and their enrolled courses (standard INNER JOIN)
SELECT students.student_id, student_name, course_name 
FROM students 
INNER JOIN enrollments ON students.student_id = enrollments.student_id 
INNER JOIN courses ON enrollments.course_id = courses.course_id;

-- Question 2: Include students without any enrollments (LEFT JOIN)
SELECT students.student_id, student_name, course_name 
FROM students 
LEFT JOIN enrollments ON students.student_id = enrollments.student_id 
LEFT JOIN courses ON enrollments.course_id = courses.course_id;

-- Question 3: Count students enrolled in each course (LEFT JOIN + Aggregation)
SELECT course_name, COUNT(students.student_id) AS student_count 
FROM courses 
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id 
LEFT JOIN students ON enrollments.student_id = students.student_id 
GROUP BY course_name;

-- Question 4: Show all students, courses, and enrollments (FULL OUTER JOIN)
SELECT students.student_id, student_name, course_name 
FROM students 
FULL OUTER JOIN enrollments ON students.student_id = enrollments.student_id 
FULL OUTER JOIN courses ON enrollments.course_id = courses.course_id;

-- Question 5:  Isolate students *not* enrolled in any course 
SELECT students.student_id, student_name 
FROM students 
LEFT JOIN enrollments ON students.student_id = enrollments.student_id
WHERE enrollments.student_id IS NULL; 

-- Other Set Operations

-- Question 6: Unique list of student and course names (UNION)
SELECT student_name AS name FROM students 
UNION 
SELECT course_name AS name FROM courses;

-- Question 7: Include duplicates in the unique list (UNION ALL)
SELECT student_name AS name FROM students 
UNION ALL
SELECT course_name AS name FROM courses;

-- Cross Joins 

-- Question 8: All possible student-course combinations (CROSS JOIN)
SELECT student_name, course_name 
FROM students 
CROSS JOIN courses;

-- Question 9: All combinations except actual enrollments 
SELECT student_name, course_name 
FROM students CROSS JOIN courses 
LEFT JOIN enrollments ON students.student_id = enrollments.student_id AND courses.course_id = enrollments.course_id 
WHERE enrollments.student_id IS NULL; 
