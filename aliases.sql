SELECT CONCAT (emp_no, ' - ', last_name, first_name) AS full_name, birth_date as DOB 
FROM employees
ORDER by last_name
LIMIT 10;
