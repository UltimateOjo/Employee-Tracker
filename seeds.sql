INSERT INTO employee
    (role_id,first_name,last_name,manager_id)
VALUES
('1','John','Doe','Asheley Rodriguez'),
('2','Mike','Chan','John Doe'),
('3','Ashley','Rodriguez','null'),
('4','Kevin','Tupik','Asheley Rodriguez'),
('6','Malia','Brown','null'),
('7','Sarah','Lourd','null'),
('8','Tom','Allen','null'),
('10','Tanner','Galal','Kevin Tupik'),

INSERT INTO department
    (name)
VALUES
('Sales'),
('Sales'),
('Engineering'),
('Engineering'),
('Finance'),
('Legal'),
('Legal'),
('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
('Sales Lead','100000','1'),
('Salesperson','8000','1'),
('Lead Engineer','150000','1'),
('Software Engineering','120000','1'),
('Accountant','125000','1'),
('Legal Team Lead','250000','1'),
('Lawyer','190000','1'),
('Software Engineering','120000','1');