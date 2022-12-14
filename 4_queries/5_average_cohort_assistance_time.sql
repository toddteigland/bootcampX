SELECT cohorts.name as cohort_name, avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY average_assistance_request_duration;