-- Concatenate course_name and semester with a hyphen
SELECT course_name || ' - ' || semester AS Course_Semester
FROM courses;


-- Find courses with labs scheduled on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';


-- List assignments with a due date after the current date
SELECT *
FROM assignments
WHERE due_date > date('now');


-- Count the number of assignments for each status
SELECT status, COUNT(*) AS Assignment_Count
FROM assignments
GROUP BY status;

-- Find the course with the longest name
SELECT course_name, LENGTH(course_name) AS Name_Length
FROM courses
ORDER BY Name_Length DESC
LIMIT 1;


-- Return all course names in uppercase
SELECT UPPER(course_name) AS Uppercase_Course_Name
FROM courses;


-- List assignments due in September
SELECT title
FROM assignments
WHERE due_date LIKE '____-09-%';

-- Find assignments where due_date is NULL
SELECT *
FROM assignments
WHERE due_date IS NULL;






-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

