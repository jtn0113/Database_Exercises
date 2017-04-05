select last_name
from employees
group by last_name desc
limit 10 offset 0;

select * 
from employees 
where hire_date like '199%'
and birth_date like '%-12-25'
order by birth_date, hire_date DESC
LIMIT 5 OFFSET 0;

select * 
from employees 
where hire_date LIKE '199%'
and birth_date like '%-12-25'
order by birth_date, hire_date DESC
LIMIT 5 OFFSET 45;