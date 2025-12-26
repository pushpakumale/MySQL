use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

select * from employee_demographics
where employee_id in (select employee_id from employee_salary
						where dept_id = 1); #shows employees from demographics table who work in department 1
                        
select first_name, last_name, salary,
(select avg(salary) from employee_salary) as average_salary,
case 
	when (select avg(salary) from employee_salary) < salary then 'Above Average'
    when (select avg(salary) from employee_salary) > salary then 'Below Average'
end as salary_status
from employee_salary;

-- This query retrieves each employee's first name, last name, and salary
-- It also calculates the overall average salary of all employees using a subquery
-- The CASE statement compares each employee's salary to the average:
-- If the average salary is greater than the employee's salary, it labels 'Below Average'
-- If the average salary is less than the employee's salary, it labels 'Above Average' 
-- The average salary subquery is executed for each row

