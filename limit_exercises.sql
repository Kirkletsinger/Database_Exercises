SELECT * FROM employees

GROUP BY last_name

ORDER by last_name DESC

LIMIT 10;




SELECT * FROM employees

WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'

AND birth_date LIKE '%-12-25'

ORDER BY birth_date ASC, hire_date DESC

LIMIT 5;




SELECT * FROM employees

WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'

AND birth_date LIKE '%-12-25'

ORDER BY birth_date ASC, hire_date DESC

LIMIT 5 OFFSET 45;