use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

-- windows functions are really powerful and are somewhat like a group by - except they don't roll everything up into 1 row when grouping. 
-- windows functions allow us to look at a partition or a group, but they each keep their own unique rows in the output

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
order by dem.first_name; #shows each employee’s name and gender along with the average salary for their gender using a window function

select dem.first_name, dem.last_name, gender, salary, sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id; #calculates a running total of salaries within each gender, ordered by employee ID
 
 #row_number assigns a unique sequential number
 #rank assigns the same rank to ties with gaps
 #dense_rank assigns the same rank to ties without gaps
 
select dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id; #assigns a unique rank number to each employee within their gender based on salary (highest to lowest)
    
select dem.first_name, dem.last_name, gender, salary,
rank() over(partition by gender order by salary desc) as emp_rank
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id; #ranks employees within each gender by salary, allowing ties and skipping rank numbers when ties occur
    
select dem.first_name, dem.last_name, gender, salary,
dense_rank() over(partition by gender order by salary desc) as emp_dense_rank
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id; #ranks employees within each gender by salary without skipping rank numbers when ties occur
    
#rank creates gaps in the ranking positions when values tie, while dense_rank keeps positions consecutive with no numerical gaps
