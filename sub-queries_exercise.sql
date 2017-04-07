1.

SELECT *
from employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010	
);

2.

SELECT title, emp_no
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

3.

SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_manager
	)
	AND gender = 'F';

BONUS.

SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F')
	AND to_date > now()
);