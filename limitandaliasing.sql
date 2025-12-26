use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

select * from employee_demographics
order by age desc
limit 5; #shows 5 oldest employees

select * from employee_demographics
order by age desc
limit 2, 1; #skips the 2 oldest employees and shows the next 1 oldest

#use of aliasing -- 

select gender, avg(age) as Average from employee_demographics
group by gender
having Average > 35; #shows genders with an average age greater than 35