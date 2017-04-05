select distinct title
from titles;

select distinct title
from titles
order by title;

select last_name
from employees 
where last_name 
like 'e%' and  last_name like '%e'
group by last_name;

select concat(first_name, " ", last_name) AS 'FULL NAME'
from employees
where last_name
like 'e%' and  last_name like '%e'
GROUP BY concat(first_name, " ", last_name);

select * 
from employees 
where last_name 
like '%q%'
and last_name not like '%qu%';

select * 
from employees 
where last_name 
like '%q%'
and last_name not like '%qu%'
GROUP BY last_name;