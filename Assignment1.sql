create database OurExerciseDb
on primary (name='OurExerciseDb',Filename='E:\Phase2 Assignment\Ass1\OurExercise_Db.mdf',
size=24MB,MaxSize=48MB,filegrowth=8MB)
log on (name='OurExercise_Db_log',Filename='E:\Phase2 Assignment\Ass1\OurExcercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table Product
(PId int primary key identity(50,1) ,
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000) ,
PCompany nvarchar(50)check(PCompany in('SamSung', 'Apple','Redmi','HTC')),
PQty int check(PQty>=1) default 1)

insert into Product(PName,PPrice,PCompany) values ('Mobile',50000.0,'Redmi')
insert into Product(PName,PPrice,PCompany,PQty) values ('Earpods',30900.0,'Apple',3)
insert into Product(PName,PPrice,PCompany,PQty) values ('headset',20900.0,'HTC',3)
insert into Product(PName,PPrice,PCompany) values ('Laptop',99000.0,'Samsung')
insert into Product(PName,PPrice,PCompany) values ('tab',64500.0,'Redmi')
select * from Product