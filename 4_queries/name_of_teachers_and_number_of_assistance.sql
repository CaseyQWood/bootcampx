SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, count(teacher_id) AS total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.id, cohorts.name
ORDER BY teacher


-- SELECT sum(teacher_id) AS assistance 
-- FROM assistance_requests
-- WHERE 
-- GROUP BY teacher_id