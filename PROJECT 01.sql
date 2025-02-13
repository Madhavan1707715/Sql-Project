-- TO CREATE INFORMATION TECHNOLOGY DB
create database Information_Technology ;

-- TO ACTIVE THE COMPANY DB 
Use Information_Technology;

-- TO CREATE TABLE EMPLOYEES TABLE
create table employees(
RollID int not null,
First_name varchar (80),
Last_name varchar(80),
Age int,
Department varchar (80) default 'Saftware development',
primary key(RollID));

-- TO DESCRIBE THE EMPLOYEES TABLE
describe employees;

-- TO CHANGE THE DATA TYPE IN AGE IN EMPLOYEES TABLE
Alter table employees modify column Age int;

-- DESC(describe)
desc employees;

-- TO INSERT THE VALUES IN PERSONNEL TABLE 
Insert into employees(RollID,first_name,last_name,age) values (1,"Mahesh","Pandian",25);
Insert into employees(RollID,first_name,last_name,age) values (2,"mukesh","kumar",24);
Insert into employees(RollID,first_name,last_name,age) values (3,"Ananth", "Raj", 27);
Insert into employees(RollID,first_name,last_name,age) values (4,"Mithun", "Sharma", 22);
Insert into employees(RollID,first_name,last_name,age) values (5, "Durka", "Devi", 26);
Insert into employees(RollID,first_name,last_name,age) values (6, "Maha", "Lakshmi", 24);
Insert into employees(RollID,first_name,last_name,age) values (7, "Swetha", "Mohan", 23);
Insert into employees(RollID,first_name,last_name,age) values (8, "Gokul", "Kannan", 25);
Insert into employees(RollID,first_name,last_name,age) values (9,"Mani", "Kandan", 27);
Insert into employees(RollID,first_name,last_name,age) values (10, "Sakthi", "Bala", 21);
-------------------------------------------------------------------------------------------------------

 -- TO CREATE THE SALARY TABLE IN COMPANY DB
 Create table salary(
 s_no int primary key,
 amount int,
 joiningDate date,
 RollID int,
  -- TO LINK THE ROLLID COLUMN IN SALARY TABLE FROM EMPLOYEES TABLE 
  Constraint FK_RollID foreign key(RollID) References employees(RollID));
  
   -- TO RENAME THE AMOUNT COLUMN INTO SALARY COLUMN SALARY TABLE 
   Alter table salary rename column amount to salary;
   
-- TO DESCRIBE THE SALARY TABLE IN COMPANY DB
Desc salary;

-- TO INSERT THE VALUES IN SALARY TABLE (WITHOUT COLUMN NAME)
Insert into salary values (01,40000, '2023-05-08',7);
Insert into salary values (02,30000,'2024-07-03',8);
Insert into salary values (03, 50000, '2022-08-01',3);
Insert into salary values (04, 45000, '2023-02-05',4);
Insert into salary values (05, 25000, '2024-10-20',5);
Insert into salary values (06, 32000, '2024-11-07',10);
Insert into salary values (07, 35000, '2024-04-15',9); 
Insert into salary values (08, 27000, '2023-12-27',1); 
Insert into salary values (09, 20000, '2025-03-25',6);
Insert into salary values (10,55000, '2021-07-10',2);
--------------------------------------------------------------------------------------------------------------

-- TO CREATE CONTACT DETAILS TABLE IN COMPANY DB
Create table employeesDetails (
R_no int, 
Qualification varchar (150), 
EmailID varchar (150),
Phone int,
JoiningDate date,
unique(R_no));

-- TO DESCRIBE THE PERSONAL DETAILS TABLE FROM COMPANY DB
describe employeesDetails;

