SELECT
    DISTINCT teachers.name,
    cohorts.name,
    count(assistance_requests.*)
FROM
    assistance_requests
    JOIN teachers ON teachers.id = teacher_id
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohort_id = cohorts.id
WHERE
    cohorts.name = 'JUL02'
GROUP BY
    teachers.name,
    cohorts.name