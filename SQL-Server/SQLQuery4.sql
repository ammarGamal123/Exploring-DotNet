use TestDB
-- we talk about the primary key 


-- we cannot create more than one primary key
/*
create table branch (
	Bcode int primary key,
	Bname varchar(55),
	Bloc varchar(40) primary key
)
*/
-- create a branch table which Bcode is the primary key
create table branch (
	Bcode int primary key,
	Bname varchar(40) , 
	Blocation varchar(40)
)

insert into branch values (1021 , 'Vodafon' , 'Cairo')

insert branch values (1022 , 'Etisalat', 'Beni-Suef')

-- how to create a composite primary key in a table 
create table branchDetails2 (
	City varchar(40),
	Bcode int,
	Bloc varchar(40),

	primary key (City , Bcode)
) 

insert BranchDetails2 values ('Cairo' , 10 , 'Tahreer')

Insert into branchDetails2 values('Mumbai', 20, 'Malad') 
Insert into BranchDetails2 values('Hyderabad', 20, 'SR Nagar') 

-- how to create a foriegn key for a table 

create table Dept (
	Dno int primary key,
	Dname varchar(30),
	Dloc varchar(40)
)
GO

insert Dept values (10 , '.NET' , 'Gaza')
insert Dept values (20 , 'JAVA' , 'Alex')
insert Dept values (30 , 'PHP'  , 'Cairo')

-- drop table TestDB.dbo.Employee 

create table Employee (
	Eid int primary key,
	Ename varchar(30),
	Salary Money,

	Dno int foreign key references Dept(Dno)
)

insert Employee values (101 , 'Ammar' , 50000 , 10)
insert Employee values (102 , 'Usef' , 40000 , 20)
insert Employee values (103 , 'Mido' , 30000, 30)

select * from Employee
select * from Dept 

-- how to create a foreign key constraint at table level

create table Employee2 (
	Empid	int,
	Ename2	varchar(40),
	Job		varchar(40),
	Salary2 Money,
	Deptno  int,
	constraint deptno_fk foreign key (Deptno) references Dept(Dno)
)

insert Employee2 values (105 , 'Kareem' , 'Software Engineer', 25000, 10)

create table customer (
	Cid int primary key,
	Cname varchar(10),
	Cmobno varchar(11)
)

insert into customer values (1 , 'Nora'    , '09113219807')
insert into customer values (2 , 'Shahinda', '02198323807')
insert into customer values (3 , 'Tasneem',  '03113219807')
insert into customer values (4 , 'Raheiqe', '07113219807')

select * from customer

create table product (
	Pcode int primary key,
	Pname varchar(40),
	Price Money
)

insert product values (10 , 'Mobile' , 1000)
insert product values (20 , 'laptop' , 1500)
insert product values (30 , 'PC'     , 2000)

select * from product

create table orders (
	ODid int primary key,
	Ordate date,
	Quantity int,

	Cid	  int foreign key references customer (Cid),
	Pcode int foreign key references product(Pcode)
)

insert orders values (101 , '2017/12/20',9 , 1 , 10)
insert orders values (102 , '2017/12/20',11 , 2 , 20)
insert orders values (103 , '2017/12/21',12 , 3 , 30)
insert orders values (104 , '2017/12/22',6 , 1 , 10)
insert orders values (105 , '2017/12/23',14 , 1 , 30)

select * from orders

