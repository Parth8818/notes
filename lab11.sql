SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

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


-- Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


-- Earliest Assignment Due Date
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;


-- Latest Assignment Due Date
SELECT MAX(due_date) AS latest_due_date
FROM assignments;

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


-- Find the Most Recent Completed Assignment
SELECT MAX(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';

