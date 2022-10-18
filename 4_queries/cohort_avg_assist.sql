SELECT
    cohorts.name,
    avg(
        assistance_requests.completed_at - assistance_requests.started_at
    ) AS avgTIme
FROM
    assistance_requests
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohort_id = cohorts.id
GROUP BY
    cohorts.name
ORDER BY
    avgTime;