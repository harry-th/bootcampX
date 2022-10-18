SELECT
    thing.cohort_name,
    thing.total
FROM
    (
        SELECT
            cohorts.name AS cohort_name,
            sum(
                assistance_requests.completed_at - assistance_requests.started_at
            ) AS total
        FROM
            assistance_requests
            JOIN students ON students.id = student_id
            JOIN cohorts ON cohort_id = cohorts.id
        GROUP BY
            cohorts.name
    ) AS thing
ORDER BY
    thing.total;