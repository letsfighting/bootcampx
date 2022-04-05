SELECT cohorts.name as name, AVG(completed_at - created_at) as average_assistance_time
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name;