const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
let argies = process.argv.slice(2);
pool.query(`SELECT
DISTINCT teachers.name as teacherName,
cohorts.name as cohortName,
count(assistance_requests.*)
FROM
assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE
cohorts.name = '${argies[0]}'
GROUP BY
teachers.name,
cohorts.name`).then((res)=>{
  console.log('connected');
  res.rows.forEach((item) => {
    console.log(item.cohortname + ':',item.teachername);
  });
})
  .catch(err => console.error('query error', err.stack));
