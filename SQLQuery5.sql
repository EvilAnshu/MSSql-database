use HospitalDB;
create table Employee
(
EMPLOYEE_ID int identity(1,1),
FIRST_NAME varchar(50),
HIRE_DATE date,
JOB_ID varchar(50),
SALARY money,
);

insert into Employee values
('Siya','2012-06-06','IT_PROG',50000),
('Satyam','2017-08-09','SOFT_PROG',20000),
('Saurabh','2019-09-15','IT_PROG',100000),
('Seema','2012-06-06','IT_PROG',80000),
('Shivam','2019-08-15','IT_PROG',200000),
('Sandhya',null,'SOFT_PROG',100000),
('Shakshi','2021-09-25','SOFT_PROG',200000),
('Shilpa',null,'SOFT_PROG',60000),
('Shubham','2019-08-15','IT_PROG',33000)
;
select * from Employee where SALARY>40000;
select FIRST_NAME,JOB_ID from Employee where HIRE_DATE<'2018-01-01';
select * from Employee where JOB_ID='IT_PROG' and SALARY>100000;
select * from Employee where JOB_ID='IT_PROG' or HIRE_DATE>'2017-01-01';