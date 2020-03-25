-- We need a list of all of the students that haven't added their Github username to their account yet, so that we can tell them to add it.

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id