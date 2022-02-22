use payroll_service
select * from employee_payroll
insert into employee_payroll values
('sanmesh','2019-02-07',16345.90),
('ganni','2022-02-16',14312.56),
('rohit','2021-11-28',9000.0),
('shreya','2016-11-12',22550.00),
('yamini','2015-1-2',18550.00)
select salary from employee_payroll where name='rohit'
select getdate()
select * from employee_payroll where start between '2016-01-01' and getdate()
select cast(getdate() as varchar(50))
alter table employee_payroll add
gender char(1)

update employee_payroll set gender='M' where id in(1,2,3)
update employee_payroll set gender='F' where id in(4,5)

select *from  sys.tables
alter table employee_payroll add
phone varchar(15),address varchar(60),department varchar(30) not null default 'others'
alter table employee_payroll add
constraint DF_Address default 'India' for address
alter table employee_payroll add
Basic_Pay money,
Deduction money,
TaxablePAy money,
Tax money

sp_rename 'employee_payroll.salary','Net_Pay'