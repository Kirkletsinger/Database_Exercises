SELECT COUNT(*), gender 
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER by gender ASC;


SELECT CONCAT(first_name, ' ', last_name), birth_date
FROM employees
WHERE first_name LIKE 'e%'
AND last_name LIKE '%e'
ORDER BY birth_date DESC;


SELECT emp_no, first_name, last_name, birth_date, DATEDIFF(curdate(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY DATEDIFF(curdate(), hire_date) DESC;


SELECT CONCAT(last_name),first_name
FROM employees
WHERE last_name NOT LIKE '%q'
AND last_name LIKE 'q%'
GROUP BY first_name, last_name
ORDER BY ('last_name');