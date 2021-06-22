SELECT cohorts.name AS cohorts_name,
count(students.id) AS student_count
FROM students 
JOIN cohorts 
ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY student_count
;
