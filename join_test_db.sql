use join_test_db;

	--Join Users/Roles
	SELECT users.name AS user_name, roles.name AS role_name
	FROM USERS
	JOIN roles ON users.role_id = roles.id;
	-- LEFT JOIN
	SELECT count(role_id), users.name AS user_name, roles.name as role_name
	FROM users
	LEFT join roles ON users.role_id = roles.id
	GROUP BY role_name, user_name
	ORDER by count(role_id);
	--RIGHT JOIN
	SELECT users.name AS user_name, roles.name AS role_name
	FROM users
	RIGHT JOIN roles ON users.role_id = roles.id;

	---Employees Database

	--1
		SELECT departments.dept_name, concat(employees.first_name, " ",  employees.last_name) 
	FROm departments
	JOIN dept_manager
	ON departments.dept_no = dept_manager.dept_no
	JOIN employees
	ON employees.emp_no = dept_manager.emp_no
	WHERE to_date > curdate();

	--Find the name of all departments currently managed by women.
	SELECT departments.dept_name, concat(employees.first_name, " ", employees.last_name) AS full_name
	FROM departments
	JOIN dept_manager
	ON departments.dept_no = dept_manager.dept_no
	JOIN employees
	ON employees.emp_no = dept_manager.emp_no
	WHERE to_date > curdate() AND employees.gender = 'F';

	--Find the current titles of employees currently working in the Customer Service department.

	SELECT title AS Title, COUNT(title)
	FROM titles AS t
	JOIN dept_emp AS de
	   ON de.emp_no = t.emp_no
	JOIN departments AS d
	   ON d.dept_no = de.dept_no
	WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
	GROUP BY title;

	--Find the current salary of all current managers.


	SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Current Manager', s.salary AS 'Salary'
	FROM departments AS d
	JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
	JOIN employees AS e ON dm.emp_no = e.emp_no
	JOIN salaries AS s ON e.emp_no = s.emp_no
	WHERE dm.to_date = '9999-01-01'
	AND s.to_date = '9999-01-01';

	--BONUS

	SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name',
	CONCAT(me.first_name, ' ', me.last_name) AS 'Manager Name'
	FROM employees AS e
	JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
	JOIN departments AS d
	ON d.dept_no = de.dept_no
	JOIN dept_manager AS dm
	ON dm.dept_no = d.dept_no AND dm.to_date > curdate()
	JOIN employees AS me
	ON me.emp_no = dm.emp_no
	WHERE de.to_date > curdate();