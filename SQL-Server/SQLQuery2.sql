use TestDB

-- to create a table in sql-server
create table student (
	No INT , 
	Name VARCHAR(50)
)



-- to change a data type from an old data type to a new data type 
-- and also to change the size of a data type of a column 

-- ALTER-ALTER COLUMN 
alter table student alter column No Bigint

-- Change the width of a column
alter table student alter column Name varchar(100)

-- Change the data type of an existing column
alter table student alter column Name NVARCHAR (100)

-- Change the column NULL to NOT NULL
alter table student alter column No Bigint NOT NULL 

-- Add new column for an existing table 
alter table student add birthDate date 

-- delete column 
alter table student drop column salary

-- SP_RENAME command 
exec sp_rename 'TestDB.student.dateBirth' , 'studentDateBirth'

-- truncate command
truncate table student
--Note: The truncate command will delete rows but not the structure of the table.


-- drop command
drop table student
--Note: When a table is dropped all the dependent constraint which are associated with the table also gets dropped.
--We cannot drop a master table.

