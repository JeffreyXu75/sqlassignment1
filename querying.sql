-- q1
SELECT 
	first_name, last_name
from
	student
;

--q2 

select
	instructor_id
from
	instructor
where
	tenured = 1
;

--q3
select 
student.first_name as student_first_name, 
student.last_name as student_last_name,
instructor.first_name as instructor_first_name,
instructor.last_name as instructor_last_name
from student
inner join
instructor on student.advisor_id=instructor.instructor_id
;

--q4
select
instructor.instructor_id,
instructor.first_name,
instructor.last_name
from instructor
LEFT JOIN 
student on instructor.instructor_id=student.advisor_id
where
student.advisor_id is null
;
--q5
select
instructor.instructor_id,
instructor.first_name,
instructor.last_name
from instructor
LEFT JOIN 
student on instructor.instructor_id=student.advisor_id
where
student.advisor_id is null
;
--q6
select
course.course_code,
course.course_name
from course
where course.course_code like "% 3___"
;
--q7
select
course.course_code,
instructor.first_name,
instructor.last_name,
course.num_credits
from
student_schedule
inner join 
course on student_schedule.course_id=course.course_id
inner join
instructor on course.instructor_id=instructor.instructor_id
where
student_schedule.student_id=1
;