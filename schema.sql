DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employee_role;

CREATE TABLE employee (
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
);

CREATE TABLE department (
    name VARCHAR(30) NOT NULL,
);

CREATE TABLE role (
title VARCHAR(30) NOT NULL,
salary DECIMAL,
department_id INTEGER,
);

SELECT employee.first_name, employee.last_name,
employee.role_id, employee.manager_id, department.name,
role.title, role.salary, role.department_id
WHERE employee_role.id = role_id
ORDER BY role_id;