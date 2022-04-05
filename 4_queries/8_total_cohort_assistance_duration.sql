SELECT cohorts.name as name, SUM(completed_at - created_at) as total_duration
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY total_duration;