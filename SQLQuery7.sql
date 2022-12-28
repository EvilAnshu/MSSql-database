create database collage;

use collage;
create table student
(
Sr int identity(1,1),
Name varchar(50),
Mobno bigint,
email_id varchar(100),
Total_fee money,
age int,
classroom_teacher int,
branch varchar(20),
year varchar(20),
);

insert into student values
('Deepak Singh',9887787676,'deepak123@gmail.com',15000,20,101,'C.S.','First')
,('Priya Soni',7887767878,'priya001@gmail.com',10000,23,101,'C.S.','First')
,('Sohan Khan',null,'002sohan@gmail.com',12000,25,102,'I.T.','Second')
,('Rohan Kumar',9887787876,'981rohankr@gmail.com',16000,20,103,'E.C.','Second')
,('Priyanka Dutt',null,'567865priya@gmail.com',15000,18,101,'E.C.','Third')
,('Siya Singh',7876766765,'singhsiya@gmail.com',16000,18,102,'I.T.','First')
,('Akanksha Mukharjee',6567788776,'mukharjeeak@gmail.com',15000,20,102,'I.T.','First');

select * from student where branch='C.S.';
select *, case when branch='C.S.' then 'Computer Science' when branch='I.T.' then 'Information Technology'  else 'Electronics Engineering' end from student;
select * from student where year='First' or year='Second';
select * from student where (year='First' or year='Second') and Total_fee>15000;
select count(Sr) from student;
select sum(Total_fee)  from student where branch='C.S.';
select branch,count(*) as No_of_Student from student group by branch;
select year,count(year) as Student_in_year from student group by year;
select branch,count(*) as No_of_Student,avg(Total_fee) as fee from student group by branch;
select branch,count(*) as Total_student,count(Mobno) as Number_Given from student group by branch;
select branch,count(*) as Total_student,count(Mobno) as Number_Given,count(*)-count(Mobno) as Number_not_Given from student group by branch;