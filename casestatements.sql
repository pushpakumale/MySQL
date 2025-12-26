use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

select first_name, last_name, age,
case
	when age <=30 then 'Young'
    when age between 31 and 45 then 'Middle Aged'
    when age >=46 then 'Old'
end as age_bracket
from employee_demographics; #categorizes employees into age brackets: Young, Middle Aged, or Old

-- The management sent out a memo of employee bonus and pay increase structure
-- Employees making less than or equal to 45k, will get a 5% raise
-- Employees making more than 45k they get a 7% raise
-- Employees working in Finance department will get 10% bonus

select first_name, last_name, salary,
case
	when salary <= 45000 then salary * 1.05
    when salary > 45000 then salary * 1.07
end as hiked_salary, #calculates the salary after applying the appropriate raise
case
	when dept_id = 6 then salary * 0.10
end as bonus #calculates a 10% bonus for employees in the Finance department,as the dept_id 6 is for finance dept
from employee_salary
order by first_name; #orders the results alphabetically by first name