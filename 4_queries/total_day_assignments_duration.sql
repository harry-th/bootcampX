SELECT
    DAY,
    count(assignments.day),
    sum(duration) AS duration
FROM
    assignments
GROUP BY
    DAY
ORDER BY
    DAY;