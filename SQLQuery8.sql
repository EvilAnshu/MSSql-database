create table fee_payment
(
Sr int identity(1,1),
Userid varchar(100),
Amount money,
Mode varchar(15),
Date date,
);
insert into fee_payment values
('deepak123@gmail.com',3000,'Gpay','2022-10-23'),
('priya001@gmail.com',5000,'Payment','2022-10-25'),
('deepak123@gmail.com',4000,'Cash','2022-10-23'),
('002sohan@gmail.com',3000,'Cash','2022-10-26'),
('deepak123@gmail.com',5000,'Cash','2022-10-20'),
('priya001@gmail.com',5000,'Gpay','2022-10-20'),
('981rohankr@gmail.com',8000,'Paytm','2022-10-23'),
('singhsiya@gmail.com',6000,'Cash','2000-10-20'),
('981rohankr@gmail.com',2000,'Cash','2022-10-25'),
('singhsiya@gmail.com',6000,'Paytm','2022-10-26'),
('981rohankr@gmail.com',6000,'Gpay','2022-10-26'),
('singhsiya@gmail.com',2000,'Cash','2022-10-26')
;

select sum(Amount) from fee_payment where Userid='singhsiya@gmail.com'; 
select sum(Amount) as Total_paid,count(amount) as count, Userid from fee_payment group by Userid;
select mode,sum(Amount) as Mode_paid from fee_payment group by Mode;
select Date,sum(Amount) as date_paid from fee_payment group by Date;
select * from fee_payment;
select Date,sum(Amount) as date_paid from fee_payment group by Date having Date between '2022-10-20' and '2022-10-25';
select Date,sum(Amount) as date_paid from fee_payment where Mode='Cash' group by Date;
select Date,sum(Amount) as date_paid from fee_payment where Mode!='Cash' group by Date having Date between '2022-10-20' and '2022-10-25';
select Date,sum(Amount) as Date_paid from fee_payment where Mode='Cash' and Date between '2022-10-20' and '2022-10-25' group by Date having sum(Amount)>5000;
select Userid,sum(Amount) as Total_Paid from fee_payment where Date between '2022-10-20' and '2022-10-25' group by Userid;