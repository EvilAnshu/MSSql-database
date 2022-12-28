use collage
create table teachers
(
SR int identity(101,1),
Name varchar(50),
Mobno bigint,
emailid varchar(100),
Post varchar(50),
Experience int,
);

insert into teachers values
('Mr. Rahul Soni',8987767665,'rverma@gmail.com','CS Consultant',6),
('Mr. Ashish Maurya',8987767665,'amaurya12@gmail.com','IT Consultant',4),
('Mr. Vinay Pandey',8987767665,'vvinay@gmail.com','Software Developer',6),
('Mr. Manoj Sachan',7876787898,'msachan@gmail.com','Software Tester',5),
('Mr. Akash Chaurasiya',9867788998,'akchaurasiya@gmail.com','IT Consultant',7);