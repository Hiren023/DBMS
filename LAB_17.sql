

--Part – A:
--1. Create a view Employee_All with all columns.
CREATE VIEW EMP_ALL AS 
SELECT *FROM EMPLOYEE
--2. Create a view Employee_NameDeptSalary having columns FirstName, Department and Salary.
CREATE VIEW EMPLOYEE_NameDeptSalary AS
SELECT FIRSTNAME,DEPARTMENT,SALARY FROM EMPLOYEE

SELECT *FROM EMPLOYEE
--3. Create a view Employee_Basic having columns EID, FirstName and City.
CREATE VIEW EMPLOYEE_BASIC AS
SELECT EID, FIRSTNAME,CITY FROM EMPLOYEE
SELECT *FROM EMPLOYEE

--4. Create a view IT_Employees that displays IT department data only.
CREATE VIEW EMPLOYEE_BASIC AS
SELECT EID, FIRSTNAME,CITY FROM EMPLOYEE
--5. Create a view HR_Employees that displays HR department data only.
CREATE VIEW HR_EMPLOYEE AS
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT='HR'
--6. Create a view Employee_2026 that displays employees joined in 2026 only.
CREATE VIEW EMPLOYEE_2026 AS
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR='2026'

--7. Create a view Patel_Employees that displays employees whose last name is PATEL.
CREATE VIEW PATEL_EMPLOYEE AS
SELECT * FROM EMPLOYEE
WHERE LASTNAME='PATEL'


--8. Create a view High_Salary_Emp having all columns but employees whose salary is more than 12000.
CREATE OR ALTER VIEW HIGH_EMP AS
SELECT * FROM EMPLOYEE
WHERE SALARY>12000
SELECT * FROM HIGH_EMP
--9. Create a view that displays information of all employees whose salary is above 14000.
CREATE VIEW Salary_Above_14000_Emp
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY > 14000

SELECT * FROM Salary_Above_14000_Emp
--10. Create a view that displays employees having salary below 10000.
CREATE VIEW Salary_10000_Emp
AS
SELECT * 
FROM EMPLOYEE
WHERE SALARY < 10000

SELECT * FROM Salary_Above_14000_Emp
--11. Create a view Server_Dept that displays Server department employees only.
CREATE VIEW SERVER_DEPT
AS
SELECT * 
FROM EMPLOYEE
WHERE DEPARTMENT ='SERVER'

SELECT * FROM SERVER_DEPT
--12. Insert a new record into Employee_Basic view. (111, MEET, SURAT)
INSERT INTO Employee_Basic
VALUES (111, 'MEET', 'SURAT')

SELECT * FROM Employee_Basic
--13. Update the department of DEEP from ADMIN to IT in Employee_NameDeptSalary view.
UPDATE Employee_NameDeptSalary
SET DEPARTMENT = 'IT'
WHERE FIRSTNAME = 'DEEP'

SELECT * FROM Employee_NameDeptSalary
--14. Delete an employee whose EID is 107 from Employee_Basic view.
DELETE FROM EMPLOYEE_BASIC WHERE EID='107'
SELECT * FROM EMPLOYEE_BASIC
--15. Drop IT_Employees view from the database.
DROP VIEW IT_Employees

--Part – B:
--16. Create a view Admin_Employees that displays ADMIN department employees only.
CREATE VIEW ADMIN_EMP AS
SELECT*FROM EMPLOYEE
WHERE DEPARTMENT='ADMIN'

SELECT*FROM ADMIN_EMP
--17. Create a view Female_Employees that displays female employee data only.
CREATE VIEW FEMALE_EMPOYEES AS
SELECT*FROM EMPLOYEE
WHERE GENDER='FEMALE'
--18. Create a view Male_Employees that displays male employee data only.
CREATE VIEW MALE_EMPOYEES AS
SELECT*FROM EMPLOYEE
WHERE GENDER='MALE'
SELECT *FROM MALE_EMPOYEES
--19. Create a view Rajkot_Employees that displays employees from Rajkot city only.
CREATE VIEW RAJKOT_EMPOYEES AS
SELECT*FROM EMPLOYEE
WHERE CITY='RAJKOT'
SELECT *FROM RAJKOT_EMPOYEES
--20. Create a view Ahmedabad_Employees that displays employees from Ahmedabad city only.
CREATE VIEW Ahmedabad_Employees
AS
SELECT * FROM EMPLOYEE

WHERE CITY = 'Ahmedabad'

SELECT * FROM Ahmedabad_Employees
--21. Create a view Salary_Between that displays employees whose salary is between 10000 and 14000.
CREATE VIEW Salary_Between
AS
SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 10000 AND 14000

SELECT * FROM Salary_Between
--22. Create a view Recent_Employees that displays employees joined after 2023.
CREATE VIEW Recent_Employees
AS
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR > 2023

SELECT * FROM Recent_Employees
--23. Create a view Old_Employees that displays employees joined before 2023.
CREATE VIEW Old_Employees
AS
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR < 2023

SELECT * FROM Old_Employees
--24. Create a view Employees_Start_R that displays employees whose first name starts with R.
CREATE VIEW Employees_Start_R
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'R%'

SELECT * FROM Employees_Start_R

--25. Create a view Employees_End_A that displays employees whose first name ends with A.
CREATE OR ALTER VIEW Employees_End_A
AS
SELECT * FROM  EMPLOYEE
WHERE FIRSTNAME LIKE '%A'

SELECT * FROM Employees_End_A


--Part – C:
--26. Create a view Employees_NameContains_H that displays employees whose first name contains H.
CREATE VIEW Employees_NameContains_H
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%H%'

SELECT * FROM Employees_NameContains_H

--27. Create a view for the employees whose first name contains vowels.
CREATE VIEW Employees_NameContains_vowels
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[A,E,I,O,U]%'

SELECT * FROM Employees_NameContains_vowels

--28. Create a view FourLetter_Name having EID, FirstName and Department columns in which FirstName consists of four letters.
CREATE VIEW FourLetter_Name
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '____'

SELECT EID,FIRSTNAME,DEPARTMENT FROM FourLetter_Name

--29. Create a view for the employees whose name starts with M and ends with N.
CREATE VIEW FirstName_starts_M_ends_N
AS
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'M%N'

SELECT * FROM FirstName_starts_M_ends_N

--30. Create a view Transport_Dept that displays Transport department employees only.
CREATE VIEW Transport_Dept
AS
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT = 'Transport'
SELECT * FROM Transport_Dept