create table PatientDetail
(
SR int primary key identity(1,1),
NAME varchar(50) not null,
Address varchar(100),
MOBNO varchar(15) not null,
Entry_date date not null,
Discharge_date date not null,
Doctor varchar(50) not null,
);
insert into PatientDetail (NAME,Address,MOBNO,Entry_date,Discharge_date,Doctor) values('RAM','Vikash Nagar Lucknow','8987766554','2021-07-01','2022-07-01','DR. Prince');
insert into PatientDetail values('SHIVAM','Cant Varanasi','NULL','2021-07-01','2022-07-01','DR. Prince');
insert into PatientDetail values('ANURAG','Mahanagar Lucknow','890076655','2021-07-01','2022-07-01','DR. Meera');
insert into PatientDetail values('MAHESH','GomtiNagar Lucknow','7987766554','2021-07-01','2022-07-01','DR. Prince');
insert into PatientDetail values('VIKAS','Patna','8897766552','01-07-2021','01-07-2022','DR. Meera');