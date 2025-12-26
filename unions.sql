use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

-- Joins allow to combine Columns whereas Unions allow to combine rows

-- by default a UNION is UNION DISTINCT

select first_name, last_name from employee_demographics
union
select first_name, last_name from employee_salary; #combines unique first and last names from both tables (removes duplicates)

select first_name, last_name from employee_demographics
union all
select first_name, last_name from employee_salary; #combines all first and last names from both tables, including duplicates

-- use case of unions
-- The Parks department is trying to cut their budget and wants to identify older employees they can push out or high paid employees who they can reduce pay or push out.

select first_name, last_name, 'old man' as label from employee_demographics
where age > 45 and gender = 'male'
union
select first_name, last_name, 'old lady' as label from employee_demographics
where age > 45 and gender = 'female'
union
select first_name, last_name, 'highly paid' as label from employee_salary
where salary > 70000
order by first_name;