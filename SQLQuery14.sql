use collage;
select * from fee_payment;
select * from student;

select s.Name,sum(f.Amount) from student s left join fee_payment f on s.email_id=f.Userid group by s.Name;
select ROW_NUMBER() over(order by s.name) as sr, s.name,s.mobno,f.amount, f.date, f.mode from fee_payment f left join student s on f.Userid=s.email_id;
select ROW_NUMBER() over(order by f.userid desc) as SN, f.Userid, sum(f.Amount) as Paid from fee_payment f group by f.userid having sum(f.Amount)>12000;
select ROW_NUMBER() over(order by Total_fee desc) as sr,name,mobno,email_id,Total_fee,age from student where total_fee!=(select max(Total_fee) from student);

with fee(sr,total) as
(select ROW_NUMBER() over(order by total_fee desc) as sr, total_fee as total from student group by Total_fee)
select * from student where Total_fee in (select total from fee where (sr=2 or sr=3));

with fee(Userid,Paid) as
(select Userid,sum(Amount) as Paid from fee_payment group by Userid)
select s.name,s.Mobno,s.email_id,s.Total_fee,case when f.Paid is null then 0 else f.Paid end as Paid,
s.Total_fee-(case when f.Paid is null then 0 else f.Paid end) as Remaining,s.age,s.branch,s.year from student s left join fee f on f.Userid=s.email_id;

update student set Total_fee=Total_fee+1000;
update student set Total_fee=(select max(Total_fee) from student) where sr=2;
update student set Total_fee=(select max(Total_fee) from student), age=20 where Sr=3;