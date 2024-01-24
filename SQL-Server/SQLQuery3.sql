USE TestDB

-- to understand Default constraints with an example
CREATE TABLE Employee (
	ID int NOT NULL, 
	LastName varchar(255) NOT NULL,
	FirstName varchar(255),
	Age int,
	City varchar(255) DEFAULT 'Cairo',
	DataOfBirth date DEFAULT GETDATE(),
	Salary DECIMAL (18 , 2) DEFAULT 5000.00
)

INSERT INTO Employee (ID , LastName , Age)
VALUES (1 , 'Hammad' , 21)

SELECT * FROM Employee

-- we here learning to apply NOT NULL to a columns 
create table customer (
	id int not null,
	name varchar(50) not null,
	mobno char(11) not null
)

insert into customer values (1 , 'ammar' , '01153751600')
insert into customer values(1 , 'ammar' , '01153751600')
-- insert into customer values (NULL , NULL , NULL) Not Allowed

drop table customer

-- how to create a table with unique values 

create table customer (
	id int unique , 
	name varchar(55) unique,
	mobno varchar(55) unique
)

insert into customer values (1 , 'ammar' , '01153751600')

insert into customer values(1 , 'ammar', '01153751600')

insert into customer values(NULL , NULL , NULL)

insert into customer values (11, 'Hammad' , '01234345888')

select * from customer 

-- creating constraints with own name:
create table client (
	id int constraint cid_unique UNIQUE,
	name varchar(50),
	emailid varchar(100) constraint email_unique unique
)

insert into client values (1 , 'ammar' , 'amargamal832909@gmail.com')

-- Not Allowed
-- insert into client values (1 , 'ammar' , 'amargamal832909@gmail.com')

create table client2 (
	id2 int ,
	name2 varchar(55),
	email2 varchar(100),

	constraint cid_unique2 unique(id2),
	constraint email_unique2 unique(email2)
)

-- how to create a composite constraint while creating a table

create table BranchDetails (
	City varchar(50),
	BranchCode varchar(10),
	BranchLocation varchar(30),

	constraint city_bc_unique unique (City , BranchCode)
)

insert into BranchDetails values ('Cairo' , 'xyz', 'abc') -- Allowed

insert into BranchDetails values ('Cairo' , 'abc' , 'prq') -- Allowed

-- insert into BranchDetails values ('Cairo' , 'xyz' , 'pqr') Not Allowed


-- check constraint in sql-server

create table project (
	proj_id int not null check (proj_id between 0 and 1000),
	proj_name varchar(55) not null,
	entered_date datetime not null check (entered_date <= current_timestamp),
	dept_no int check (dept_no > 0 and dept_no < 100)
)

insert into project 
values (2 , 'Web-Application' , '2023-05-01 06:33:50.1', 10)



--insert into project values (3 , 'Mobile-Application' , '2018-04-27 12:18:46.813' , 101)
-- Not Allowed

