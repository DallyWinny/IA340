#Q1

sql = "select * from student"

  df = pandas.read_sql_query(sql,conn)
df[:]

#Q2

sql = """select professor.p_name,
	   course.c_name
from professor
inner join course
on professor.p_email = course.p_email"""

df = pandas.read_sql_query(sql,conn)
df[:]

#Q3

sql = """select c_number, count(*) as num_students
from enroll
group by c_number
order by num_students desc"""

df = pandas.read_sql_query(sql,conn)
df.plot.bar(y= 'num_students', x='c_number')

#Q4

sql = """select professor.p_name, count(course.c_number) as num_courses_taught
from professor
inner join course on professor.p_email = course.p_email
group by professor.p_name
order by num_courses_taught desc"""

df = pandas.read_sql_query(sql,conn)
df.plot.bar(y= 'num_courses_taught', x='p_name')

#Q5



