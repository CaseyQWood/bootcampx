SELECT day, count(assignments.*) AS number_of_assingments, sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day