use sudha

create database sudha

sp_help employeetable
select * from employeetable
insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(1,'Anika','Arora',100000,'2020-02-14 09:00:00','HR')

insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(2,'veena','verma',80000,'2011-06-15 09:00:00','Admin')

insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(3,'Vishal','Shighak',300000,'2020-02-16 09:00:00','HR')

insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(4,'sushanth','singh',500000,'2020-02-17 09:00:00','Admin')


insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(5,'Bhupal','Bhati',500000,'2011-06-18 09:00:00','Admin')

insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(6,'Dheeeraj','Diwan',200000,'2011-06-19 09:00:00','Account')

insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(7,'Karan','Kumar',75000,'2020-01-14 09:00:00','Account')
 
insert into employeetable(Employee_id,First_name,Last_name,Salary,Joining_date,Department) values(8,'Chandrika','Chauhan',90000,'2011-04-15 09:00:00','Admin')

create table employeetable (Employee_id int primary key ,First_name Varchar(20),Last_name varchar(30),Salary int ,Joining_date datetime,Department varchar(30) )

 

create table EmployeeBonusTable (Employee_ref_id int not null ,Bonus_Amount int not null,Bonus_date datetime)

select*from EmployeeBonusTable

insert into EmployeeBonusTable(Employee_ref_id ,Bonus_Amount ,Bonus_date) values(1,5000,'20200216')

insert into EmployeeBonusTable(Employee_ref_id ,Bonus_Amount ,Bonus_date) values(2,3000,'20110616')

insert into EmployeeBonusTable(Employee_ref_id ,Bonus_Amount ,Bonus_date) values(3,4000,'20200216')

insert into EmployeeBonusTable(Employee_ref_id ,Bonus_Amount ,Bonus_date) values(1,4500,'20200216')

insert into EmployeeBonusTable(Employee_ref_id ,Bonus_Amount ,Bonus_date) values(2,3500,'20110616')

create table EmployeeTitleTable( Employee_ref_id int,Employee_title varchar(20),Affective_Date datetime)

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(1,'Manager','20160220')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(2,'Executive','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(8,'Executive','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(5,'Manager','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(4,'Asst.Manager','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(7,'Executive','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(6,'Lead','20160611')

insert into EmployeeTitleTable( Employee_ref_id ,Employee_title ,Affective_Date) values(3,'Lead','20160611')

select*from EmployeeTitleTable

delete from EmployeeTitleTable 


select * from employeetable
-- Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.
1.select First_name as Employee_name from employeetable

-- Display “LAST_NAME” from Employee table in upper case
2.select upper(Last_name) as Last_name from employeetable

-- Display unique values of DEPARTMENT from EMPLOYEE table.
3.select distinct(Department) from employeetable

--Display the first three characters of LAST_NAME from EMPLOYEE table.
4.select substring(Last_name,1,3) from employeetable

-- Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.
5.select distinct len(Department) from employeetable

-- Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME
6.select First_name+' '+Last_name as Full_name from employeetable

-- DISPLAY all EMPLOYEE details from the employee table order by FIRST_NAME Ascending.
7.select * from employeetable order by First_name asc

-- Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending.
8.select First_name,Department from employeetable order by First_name asc,Department desc

-- Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.
9.select * from employeetable  where First_name='Veena' union select * from employeetable where  First_name='Karan'

-- Display details of EMPLOYEE with DEPARTMENT name as “Admin”.
10.select * from employeetable where Department='Admin'

-- DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.
11.select * from employeetable where First_name like 'V%'

--12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000.
12.select * from employeetable where Salary between 100000 and 500000

-- Display details of the employees who have joined in Feb-2020.
13.select * from employeetable where Month(Joining_date)=2 and Year(Joining_date)=2020

-- Display employee names with salaries >= 50000 and <= 100000.
14.select concat(First_name,' ',Last_Name) as Full_Name from employeetable where Salary between 50000 and 100000

-- DISPLAY details of the EMPLOYEES who are also Managers.
16.select * from employeetable ,EmployeeTitleTable  where Employee_id=Employee_ref_id and Employee_title='Manager'

-- DISPLAY duplicate records having matching data in some fields of a table.
17.select Employee_title,Affective_Date from EmployeeTitleTable group by Employee_title,Affective_Date having count(*)>1

-- Display only odd rows from a table.
18.select * from employeetable where Employee_id in (select Employee_id from employeetable where Employee_id%2<>0)

-- Clone a new table from EMPLOYEE table.
19.select * from employeetable
select * into employee_clone from employeetable
select * from employee_clone

-- DISPLAY the TOP 2 highest salary from a table.
20.select top 2 Salary from employeetable order by Salary desc  

-- DISPLAY the list of employees with the same salary.
21.select First_name from employeetable  where Salary in(select Salary from employeetable e where employeetable.Employee_id<>e.Employee_id)  
 
 --22 Display the second highest salary from a table.
22.select top 2 Salary from employeetable order by Salary desc 

--Display the first 50% records from a table.
23.select top 4 * from employeetable 

-- Display the departments that have less than 4 people in it.
24.select Department,count(First_name) as cnt from employeetable group by Department having cnt < 4

-- Display all departments along with the number of people in there.
25.select Department,count(First_name) as cnt from employeetable group by Department

-- Display the name of employees having the highest salary in each department.
26.select concat(First_name,' ',Last_Name) as Full_Name,Department,Salary from employeetable where Salary in(select max(Salary) from employeetable group by Department)

-- Display the names of employees who earn the highest salary.
27.select concat(First_name,' ',Last_Name) as Full_Name from employeetable where Salary in(select max(Salary) from employeetable)

-- Diplay the average salaries for each department
28.select Department,AVG(Salary) from employeetable group by Department

-- display the name of the employee who has got maximum bonus
29.select concat(e1.First_name,' ',e1.Last_Name) as Full_Name,e2.Bonus_Amount from employeetable e1,EmployeeBonustable e2 where e1.Employee_id=e2.Employee_ref_id and Bonus_Amount in (select max(Bonus_Amount) from EmployeeBonustable)

-- Display the first name and title of all the employees
30.select e1.First_name,e2.Employee_title from employeetable e1,EmployeeTitletable e2 where e1.Employee_id=e2.Employee_ref_id;




                  