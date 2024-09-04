-- Select the student ID, student name, subject name, and count of attended exams.
SELECT s.student_id,
       s.student_name,
       sub.subject_name,
       COUNT(e.subject_name) AS attended_exams -- Count of attended exams for each student-subject pair.
FROM Students s
-- Perform a cross join between Students and Subjects tables.
CROSS JOIN Subjects sub
-- Left join Examinations table to include all subjects, even if there are no matching records in Examinations.
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
-- Group by student ID, student name, and subject name to aggregate the counts.
GROUP BY s.student_id, s.student_name, sub.subject_name
-- Order the results by student ID and subject name.
ORDER BY s.student_id, sub.subject_name;