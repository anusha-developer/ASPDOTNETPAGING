Create database DBEmployee;
create table Tbl_DBEmployee(
EmployeeId int identity(1,1) primary key,
EmployeeName varchar(100),
EmployeeSalary int);
select * from Tbl_DBEmployee;
insert into Tbl_DBEmployee values('Anusha',30000);
