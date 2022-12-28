select * from fee_payment;
select * from student;

select student.Name,student.Mobno,student.email_id,fee_payment.Amount,fee_payment.Mode,fee_payment.Date from student inner join fee_payment on(student.email_id=fee_payment.Userid);