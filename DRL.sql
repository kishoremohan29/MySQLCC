use test;
drop table pet;
create table pet(
Pet_id varchar(10) primary key,
Name varchar(50),
Kind varchar(10),
Gender varchar(6),
Age int,
Owner_id int 
);
create table Pet_Owner(
Owner_id int primary key,
Name varchar(50),
Sur_Name varchar(50),
Street_Address varchar(50),
City varchar(50),
State varchar(50),
Zip_Code int
);
create table Procedure_History(
Pet_id int primary key,
Procedure_Date date,
Procedure_type varchar(50),
Description varchar(100)
);
delimiter go

    
ALTER TABLE Pet_Owner
ALTER State
SET DEFAULT 'Michigan'go

    
ALTER TABLE pet
ADD FOREIGN KEY (Owner_id) REFERENCES Pet_Owner(Owner_id)go

    
ALTER TABLE Procedure_History
ADD FOREIGN KEY (Pet_id) REFERENCES pet(Pet_id)go