-- TO DROP JOININGDATE PERSONAL DETAILS
Alter table employeesDetails drop column joiningdate;
 
 -- TO CHANGE THE DATATYPE IN PHONE COLUMN IN PERSONAL DETAILS TABLES
 alter table employeesdetails Modify column Phone Bit(50);
 
 -- TO INSERT THE VALUES IN EMPLOYEESDETAILS TABLES
 Insert into employeesdetails values (1,"BA.LLB","maheshpandian234@gmail.com", 9080796854);
 Insert into employeesdetails values (2,"B.COM", "mukeshkumar467@gmail.com", 9780683910);
 Insert into employeesdetails values (3,"BCA", "ananthraj968@gmail.com", 7930597637);
 Insert into employeesdetails values (4,"BSC", "mithunsharma375@gmail.com", 8769508708);
 Insert into employeesdetails values (5,"B.COM", "durkadevi576@gmail.com", 76850034);
 Insert into employeesdetails values (6, "MBA", "mahalakshmi987@gmail.com", 9080667804);
 Insert into employeesdetails values (7,"MA", "swethamohan643@gmail.com", 9025105412);
 Insert into employeesdetails values (8, "BCA", "gokulkannan856@gmail.com", 7373658839);
 Insert into employeesdetails values (9, "M.COM", "manikandan597@gmail.com", 9060576421);
 Insert into employeesdetails values (10,"BA.LLB", "sakthibala954@gmail.com",8070586643);
 
 -- TO ADD COLUMN EMPLOYEES TABLE 
 Alter table employees Add column R_no int;
 
 -- TO ALTER THE R_NO AS FOREIGN KEY IN EMPLOYEES TABLE 
 Alter table employees Add foreign key (R_no) references employeesdetails(R_no); 
 -----------------------------------------------------------------------------------------------------------------
 
 -- TO CREATE THE TRANSACTIONDETAILS TABLE IN COMPANY DB
 Create table Transactiondetails(
 salaryno int primary key,
 Bankname varchar (100),
 AC_NO Bit(60),
 S_no int, 
 foreign key (s_no) references salary (s_no));
 
 -- TO INSERT THE VALUES IN TRANSACTIONDETAILS TABLE 
 Insert into transactiondetails values (100, "SBI BANK", 100034672784, 01);
 Insert into transactiondetails values (300, "ICIC BANK", 760005468988, 02);
 Insert into transactiondetails values (200,"RBI BANK", 4856960453389, 03);
 Insert into transactiondetails values (400, "UCO BANK", 3000076265892, 04);
 Insert into transactiondetails values (500, "INDIAN BANK", 753767336431, 05);
 Insert into transactiondetails values (600, "HDFC BANK", 3756489119017,06);
 Insert into transactiondetails values (700, "SBI BANK", 764889389096,07);
 Insert into transactiondetails values (800, "CANARA BANK", 652918456739, 08);
 Insert into transactiondetails values (900, "BANK OF BARODA",809876890775,09);
 Insert into transactiondetails values (1000,"YES BANK", 23000567543,10);
 --------------------------------------------------------------------------------------------------------------
 
 -- TO CREATE THE TEAMS TABLE IN COMPANY DB
 create table Teams (
 T_no int primary key,
 T_Name varchar (100), 
 RollID int,
 foreign key(RollID) references Employees(RollID));
 
 -- TO ADD COLUMN IN TEAMS TABLE
 Alter table Teams Add column R_no int;
 
 -- TO DESCRIBE THE TEAMS TABLE IN COMPANY DB
 Describe Teams ;
 
 -- TO DROP THE PRIMARY KEY IN T_NO COLUMN TEAMS TABLE
 Alter table Teams Drop Primary key;
 
 -- TO INSERT THE VALUES IN TEAMS TABLE
 insert into Teams values (101, "DELTA", 1,1);
 insert into Teams values (102,"AQUA",2,2);
 insert into Teams values (103, "DELTA", 3,3);
 insert into Teams values (104, "AQUA", 4,4);
 insert into Teams values (105, "DELTA", 5,5);
 insert into Teams values (106, "AQUA", 6,6);
 insert into Teams values (107, "DELTA", 7,7);
 insert into Teams values (108, "AQUA", 8,8);
 insert into Teams values (109, "DELTA", 9,9);
 insert into Teams values (110,"AQUA", 10,10);
 --------------------------------------------------------------------------------------------------
 -- TO CREATE VIEW IN BANK NAME IN TRANSACTIONDETAILS TABLE
 Create view bankname_yesbank as select * from Transactiondetails where bankname = "yesbank";
 select * from bankname_yesbank;
 
 -- TO CREATE VIEW IN TEAMNAME IN TEAMS TABLE 
 Create view Tname_delta as select * from Teams where T_name = "delta";
 select * from Tname_delta;
 
 -- TO CREATE VIEW IN SALARY IN SALARY TABLE
 Create view salary_40000 as select * from salary where salary =40000;
 select * from salary_40000;
 
 
 -- TO CREATE VIEW IN EMAILID IN EMPLOYEESDETAILS TABLE 
 Create view Email_mahesh as select * from employeesdetails where EmailID = "maheshpandian234@gmail.com";
 select * from Email_mahesh;
 
 -- TO CREATE VIEW IN DEPARTMENT IN EMPLOYEES TABLE 
 Create view Dep_SD as select * from employees where Department ="Saftware development";
 select * from Dep_SD;
 ------------------------------------------------------------------------------------------------------------------
 
 Delimiter //
 create procedure SI_Tab()
 begin
 -- TO SELECT ALL VALUES IN EMPLOYEES TABLE 
 select * from employees;
 -- TO SELECT ALL VALUES IN SALARY TABLE 
 select * from salary;
 -- TO SELECT ALL VALUES IN EMPLOYEESDETAILS TABLE 
 select * from employeesdetails ;
 -- TO SELECT ALL VALUES IN TRANSACTIONDETAILS TABLE 
 select * from transactiondetails ;
 -- TO SELECT ALL VALUES IN TEAMS 
 select * from teams ;
 end //
 delimiter ;
 ----------------------------------------------------------------------------------------- 
 delimiter //
 create procedure Emp_Det()
 begin 
 -- TO SELECT FIRST NAME FROM EMPLOYEES TABLE 
 select  first_name from employees;
 -- TO SELECT DISTINCT AGE FROM EMPLOYEES TABLE 
 select distinct age from employees;
 -- TO SELECT AGE FROM EMPLOYEES TABLE WHERE AGE IS LESSTHAN 27
 select * from  employees where age <25;
 end //
 delimiter ;
 ------------------------------------------------------------------------------------------------------
 Delimiter **
 Create procedure sal_dep()
 begin 
