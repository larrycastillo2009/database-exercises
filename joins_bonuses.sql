USE employees;

# 1
SELECT *
from employees
join employees on employees.emp_no = employees.hire_date


# 2
SELECT COUNT(first_name), title
FROM employees
JOIN titles ON titles.emp_no = employees.emp_no
WHERE first_name = 'Aamod'
GROUP BY first_name, title;

# 3
SELECT dept_name as department, CONCAT(first_name, ' ', last_name)
FROM employees
join dept_manager dm on employees.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where gender = 'F';

# 4
