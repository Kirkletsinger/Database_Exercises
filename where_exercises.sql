SELECT * FROM employees WHERE first_name IN ('Irena','Vindya','Maya');
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE hire_date BETWEEN '1990_01_01' AND '1999_01_01';
SELECT * FROM employees WHERE birth_date LIKE '%12-25'
SELECT * FROM employees WHERE last_name LIKE '%q%';