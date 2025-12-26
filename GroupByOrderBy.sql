use parks_and_recreation;

select * from employee_demographics;

select gender, AVG(age) from employee_demographics
group by gender; #shows the average age of both genders from table employee demographics

select occupation, salary from employee_salary
group by occupation, salary; #shows the salary of each employee for each occupation in employee salary table

select gender, avg(age), min(age), max(age), count(age) from employee_demographics
group by gender; #shows the average age, minimum and maximum age and how many employees are there from both genders in table employee demographics

select * from employee_demographics
order by gender desc, age asc; #shows all the values of employee demographic table by sorting it wrt gender in descending order and wrt age in ascending order

select * from employee_demographics
order by 5, 4; #sorts all the values of employee demographic table wrt 5th column in ascending (by default) and and 4th column in ascending (by default)

