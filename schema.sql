USE employee_tracker;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employee_role;

CREATE TABLE employee (
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager VARCHAR(30) NOT NULL
);

CREATE TABLE department (
    name VARCHAR(30) NOT NULL,
    role_id INTEGER
);

CREATE TABLE employee_role (
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INTEGER,
    role_id INTEGER
);

/*
SELECT employee.first_name, employee.last_name,
employee.role_id, employee.manager, department.name,
employee_role.title, employee_role.salary, employee_role.department_id
FROM employee, employee_role, department
WHERE employee.role_id = role_id
ORDER BY role_id;
*/

SELECT * 
FROM employee
INNER JOIN employee_role
ON employee.role_id = employee_role.role_id;