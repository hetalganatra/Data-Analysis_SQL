CREATE DATABASE small_company_db;
USE small_company_db;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    salary DECIMAL(10,2),
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Sales');

INSERT INTO employees (emp_id, first_name, last_name, dept_id, hire_date) VALUES
(101, 'Alice', 'Johnson', 1, '2020-01-15'),
(102, 'Bob', 'Smith', 2, '2019-03-22'),
(103, 'Charlie', 'Lee', 3, '2021-07-01'),
(104, 'Diana', 'Patel', 3, '2018-11-10'),
(105, 'Ethan', 'Wong', 4, '2022-05-18');

INSERT INTO salaries (salary_id, emp_id, salary, from_date, to_date) VALUES
(1, 101, 55000, '2020-01-15', '2021-01-15'),
(2, 101, 60000, '2021-01-16', '9999-01-01'),
(3, 102, 65000, '2019-03-22', '9999-01-01'),
(4, 103, 70000, '2021-07-01', '9999-01-01'),
(5, 104, 80000, '2018-11-10', '2020-11-10'),
(6, 104, 85000, '2020-11-11', '9999-01-01'),
(7, 105, 50000, '2022-05-18', '9999-01-01');
