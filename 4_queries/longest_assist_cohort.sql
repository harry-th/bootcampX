SELECT
    max(thing.avgTime)
FROM
    (
        SELECT
            avg(
                assistance_requests.completed_at - assistance_requests.started_at
            ) AS avgTime
        FROM
            assistance_requests
            JOIN students ON student_id = students.id
            JOIN cohorts ON cohort_id = cohorts.id
        GROUP BY
            cohorts.name
    ) AS thing