-- TO SELECT ALL VALUES IN SALARY TABLES
select * from salary ;
-- TO SELECT ROLLID FROM SALARY TABLE WHERE SALARY RANGE BETWEEN 30000 AND 40000
select RollID from salary where salary between 30000 and 40000;
-- TO SELECT FROM SALARY FROM SALARY TABLE WHERE LESSTHAN 30000
select * from salary where salary <any(select salary from salary where salary<30000);
end **
delimiter ;
----------------------------------------------------------------------------------------------------------------
delimiter $$
create procedure ed_email()
begin
-- TO SELECT EMAILID FROM EMPLOYEESDETAILS TABLE
select * from employeesdetails where emailID = "maheshpandian234@gmail.com";
end $$
delimiter ;
------------------------------------------------------------------------------------------------------------
Delimiter //
create procedure Td_Bb()
begin
-- TO SELECT BANK NAME FROM TRANSACTIONDETAILS TABLE 
select distinct bank name from transactiondetails ;
end //
delimiter ;
---------------------------------------------------------------------------------------------------------
Delimiter !!
create procedure team_info()
begin
-- TO SELECT ALL VALIUES IN TEAMS TABLE 
select * from teams ;
end !!
delimiter ;
------------------------------------------------------------------------------------------------

Delimiter //
create procedure OP_SP()
begin
-- TO SELECT FIRST NAME EMPLOYEES TABLE WHERE START WITH 'M'LETTER 
select * from employees 
where first_name like 'm%'
limit 2 offset 2;
-- TO SELECT LAST NAME EMPLOYEES TABLE END WITH 'N' LETTER
select * from employees where last_name like '%n'
-- TO SELECT TEAM NAME IN TEAMS TABLE WHERE ROLLID IS 10
 select T_Name from teams where T_no = all(select t_no from teams where RollID = 10);
-- TO SELECT QUQLIFICATION IN EMPLOYEESDETAILS 
select * from employeesdetails where qualification = 'BCOM' and EmailID = 'mukeshkumar467@gmail.com';
-- TO SELECT QUALIFICATION IN EMPLOYEESDETAILS
select * from employeesdetails where Qualification IN ("BCOM","MCOM");
end
delimiter ;
-------------------------------------------------------------------------------------------------------------------
Delimiter **
create procedure OHG_SP()
begin
select salary from salary order by salary desc;
select S_no (salary) from salary group by S_no;
end **
delimiter ;
--------------------------------------------------------------------------------------------------------
Delimiter &&
create procedure JC_SP()
begin 
select employees.first_name,last_name,salary.salary from employees join salary on employees. RollID = salary. RollID;
select phone,emailid from employeesdetails left join employees on employeesdetails.R_no = employees.R_no;
select employees. first_name,last_name from employees right join teams on employees.RollID = teams.RollID;
select employees. first_name,employees. last_name, employeesdetails.R_no from employees cross join employeesdetails ;
end &&
delimiter ; 
-------------------------------------------------------------------------------------------------------------------------------
delimiter //
create procedure case_tab()
begin
select first_name,last_name,age,
case
when age >27 then 'employees with experience.eligible for sr.profile'
when age =27 then 'employees with mid-experience.eligible'
else 'freshers....new to the company'
end as eligibility from employees ;
end // 
delimiter ;
-----------------------------------------------------------------------------------
delimiter &&
create procedure AO_Sp()
select sum(salary) as total_amount from salary;
select concat(first_name,last_name) as "full name" from employees ;
select count(T_name) as batch from teams;
select avg(age) as ages from employees;
select max(salary) as high from salary;
select min(salary) as low from salary;
end &&
delimiter ;
-------------------------------------------------------------------------------------
delimiter $$
create procedure SO_SP()
begin
select first_name,last_name from employees union select emailID phone from employeesdetails;
select salary,joiningdate from salary union all select AC_No from transactiondetails;
end $$
delimiter ;
------------------------------------------------------------------------------------------------
delimiter //
create procedure OP_INF(out total int)
begin
select count(*) into total from salary;
end //
delimiter ;
----------------------------------------------------------------------------------------------------
delimiter &&
create procedure IOP_Inf(in input1 int, out emp_fname varchar (100), out emp_lname varchar (100))
begin
select first_name,last_name into emp_fname,emp_lname from employees 
where RollID = input1;
end &&
delimiter ;
-------------------------------------------------------------------------------------------------
delimiter //
create procedure IP_Inf(in salary int)
begin
select * from salary ;
end //
delimiter ;
------------------------------------------------------------------------------------------------
call AO_SP();
call case_tab();
call emp_det();
call ohg_sp();
call jc_sp();
call OP_Sp();
call ed_email();
call sal_dep();
call si_tab();
call Td_Bb();
call team_info();
call so_sp();
call op_inf(@total);
select @total;
call lop_inf(3,@outfname,outlname);
call ip_inf(2);


































 
 
 
 
 
 





  
  
  
  
  
  
  
  
  
  











