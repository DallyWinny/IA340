--Q2.1
insert into student(s_email,s_name,major)
values('s1@jmu.edu','s1','IA'), 
	('s2@jmu.edu','s2','IA'),
	('s3@jmu.edu','s3','ISAT'),
	('s4@jmu.edu','s4','ISAT');


--Q2.2
insert into professor(p_email,p_name,office)
values('p1@jmu.edu','p1','o1'),
	('p2@jmu.edu','p2','02');
	

--Q2.3
insert into course(c_number,c_name,room,p_email)
values('c1','postgresql','r1','p1@jmu.edu'),
	('c2','mongodb','r2','p2@jmu.edu'),
	('c3','twitter','r1','p1@jmu.edu');

--Q2.4
insert into enroll(s_email,c_number)
values('s1@jmu.edu','c1'),
	('s2@jmu.edu','c1'),
	('s3@jmu.edu','c1'),
	('s4@jmu.edu','c2'),
	('s2@jmu.edu','c3'),
	('s3@jmu.edu','c3');

--Q2.5
insert into professor(p_email,p_name,office)
values('p3@jmu.edu','p3','o3')

insert into course(c_number,c_name,room,p_email)
values('c4','facebook','r1','p3@jmu.edu');

/*You need to modify the professor table first, because the course tables contains a foreign key of "p_email." If you try to use the p3 email before implementing it
into the professor table it will not work.*/

--Q2.6
update course
set p_email = 'p3@jmu.edu'
where p_email = 'p1@jmu.edu';

delete from professor
where p_email = 'p1@jmu.edu'

/* You need to update the course information before deleting the professor from the table. If you delete the professor first, the information that allows the ability
to update the course will be deleted as well.*/

--2.7
select * from enroll

--2.8
select c_number, count(*) as num_students
from enroll
group by c_number
order by num_students desc
limit 1

--2.9
select professor.p_name,
	   course.c_name
from professor
inner join course
on professor.p_email = course.p_email

--2.10
select professor.p_name, count(course.c_number) as num_courses_taught
from professor
inner join course on professor.p_email = course.p_email
group by professor.p_name
order by num_courses_taught desc
limit 1

