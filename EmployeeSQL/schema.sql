DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no	VARCHAR PRIMARY KEY,			
	dept_name VARCHAR			
);


CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY,				
	birth_date DATE,				
	first_name VARCHAR,				
	last_name VARCHAR,				
	gender CHAR(1),			
	hire_date DATE
	);
	
CREATE TABLE dept_emp (
	ID SERIAL PRIMARY KEY,
	emp_no VARCHAR,				
	dept_no VARCHAR,				
	from_date DATE, 				
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
CREATE TABLE dept_manager (
	ID SERIAL PRIMARY KEY,
	dept_no VARCHAR,			
	emp_no VARCHAR,				
	from_date DATE,				
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	
);

CREATE TABLE salaries (
	ID serial PRIMARY KEY,
	emp_no VARCHAR,				
	salary MONEY,				
	from_date DATE,				
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	ID SERIAL PRIMARY KEY,
	emp_no VARCHAR,				
	title VARCHAR,				
	from_date DATE,				
	to_date DATE,	
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

