SELECT s.student_id, s.student_name, sub.subject_name, count(e.subject_name) attended_exams 
FROM Students s
CROSS JOIN Subjects sub
left join examinations e
on e.student_id=s.student_id and
e.subject_name=sub.subject_name
group by student_id, subject_name
order by student_id
