USE employees;
# 2
SELECT departments.dept_name AS 'Department', CONCAT(e.first_name,' ', e.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS e ON e.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY 'Department';
# 3
SELECT departments.dept_name AS 'Department', CONCAT(e.first_name,' ', e.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS e ON e.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND e.gender ='F'
ORDER BY 'Department';
# 4
SELECT titles.title AS Title, COUNT(*) AS Count
FROM departments
JOIN dept_emp on dept_emp.dept_no = departments.dept_no
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;
# 5
SELECT departments.dept_name AS 'Deparment Name', CONCAT(emp.first_name,' ', emp.last_name) AS 'Name', salaries.salary AS 'Salaray'
FROM departments
JOIN dept_manager AS dm ON departments.dept_no = dm.dept_no
JOIN employees AS emp ON emp.emp_no = dm.emp_no
JOIN salaries ON emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name

# BONUS
SELECT CONCAT(employees.first_name,' ', employees.last_name) AS 'Employee Name',
d.dept_name AS 'Department Name', CONCAT(emp2.first_name, emp2.last_name)
FROM employees
JOIN employees emp2 on emp2.emp_no = employees.emp_no
     JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN dept_manager dm on employees.emp_no = dm.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%' AND dm.to_date LIKE '9999%'





