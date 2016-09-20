SELECT * FROM employees

WHERE gender = 'M'

and (first_name = 'Irena'
 
or first_name = 'Vidya'

or first_name = 'Maya')

order by last_name ASC;





SELECT * FROM employees

WHERE last_name LIKE 'E%'

or last_name like '%e'

order by emp_no DESC;



SELECT * FROM employees

where hire_date between '1990-01-01' and '1999-12-31'

and birth_date like '%-12-25'

order by birth_date ASC, hire_date DESC;



