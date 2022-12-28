select * from student;
select * from fee_payment;
select * from teachers;

select s.Sr,s.Name,s.Mobno,s.email_id,s.Total_fee,s.age,t.Name as teacher_name , s.branch,s.year from student s inner join teachers t on s.classroom_teacher=t.SR;
select * from student cross join teachers;
select s.Sr,s.Name,s.Mobno,s.email_id,s.Total_fee,s.age,t.Name as teacher_name , s.branch,s.year from student s full outer join teachers t on s.classroom_teacher=t.SR;

select s.Name,s.Mobno,s.email_id,s.Total_fee,s.age,t.Name as teacher_name , s.branch,s.year,f.Amount,f.Mode,f.Date from student s 
left join teachers t on s.classroom_teacher=t.SR
left join fee_payment f on s.email_id=f.Userid;

select * from student s left join fee_payment f on s.email_id=f.Userid;

use collage;
