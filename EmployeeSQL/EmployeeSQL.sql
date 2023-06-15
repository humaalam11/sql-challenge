--Create 6 data sets using .sql code:

-- 1) Creating departments columns and import data file into table:
-- Creating columns:
CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR
);

SELECT *
FROM departments

-- 2) Creating dept_emp columns and import data file into table:
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR
);

SELECT *
FROM dept_emp

-- 3) Creating dept_manager columns and import data file into table:

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL
);

SELECT *
FROM dept_manager

-- 4) Creating employees columns and import data file into table:
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name	VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex	VARCHAR NOT NULL,
	hire_date  DATE NOT NULL
);
SELECT *
FROM employees;

-- 5) Creating salaries columns and import data file into table:
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);
SELECT *
FROM salaries;

-- 6) Creating titles columns and import data file into table:
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);
SELECT *
FROM titles;

-- **DATA ANALYSIS** --
-- 1) List the employee number, last name, first name, 
-- sex, and salary of each employee (2 points):

SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no)
	

--2) List the first name, last name, and hire date for 
--the employees who were hired in 1986 (2 points):

SELECT first_name, last_name, hire_date
FROM employees
	
	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
	

--3) List the manager of each department along with their department 
-- number, department name, employee number, last name, and first name.
SELECT dept_manager.emp_no, dept_manager.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments
ON (dept_manager.dept_no = departments.dept_no)
JOIN employees
ON (dept_manager.emp_no = employees.emp_no)

--4) List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.
SELECT departments.dept_no, dept_emp.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_emp
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
JOIN employees
ON (dept_emp.emp_no = employees.emp_no)

--5) List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
	WHERE last_name LIKE 'B%' AND first_name = 'Hercules'

-- 6) List each employee in the Sales department, including their 
-- employee number, last name, and first name.
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp
ON (departments.dept_no = dept_emp.dept_no)
JOIN employees
ON (dept_emp.emp_no = employees.emp_no)
	WHERE dept_name = 'Sales'

-- 7) List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name:
SELECT employees.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp
ON (departments.dept_no = dept_emp.dept_no)
JOIN employees
ON (dept_emp.emp_no = employees.emp_no)
	WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8) List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name):

SELECT employees.last_name, COUNT(employees.last_name) AS "Count of Last Name"
FROM employees
GROUP BY employees.last_name
ORDER BY employees.last_name DESC;


