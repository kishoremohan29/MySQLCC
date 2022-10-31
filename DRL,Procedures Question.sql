Create database DRL;
USE DRL;
create table pet_owner(
					Owner_Id INT NOT NULL,
					Name CHAR(50),
					Surname CHAR(50),
					Street_Address CHAR(100) ,
					City CHAR (100) ,
					State CHAR(10) DEFAULT 'Michigan',
                    Zip_Code int,
					PRIMARY KEY(Owner_Id)
                    );

CREATE TABLE pet(
			 Pet_Id CHAR(10) NOT NULL ,
			 Name CHAR(20) NOT NULL,
             Kind CHAR(10),
             Gender CHAR(6),
             Age int,
             Owner_ID int,
             PRIMARY KEY(Pet_Id),
             foreign key (Owner_Id) REFERENCES pet_owner(Owner_Id)
             );
             
CREATE TABLE procedure_history(
			Pet_Id CHAR(10),
            Procedure_date date,
            Procedure_type CHAR(50),
            Description CHAR(100),
            foreign key (Pet_Id) REFERENCES pet(Pet_Id)
            );
INSERT INTO pet_owner VALUES (1070,'Jessica','Velazquez','3861 Woodbridge Lane','Southfield','Michigan',48034);          
INSERT INTO pet_owner VALUES (2419,'Luisa','Cuellar','1308 Shingleton Road','Kalamazoo','Michigan',49007);          
INSERT INTO pet_owner VALUES (2863,'John','Sebastian','3221 Perry Street','Davison','Michigan',48423);          
INSERT INTO pet_owner VALUES (3518,'Connie','Pauley','1539 Cunningham Court','BLoomfield Township','Michigan',48302);          
INSERT INTO pet_owner VALUES (3663,'Lenna','Haliburton','4217 Twin Oaks Drive','Traverse City','Michigan',48684);          
INSERT INTO pet_owner VALUES (5289,'Patrick','Jane','2222 Dennis Drive','Southfield','Michigan',48034);          
INSERT INTO pet_owner VALUES (6049,'Debbie','Metivier','315 Goff Avenue','Grand Rapids','Michigan',49503);          
INSERT INTO pet_owner VALUES (7663,'Julia','Gowam','1324 Ben Street','Lansing','Michigan',48933);          
INSERT INTO pet_owner VALUES (7896,'Meredith','Grey','Golf ages','Davison','Michigan',49007);
            
INSERT INTO pet VALUES ('J6-8562','Blackie', 'Dog','Male',11,7896);    
INSERT INTO pet VALUES ('M0-2904','Simba', 'Cat','Male',1,3518);    
INSERT INTO pet VALUES ('P2-7342','Cuddles', 'Dog','Male',13,3663);    
INSERT INTO pet VALUES ('Q0-2001','Roomba', 'Cat','Male',9,2863);    
INSERT INTO pet VALUES ('R3-7551','Keller', 'Parrot','Female',2,6049);    
INSERT INTO pet VALUES ('X0-8765','Vuitton', 'Parrot','Female',11,1070);    
INSERT INTO pet VALUES ('Z4-4045','Simba', 'Cat','Male',0,5289);  
INSERT INTO pet VALUES ('Z4-5652','Priya', 'Cat','Female',7,7663);

INSERT INTO procedure_history VALUES ('J6-8562','2016-12-01','VACCINATIONS','Galaxie(DHLPP)');
INSERT INTO procedure_history VALUES ('Z4-4045','2016-01-18','General Surgeries','Declaw');
INSERT INTO procedure_history VALUES ('Q0-2001','2016-12-14','HOSPITALIZATION','All Hospitalization');
INSERT INTO procedure_history VALUES ('M0-2904','2016-01-17','General Surgeries','Salivary Cyst Ex');
INSERT INTO procedure_history VALUES ('R3-7551','2016-12-12','VACCINATIONS','PCR');
INSERT INTO procedure_history VALUES ('P2-7342','2016-01-21','General Surgeries','Ear Crop');
 
Select pet.Pet_Id, pet.Name,pet_owner.Name, procedure_history.Description from pet,pet_owner,procedure_history where procedure_history.Procedure_type= ‘General Surgeries’;
     