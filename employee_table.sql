-- Create employee details table,Drop and Alter 
create table employeeDetails (Id int primary key,Name varchar(255),DOB date,EmailId varchar(50),PhoneNumber bigint,Job varchar(50),Salary float);
drop table employeedetails;
alter table employeedetails rename to employee;
alter table employee modify column id int1;
alter table employee rename column job to designation;
alter table employee add column experience int1;
-- Insert,Delete,Update and truncate
insert into employee values (1,'Vinosh','1988-11-02','vinosh@gmail.com',9600404777,'Software Engineer',45400.50,3);
insert into employee values (2,'Babykala','1989-07-18','babykala@gmail.com',9688410546,'Senior Engineer',75400,6);
delete from employee where id=2;
insert into employee values (2,'Babykala','1989-07-18','babykala@gmail.com',9688410546,'Senior Engineer',75400,6),(3,'Manikandan','1983-07-10','mani@gmail.com',9500425891,'Software Developer',85400,5),(4,'Divya','1992-07-18','divya@gmail.com',9865325614,'Senior Developer',75800,5),(5,'Rishvandh','2000-07-18','rish@gmail.com',9688410546,'Assistant Engineer',45400,2);
truncate employee;
update employee set dob='2002-01-28' where id=5;
update employee set designation='Senior Engineer' where id=4;
-- Select options
SELECT * FROM vbrs.employee;
select * from employee order by id asc limit 3 offset 2;
select count(*) from employee;
select count(name) as name from employee;
select count(distinct designation) from employee;
select max(salary),min(salary),avg(salary) from employee;
select * from employee where salary between 50000 and 100000;
select * from employee where experience>=5 and salary<80000;
select * from employee where designation like ('%developer');
select * from employee where designation='software developer';
select * from employee where designation not in ('software developer');