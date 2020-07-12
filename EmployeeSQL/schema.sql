DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no	VARCHAR PRIMARY KEY NOT NULL,			
	dept_name VARCHAR NOT NULL			
);


CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY NOT NULL,				
	birth_date DATE NOT NULL,				
	first_name VARCHAR NOT NULL,				
	last_name VARCHAR NOT NULL,				
	gender CHAR(1) NOT NULL,			
	hire_date DATE NOT NULL

);
	
CREATE TABLE dept_emp (
	ID SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,				
	dept_no VARCHAR NOT NULL,				
	from_date DATE NOT NULL, 				
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
CREATE TABLE dept_manager (
	ID SERIAL PRIMARY KEY,
	dept_no VARCHAR NOT NULL,			
	emp_no VARCHAR NOT NULL,				
	from_date DATE NOT NULL,				
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	
);

CREATE TABLE salaries (
	ID SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,				
	salary INT NOT NULL,				
	from_date DATE NOT NULL,				
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	ID SERIAL PRIMARY KEY,
	emp_no VARCHAR NOT NULL,				
	title VARCHAR NOT NULL,				
	from_date DATE NOT NULL,				
	to_date DATE NOT NULL,	
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

