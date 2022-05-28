

use Company_SD
 
select * from Employee
select  Fname,Lname,Salary,Dno from Employee
select Pname,Plocation from Project
select SSN,Fname,Lname from Employee where Salary>1000
select SSN,Fname,Lname from Employee where Salary*12 >10000
select Fname,Salary from Employee where Sex='f'
select Dname,Dnum from Departments where MGRSSN = 968574
select Pname,Dnum,Plocation from Project where Dnum=10
select (Fname+' '+Lname) as fullname ,(Salary*10/100)*12 as ANNUAL_COMM  from Employee
--------------------task3--------------------------
--1--
select  Dname,Dnum,MGRSSN , fname from Departments D , Employee e
where D.MGRSSN= e.SSN
--2--
select Dname , Pname from Departments D ,Project E
where D.Dnum= E.Dnum
--3--
select * from Dependent d , Employee e
where d.ESSN =e.SSN
--4--
select Pnumber, Pname ,Plocation from Project
where City in ('alex','cairo')
--5--
select * from Project where Pname like 'a%'
--6--
 select Fname , Lname , Salary from Employee d 
 where Dno =30 and (Salary between 1000 and 2000)
--7--
 select Fname from Employee as n 
 inner join Works_for as e on n.SSN=e.ESSn
 inner join Project as j on j.Pnumber=e.Pno
 where n.Dno=10 and Hours > 10 and j.Pname='AL Rabwah'
--8--
 select emp.Fname+' '+emp.Lname  as 'empfullname' ,
 sup.Fname+' '+sup.Lname as 'supfullname'
 from  Employee emp , Employee sup where 
sup.SSN = emp.Superssn and sup.Fname ='kamel' and sup.Lname='Mohamed'

 --9--
 select(Lname +Fname)as fullname ,Pname from Works_for as fp 
 inner join Project as p on fp.Pno =p.Pnumber
 inner join Employee as em on fp.ESSn=em.SSN
 order by Pname
   --10--
   select Pnumber , Departments.Dname , Employee.Lname ,Employee.Address ,Employee.Bdate
   from Project , Departments , Employee 
   where Project.Dnum=Departments.Dnum and Employee.SSN=Departments.MGRSSN and Project.City='cairo'

   --11--
 
   select* from
   Departments
   inner join Employee on Departments.MGRSSN=Employee.SSN
   --12--
   select* from Employee left outer join Dependent on Dependent.ESSN=Employee.SSN
   --13--
   insert into Employee (Fname , Lname , SSN ,Salary , Superssn ,Dno)
   values ('Enas' , 'Awad' , 10267 ,3000, 112233 , 30 )
   --14--
   insert into Employee (Fname , Lname , SSN ,Dno)
   values ( 'awad' , 'sello' , 102660 , 30 )
   --15--
   update Employee set Salary+=Salary*20/100 where SSN=10267