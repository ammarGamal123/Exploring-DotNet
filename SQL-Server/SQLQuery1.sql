-- to create a new database 
create database TestDB

-- to rename database 
alter database TestDB modify name = TestDBV2

-- another way for renaming 
execute sp_renameDB 'TestDB' , 'TestDBV2'

-- to delete a database
drop database TestDB

-- if the database is connected to multiple devices
-- you need to make it single-user mode
alter database TestDB set single_user with rollback immediate

