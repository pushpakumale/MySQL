use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

-- by default a Join is a Inner Join

-- inner joins return rows that are the same in both columns

select dim.employee_id, age, occupation
from employee_demographics as dim
inner join employee_salary as sal
	on dim.employee_id = sal.employee_id; #shows employee id, age, and occupation for employees that appear in both tables

-- outer join is of two types left outer join (aka left join) and right outer join (aka right join)
     
-- left join gives all the values of the left table irrespective of the match but with only the values of the right table that are similar to left table
-- right join gives all the values of the right table irrespective of the match but with only the values of the left table that are similar to right table

select * from employee_salary as sal
left join employee_demographics as dim
	on sal.employee_id = dim.employee_id; #shows all employees from salary table and matching demographic data when available
    
select * from employee_salary as sal
right join employee_demographics as dim
	on sal.employee_id = dim.employee_id; #shows all employees from demographics table and matching salary data when available
    
-- self join is where you tie a table to itself

select emp1.first_name as santa_first_name, emp1.last_name as santa_last_name, emp2.first_name as emp_first_name, emp2.last_name as emp_last_name 
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1= emp2.employee_id; #self-join that pairs each employee with the employee whose ID is one greater, making the santa first name employee as the secret santa of emp first name employee

-- joining multiple tables

select dem.employee_id, dem.first_name, dem.last_name, dem.age, dem.gender, sal.occupation, sal.salary, pd.department_name  
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on pd.department_id = sal.dept_id; #shows employee details with salary and department for employees that have a department match