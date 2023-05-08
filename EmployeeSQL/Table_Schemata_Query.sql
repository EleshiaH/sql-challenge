-- Create the tables for each csv file

Create table departments (
dept_no VARCHAR (30) Primary Key,
dept_name VARCHAR (30) not null
);

Create table employees (
emp_no int Primary Key,
emp_title_id VARCHAR (30) not null,
birth_date VARCHAR (30) not null,	
first_name VARCHAR (30) not null,
last_name VARCHAR (30) not null,
sex VARCHAR not null,
hire_date VARCHAR not null
);

Create table dept_emp (
emp_no int References employees (emp_no),
dept_no VARCHAR (30) References departments (dept_no),
Primary Key (emp_no, dept_no)
);

Create table dept_manager (
dept_no VARCHAR (30) References departments (dept_no),
emp_no int References employees (emp_no),
Primary Key (emp_no,dept_no)
);


Create table salaries (
emp_no int References employees (emp_no),
salary int not null,
Primary Key (emp_no) 
);


Create table titles (
title_id VARCHAR (180) Primary Key,
title VARCHAR (180) not null
);

-- Select the tables to ensure the csv files were imported correctly

SELECT * from departments
Select * from titles
Select * from dept_emp 
Select * FROM dept_manager
Select * from employees
Select * from salaries