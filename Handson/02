USE Hands_on;
CREATE TABLE Supplier
(
Supplier_id NUMERIC(5),
Supplier_name VARCHAR(150),
Address VARCHAR(150),
City VARCHAR(50),
State VARCHAR(15),
Country VARCHAR(15),
Contact VARCHAR(10)
);
ALTER TABLE supplier
ADD CONSTRAINT valid_no
CHECK (length(Contact)=10);
INSERT INTO Supplier VALUES(2, 'DON', 'PORTHU', 'NEW YORK', 'SPAIN', 'INDIA', 'KB');
select * from Supplier;
INSERT INTO Supplier VALUES(5, 'DON', 'PORTHU', 'NEW YORK', 'SPAIN', 'INDIA', '123456789');
