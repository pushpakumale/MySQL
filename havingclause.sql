use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

select gender, avg(age) from employee_demographics
group by gender 
having avg(age) > 40; #shows the gender of the employee and average age who have 40+ average age

select occupation, avg(salary) from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;  #shows the occupation and average salary for employees with manager in their title who have an average salary above 75,000
