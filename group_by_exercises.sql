USE employees;


# 2
SELECT DISTINCT title FROM titles;

# 3
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

# 4
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

# 5
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 6
SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);

# 7
SELECT COUNT(*), gender
FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
GROUP BY gender;
