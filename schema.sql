-- This file contains the SQL commands to create all tables
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(255) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary MONEY NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(255) NOT null,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY(dept_no, emp_no)
);
