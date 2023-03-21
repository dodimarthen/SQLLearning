CREATE TABLE Customers (
	CustomerID int,
	Name varchar(255),
	Age int,
	Gender varchar(255),
	Email varchar(255),
	Phone int);

SELECT*FROM Customers;

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('1', 'John Lennon', '35', 'M', 'Johnlennon@gmail.com', '5551234');

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('2', 'Jane Doe', '28', 'F', 'Johndoe@gmail.com', '5531234');

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('3', 'Bob Johnson', '42', 'M', 'BobJohnson@gmail.com', '532234');

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('4', 'Emily Davis', '31', 'F', 'Emilydavis@gmail.com', '5756234');

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('5', 'Mike Wilson', '27', 'M', 'Mikewilson@gmail.com', '5568534');

INSERT INTO Customers(CustomerID, Name, Age, Gender, Email, Phone)
VALUES('6', 'Sarah Turner', '38', 'F', 'Sarahturner@gmail.com', '58674353');

/* CASE NUMBER 1
Write a SQL query to retrieve all customer information from the Customers table. */
SELECT*FROM Customers;

/* CASE NUMBER 2
Write a SQL query to retrieve only the names of all customers from the Customers table.*/
SELECT Name from Customers;

/*CASE NUMBER 3
Write a SQL query to retrieve all customers who are female*/
SELECT*FROM Customers WHERE Gender='F';

/*CASE NUMBER 4
Write a SQL query to retrieve all customers who are under 30 years old.*/
SELECT*FROM Customers WHERE Age <= '30';

/*CASE NUMBER 5
Write a SQL query to retrieve all customers who have an email address containing the word "gmail".*/
SELECT*FROM Customers WHERE email LIKE '%gmail%';

/*CASE NUMBER 6
Write a SQL query to retrieve the average age of all customers.*/
SELECT AVG(Age) FROM Customers;

/*CASE NUMBER 7
Write a SQL query to retrieve the number of male customers.*/
SELECT Count(Gender) FROM Customers WHERE Gender='M';

/*CASE NUMBER 8
Write a SQL query to retrieve the number of female customers.*/
SELECT Count(Gender) FROM Customers WHERE Gender='F';

/*CASE NUMBER 9
Write a SQL query to retrieve the name and age of the oldest customer.*/
SELECT Name, Age FROM Customers WHERE Age=(SELECT MAX(Age) FROM Customers);

/*CASE NUMBER 10
Write a SQL query to retrieve the name and age of the youngest female customer.*/
SELECT NAME, Age FROM Customers WHERE Age=(SELECT MIN(Age) FROM Customers);