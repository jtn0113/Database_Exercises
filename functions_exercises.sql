
select count(gender), gender
from employees 
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
GROUP BY gender;

select concat(first_name, " ", last_name) AS 'name'
from employees 
where last_name 
like 'e%' and  last_name like '%e'
order by concat(first_name, " ", last_name);

select *,
	datediff(now(), hire_date) AS 'days_employed'
from employees 
where hire_date 
between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by birth_date, hire_date desc;

select * 
from employees 
where last_name 
like '%q%'
and last_name not like '%qu%'
GROUP BY first_name, last_name;

select *, count(concat(first_name, " ", last_name)) AS 'repeated'
from employees 
where last_name 
like '%q%'
and last_name not like '%qu%'
GROUP BY first_name, last_name;


