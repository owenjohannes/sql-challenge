DROP TABLE departments;
CREATE TABLE departments (
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,	
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)	
);

SELECT * FROM titles;

ALTER DATABASE "sql-challenge" SET DATESTYLE TO "ISO, MDY";
SHOW DATESTYLE;

DROP TABLE employees;
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)	
);

SELECT * FROM employees;

DROP TABLE dept_emp;
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)	
);

SELECT * FROM dept_emp;

DROP TABLE dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR(50) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)	
);

SELECT * FROM dept_manager;

DROP TABLE salaries;
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;