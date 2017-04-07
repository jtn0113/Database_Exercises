SELECT roles.name, count(users.role_id)
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY users.role_id



1.

SELECT departments.dept_name AS 'Department Name', 
		concat(employees.first_name, " ", employees.last_name) AS 'Department Manager'
FROM dept_manager
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now();


2.

SELECT departments.dept_name AS 'Department Name', 
		concat(employees.first_name, " ", employees.last_name) AS 'Department Manager'
FROM dept_manager
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
	and employees.gender = 'F';


3.

SELECT title, count(title)
FROM employees
RIGHT JOIN titles ON employees.emp_no = titles.emp_no
RIGHT JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
RIGHT JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Customer Service'
	AND titles.to_date > now()
GROUP BY title;


4.

SELECT departments.dept_name AS 'Department Name', 
		concat(employees.first_name, " ", employees.last_name) AS 'Department Manager',
		salaries.salary AS 'Salary'
FROM dept_manager
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON salaries.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
	AND salaries.to_date > now()
GROUP BY departments.dept_name;


BONUS.

SELECT concat(employees.first_name, " ", employees.last_name) AS 'Employee Name',
	departments.dept_name AS 'Department Name',
	concat(managers.first_name, " ", managers.last_name) AS 'Manager Name'
FROM employees
JOIN dept_emp 
	ON dept_emp.emp_no = employees.emp_no
JOIN departments 
	ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager 
	ON dept_manager.dept_no = departments.dept_no
JOIN employees AS managers 
	ON managers.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > now()
	AND dept_manager.to_date > now()


BONUS Historic average salary of workers M vs. F.

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries 
	ON salaries.emp_no = employees.emp_no
GROUP BY employees.gender;


BONUS Current average salary of workers M vs. F.

SELECT employees.gender, AVG(salaries.salary)
FROM employees
JOIN salaries 
	ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date > now()
GROUP BY employees.gender;


BONUS Current count of M vs F managers

SELECT employees.gender, count(employees.gender)
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > now()
GROUP BY employees.gender;


BONUS Current count of M vs F Engineers

SELECT employees.gender, count(employees.gender)
FROM employees
JOIN titles ON titles.emp_no = employees.emp_no
WHERE titles.title = 'Engineer'
	AND titles.to_date > now()
GROUP BY employees.gender;





Count per job title

SELECT titles.title, count(titles.title)
FROM employees
RIGHT JOIN titles ON employees.emp_no = title
GROUP BY titles.title;
