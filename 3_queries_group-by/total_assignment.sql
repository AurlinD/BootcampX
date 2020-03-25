SELECT assignments.day, COUNT(assignments.duration)
FROM assignments
GROUP BY (assignments.day)
ORDER BY (assignments.day);
