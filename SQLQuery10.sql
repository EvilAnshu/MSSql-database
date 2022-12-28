create database day_three;

use day_three;
create table customers
(
SN int identity(101,1),
first_name varchar(50) not null,
last_name varchar(50) not null,
mob_no bigint,
email_id varchar(100) primary key,
gender varchar(30),
reg_date date,
);

insert into customers values
('Priya','Dutt',null,'priya001@gmail.com','Female','2022/12/23'),
('Sohan','Khan',null,'002sohan@gmail.com','Male','2022/10/22'),
('Rohan','Kumar',9887766565,'981rohankr@gmail.com','Male','2022/10/25'),
('Siya','Singh',8987767665,'singhsiya@gmail.com','Female','2022/01/12'),
('Riya','Soni',6545788734,'rsoni@gmail.com','Female','2022/02/27'),
('Anamika','Yadav',null,'anamika12345@gmail.com','Female',null),
('Priyanka','Singh',6732897545,'567865@gmail.com','Female','2022/03/29'),
('Akanksha','Mukharjee',null,'mukharjeeak@gmail.com','Female','2022/02/23')
;
select * from customers order by SN asc;

create table orders
(
order_nu int identity(101,1) primary key,
cust_id varchar(100),
Order_date date,
order_total money,
order_items int,
address int,
);
insert into orders values
('priya001@gmail.com','2022/12/23',250.85,1,101),
('priya001@gmail.com','2022/12/25',1020,5,101),
('singhsiya@gmail.com','2022/10/25',120.5,2,105),
('981rohankr@gmail.com','2022/12/20',150.5,1,102),
('priya001@gmail.com','2022/02/28',450.3,2,103),
('priya001@gmail.com','2022/12/30',670,3,103),
('981rohankr@gmail.com','2022/02/22',890,4,102),
('mukharjeeak@gmail.com','2022/02/25',1050,5,104),
('mukharjeeak@gmail.com','2022/12/27',1300.8,5,106),
('anamika12345@gmail.com','2022/12/27',500.9,3,107)
;

create table Address
(
Add_id int identity(101,1) primary key,
cust_id varchar(100),
Full_add varchar(150),
Landmark varchar(100),
add_type varchar(40),
pincode bigint,
);

insert into Address values
('priya001@gmail.com','House no 3/854 Vikas nagar sector 4','Glannish park','Home',226022),
('981rohankr@gmail.com','House no 5/900 Vikas nagar sector 5','Lakhmee salon','Home',226023),
('priya001@gmail.com','Plat no 43 Sector 5 Vikas nagar',null,'Work',225034),
('mukharjeeak@gmail.com','House no 245 Shekhupura Vikas naga','Dreamz hotel','Home',226022),
('singhsiya@gmail.com','3/600 Vishnupuri Aliganj',null,'Home',226023),
('mukharjeeak@gmail.com','723 Khurran nagar','near paradise','Work',234554),
('anamika12345@gmail.com','6/300 Bibhuti Khand Gomti Nagar','near IT','Home',344556)
;