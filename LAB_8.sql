select * from [dbo].[EMPLOYEE];

--1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
select max(salary) as Max_salary,min(salary) as Min_Salary
from EMPLOYEE
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
select sum(salary) as Total_Sal,avg(salary) as Average_Sal
from EMPLOYEE;
--3. Find total number of employees of EMPLOYEE table.
select count(EID) as Total_Emp
from EMPLOYEE;
--4. Find highest salary from Rajkot city.
select max(salary) as highest_salary
from EMPloyee
where city='RAJKOT';
--5. Give maximum salary from IT department.
select max(salary) as highest_salary
from EMPloyee
where DEPARTMENT='it';
--6. Count employee department is HR.
select COUNT(eid) 
from EMPLOYEE
where DEPARTMENT='hr';
--7. Display average salary of Admin department.
select avg(salary)
from EMPLOYEE
where DEPARTMENT='admin';
--8. Display total salary of HR department.
select sum(SALARY) 
from EMPLOYEE
where DEPARTMENT='hr';
--9. Count total number of cities of employee without duplication.
select count( distinct city)
from EMPLOYEE
--10. Count unique departments.
select count( distinct DEPARTMENT)
from EMPLOYEE;
--11. Display minimum salary of employee who belongs to Ahmedabad.
select min(salary) 
from EMPLOYEE
where CITY='Ahmedabad';
--12. Find city wise highest salary.
select city,max(salary)
from EMPLOYEE
group by city;
--13. Find department wise lowest salary.
select DEPARTMENT,min(salary)
from EMPLOYEE
group by DEPARTMENT;
--14. Display minimum salary in each city.
select city,min(salary)
from EMPLOYEE
group by city;
--15. Display average salary of employees from Surat.
select city, avg(Salary)
from EMPLOYEE
where city='surat'
group by city;
--16. Display total salary of female employees.
select sum(salary)
from EMPLOYEE
where GENDER='female';
--17. Count number of male employees.
select count(gender)
from EMPLOYEE
where GENDER='male';
--18. Display city with the total number of employees belonging to each city.
select city,count(eid)
from EMPLOYEE
group by CITY;
--19. Count number of employees in each city where gender is MALE.
select city,count(gender)
from EMPLOYEE
where GENDER='male'
group by city;
--20. Display maximum salary in each department where city is not Ahmedabad.
select DEPARTMENT,max(Salary)
from EMPLOYEE
where CITY!='Ahmedabad'
group by DEPARTMENT;
--21. Display minimum salary in each city where gender is FEMALE.
select city,min(salary)
from EMPLOYEE
where GENDER='female'
group by city;
--22. Give total salary of each department of EMPLOYEE table.
select DEPARTMENT,sum(salary)
from EMPLOYEE
group by DEPARTMENT;
--23. Give average salary of each department of EMPLOYEE table without displaying the respective department name.
select avg(salary)
from EMPLOYEE
group by DEPARTMENT;
--24. Count the number of employees for each department in every city.
select DEPARTMENT,CITY ,COUNT(eid)
from EMPLOYEE
group by DEPARTMENT,CITY;
--25. Calculate the total salary distributed to male and female employees.
select GENDER,sum(salary)
from EMPLOYEE
group by GENDER;
--26. Give city wise maximum and minimum salary of female employees.
select CITY,max(Salary),min(salary)
from EMPLOYEE
where GENDER='female'
group by CITY;
--27. Calculate department, city, and gender wise average salary.
select DEPARTMENT,CITY,GENDER,avg(salary)
from EMPLOYEE
group by DEPARTMENT,CITY,GENDER;
--28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary)-min(salary) as DIFFERENCE
from EMPLOYEE;
--29. Display sum of salaries of department wise where department name consist 5 letter.
select  DEPARTMENT,sum(SALARY)
from EMPLOYEE
where DEPARTMENT like '_____'
group by department;
--30. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select  DEPARTMENT,CITY,max(SALARY)
from EMPLOYEE
where city like 'R%'
group by department,CITY;

