create table productdetails
(
SR int primary key identity(1,1),
Product_name varchar(50),
Total int,
MRP money,
Salerate int,
Entrydate date,
);
insert into productdetails values('Hospital Beds',3,2000,1500,'2021-09-01');
insert into productdetails values('Trolley',2,3000,2500,'2021-09-01');
insert into productdetails values('injection',1,200,150,'2021-09-01');
insert into productdetails values('Trolley',4,2000,1500,'2021-08-01');
insert into productdetails values('Dust Bin',2,100,50,'2021-08-01');
insert into productdetails values('Injection',6,300,250,'2021-09-01');
