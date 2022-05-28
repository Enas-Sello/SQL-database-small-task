create database task3;
use task3;

create table instructor (
ID int primary key identity,
Fname varchar(20),
Lname varchar(20),
Adress varchar(2),
Salary int default 3000,
BirthD date ,
HireD date default getdate(),
OverTime int unique ,
Age as year(getdate())-year(BirthD),
NetSalary as (Salary-OverTime) persisted ,
  check(Adress in('cairo' ,'alex')),
  check(Salary between 1000 and 5000),
)

create table Courses (

Cid int identity ,
cname varchar(20),
duration  date  
)

 create table lab (
  cid int ,
 lid int identity,
 location varchar(50),
 capcity int
 check  (capcity<20),
 constraint weakcomposite primary key (lid ,cid ),
  constraint relation foreign key (cid) references Courses(Cid)
  on delete cascade on update cascade

 );
 create table teach(
 ID int ,
 Cid int ,
   constraint relationcomosite primary key (ID ,Cid),
      constraint relation1  foreign key (Cid) references Courses(Cid)
	    on delete cascade on update cascade ,
	        constraint relation2 foreign key (ID) references instructor(ID)
			  on delete cascade on update cascade ,


 )

