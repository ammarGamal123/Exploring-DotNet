use TestDB

create table Gender (
	id int primary key,
	Gender Nvarchar(50)
)

insert Gender values (1 , 'Male')
insert Gender values (2 , 'Female')
insert Gender values (3 , 'Male')

select * from Gender

create table person (
	[id] [int] primary key,
	[name] [varchar](100) not null,
	[email] [varchar](100) not null,
	[GenderID] [int] NULL
)

-- Add a foreign key reference using query

alter table person
add constraint Person_GenderId foreign key (GenderID) references Gender(ID)

insert person values (1 , 'abc','abc@gmail.com',1)
insert person values (2 , 'pqr','pqr@gmail.com',2)
insert person values (3 , 'xyz','xyz@gmail.com',3)

drop table person

create table person (
	id int primary key,
	name varchar(100),
	email varchar(100),
	GenderID int constraint FK_Person_GenderID foreign key references dbo.Gender(Id)

	on delete cascade
	on update cascade
)

Insert into Person values (1, 'abc','abc@gmail.com',1)
Insert into Person values (2, 'pqr','pqr@gmail.com',2)
Insert into Person values (3, 'xyz','xyz@gmail.com',3)

delete from gender
where id = 2

select * from gender

select * from person

insert gender values (4 , 'Female')

insert person values (4 ,  'mido', 'mido@gmail.com',4)

UPDATE Gender SET Id = 4 where Gender = 'Male'  -- Allowed

Select * from Person
select * from Gender