USE employees;
# 1
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_Date
    FROM employees
    WHERE emp_no = 101010
);
# 2
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);
# 3
SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
) AND gender ='F';

# bonus
SELECT dept_name
FROM departments
WHERE dept_no IN(
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE emp_no IN(
            SELECT emp_no
            FROM dept_manager
) AND gender ='F'));
