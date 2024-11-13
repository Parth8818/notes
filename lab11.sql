-- Some comment that is ignored by the DB
SELECT * 
FROM courses


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


-- 1. Assignments for a Specific Course (COMP1234)
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- 2. Earliest Assignment Due Date
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- 3. Latest Assignment Due Date
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- 4. Assignments Due on a Specific Date (2024-10-08)
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- 5. Find All Assignments Due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- 6. Find the Most Recent Completed Assignment
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
