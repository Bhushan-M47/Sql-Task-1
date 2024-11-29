create table Employee_details(Employee_Id serial primary key, F_Name varchar(50), 
L_Name varchar(50), Email varchar(50), Ph_Number varchar(15), 
HireDate date, Salary decimal(10,2), dept_id int, is_active boolean, job_title varchar(100));

insert into Employee_details(F_Name, L_Name, Email, Ph_Number, HireDate, Salary, dept_id, 
is_active, job_title)  values('Bhushan', 'Meshram', 'bhushan.me@gmail.com', 8727384750, '2024-08-31', 
45000.00, 2, True, 'Data Analyst');
insert into Employee_details(F_Name, L_Name, Email, Ph_Number, HireDate, Salary, dept_id, 
is_active, job_title)  values('Ashish', 'Patle', 'ashishpatle@gmail.com', 9494578433, '2024-04-21',
30000.00, 3, True, 'Data Scientist');
insert into Employee_details(F_Name, L_Name, Email, Ph_Number, HireDate, Salary, dept_id, 
is_active, job_title)  values('Vedant', 'Amzare', 'amzarevedant@gmail.com', 7233637889, '2023-02-12',
50000.00, 1, False, 'Developer');
insert into Employee_details(F_Name, L_Name, Email, Ph_Number, HireDate, Salary, dept_id, 
is_active, job_title)  values('Ashmit', 'Zore', 'ashmitzore@gmail.com', 9833647889, '2024-01-12',
50000.00, 1, True, 'Full Stack Developer');
insert into Employee_details(F_Name, L_Name, Email, Ph_Number, HireDate, Salary, dept_id, 
is_active, job_title)  values('Saksham', 'Khode', 'sakshamkhode@gmail.com', 9933637989, '2022-08-12',
60000.00, 2, False, 'Consultant');

copy Employee_details from 'C:/Arc Data Analytics/SQL/Employee_Details.csv' delimiter ',' csv header; 

update Employee_details set dept_id=0 where is_active=False;

update Employee_details set salary=salary*1.08 where is_active=False and dept_id=0 and 
job_title in ('HR Manager','Financial Analyst','Business Analyst','Data Analyst');

select F_Name, L_Name from Employee_details where salary between 30000 and 50000;

select * from Employee_details where F_name like 'A%';

delete from Employee_details where employee_id between 1 and 5;

alter table Employee_details rename to employee_database;

alter table employee_database rename column F_Name to Name;

alter table employee_database rename column L_Name to Surname;

alter table employee_database rename to Employee_details;

alter table Employee_details add state varchar not null default 'Na';

update Employee_details set state='India' where is_active='True';

update Employee_details set state='USA' where is_active='False';