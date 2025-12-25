select * from employee_salary;

select first_name, last_name, salary from employee_salary
where first_name = 'April';  #shows the salary of employee whose first name is April

select first_name, last_name, salary from employee_salary
where salary >= 60000; #shows the salary of only those employees who have salary 60000 or more

select first_name, last_name, salary from employee_salary
where salary <= 70000; #shows the salary of only those employees who have salary 70000 or less

select first_name, last_name, salary from employee_salary
where salary > 50000 and dept_id = 1; #shows the salary of those employee that are in dept 1 and whose salary is greater than 50000

select * from employee_demographics;

select first_name, last_name, gender, birth_date from employee_demographics
where (gender = 'female' and age > 30) or birth_date > 1985-01-01;

select first_name, last_name from employee_demographics
where first_name like 'a%'; #shows the first and last name of employees whose first name start with a

select first_name, last_name from employee_demographics
where first_name like 'a__%'; #shows the first and last name of employees whose name first start with a and have atleast 2 letters after a

select first_name, last_name from employee_demographics
where first_name like '%a'; #shows the first and last name of employees whose first name ends with a

select first_name, last_name from employee_demographics
where first_name like 'a___%'; #shows the first and last name of employees whose first name start with a and have atleast 3 letters after a

select first_name, last_name from employee_demographics
where first_name like '%nn%'; #shows the first and last name of employees whose name has nn in between in first name

