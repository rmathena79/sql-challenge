
-- This file contains the SQL queries to solve the challenge questions.

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e    
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
