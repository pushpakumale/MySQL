use parks_and_recreation;

select * from employee_demographics;
select * from employee_salary;

select first_name, length(first_name) as length from employee_demographics
order by first_name; #shows each first name with its character length, ordered alphabetically

select first_name, upper(first_name) as uppercase from employee_demographics
order by first_name; #shows each first name converted to uppercase, ordered alphabetically

select first_name, lower(first_name) as lowercase from employee_demographics
order by first_name; #shows each first name converted to lowercase, ordered alphabetically

select trim('       sky       '); #removes leading and trailing spaces from the string
select rtrim('       sky       '); #removes trailing spaces from the string
select ltrim('       sky       '); #removes leading spaces from the string

select first_name, right(first_name, 4), left(first_name, 4), substring(first_name, 2, 3)
from employee_demographics; #shows parts of first names using right, left, and substring functions

#substring(first_name, 2, 3) extracts 3 characters starting from the 2nd character of the first name

select first_name, last_name, substring(birth_date,6,2) as birth_month
from employee_demographics; #extracts the birth month from the birth_date for each employee

select first_name, replace(first_name, 'e', 'a')
from employee_demographics; #replaces all occurrences of 'e' with 'a' in each first name

select first_name, locate('r', first_name)
from employee_demographics; #shows the position of the first occurrence of 'r' in each first name

select first_name, last_name, concat(first_name,' ',last_name) as full_name
from employee_demographics; #combines first and last name into a full name
