/*CREATE TABLE restaurent (
	name VARCHAR(255),
	contact_no VARCHAR(255),
	addresss VARCHAR(255)
);

CREATE TABLE manager (
	
	ID INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(255),
	contact_no VARCHAR(255)
);

CREATE TABLE has(
	Res_name VARCHAR(255),
	Mg_ID VARCHAR(255)
);



CREATE TABLE item(	
	ID INT,
	Descriptions VARCHAR(255),
	price INT

);


CREATE TABLE Customers(
	Cus_ID INT PRIMARY KEY IDENTITY(100,1),
	name VARCHAR(255),
	contact_no VARCHAR(255),
	addresss VARCHAR(255),
	username VARCHAR(255)	
);

CREATE TABLE place(
	orderNo INT,
	Cus_ID INT
);

CREATE TABLE Orders(
	orderNo INT PRIMARY KEY IDENTITY(800,1),
	OrderedItem TEXT
);*/


SELECT ID, name, contact_no FROM has h INNER JOIN manager m ON h.Mg_ID = m.ID WHERE h.Res_name = 'Youtube';

SELECT * FROM item;

INSERT INTO Customers (name,contact_no,addresss,username) VALUES ('x2','a2','w2','e2');


SELECT * FROM Customers 
WHERE Cus_ID = (
    SELECT IDENT_CURRENT('Customers'));
    


SELECT name, contact_no, addresss, OrderedItem FROM Customers c
JOIN place p ON c.Cus_ID = p.Cus_ID
JOIN Orders o ON p.orderNo = o.orderNo;
    
    
    