-- 1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees

-- 2. Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT titles, from_date, to_date
FROM titles



-- 3. Create a new table using the INTO clause.
drop Table retirement_info;

SELECT emp_no, first_name, last_name, hire_date
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1960-01-01' AND '1969-12-31')
AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31');

select * FROM retirement_info;

-- 4. Join both tables on the primary key.
SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
		employees.hire_date,
		salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- 5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

-- 6. Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
INTO retirement_titles
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

SELECT * FROM retirement_titles;
--7.drop Table retirement_titles;
DROP TABLE retirement_titles;

SELECT employees.emp_no, 
		employees.first_name, 
		employees.last_name,
		titles.titles,
		titles.from_date,
		titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

SELECT * FROM retirement_titles;

-- 8.  compy Start code to Challenge .sql
-- Copied

-- 9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
--     These columns will be in the new table that will hold the most recent title of each employee.
SELECT 
-- 10. -- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;