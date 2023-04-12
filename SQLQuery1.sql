CREATE DATABASE Department

CREATE TABLE Employee(
Id int primary key identity,
Fullname nvarchar(255) not null,
Age int check (Age > 0) not null,
Email nvarchar(100) unique not null,
Salary decimal CHECK (Salary between 300 AND 2000)
)

INSERT INTO Employee
VALUES ('CEO', 45, 'ceo@wisestamp.ru', 1900),
		('Teacher', 25, 'teacher@gmail.com', 1000),
		('Worker', 30, 'worker@inbox.ru', 500),
		('Maid', 40, 'maid@mail.ru', 400)
		
SELECT * from Employee

UPDATE Employee
SET Salary = 1950
WHERE Id=1

SELECT * from Employee
WHERE Salary BETWEEN 500 AND 1500

SELECT Fullname, Email, Salary from Employee
ORDER BY Salary DESC
