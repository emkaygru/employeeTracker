DROP DATABASE IF EXISTS employeeTracker;

CREATE DATABASE employeeTracker;

USE employeeTracker;

-- DEPARTMENT TABLE ----
CREATE TABLE department
(
  id INT NOT NULL
  AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
);
-- ROLE TABLE ----
CREATE TABLE role
  (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  CONSTRAINT FK_depart FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
);
-- EMPLOYEE ROLE TABLE ----
  CREATE TABLE employee
    (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  role_id INT,
  CONSTRAINT FK_manager FOREIGN KEY(manager_id) REFERENCES employee(id),
  -- https://www.mysqltutorial.org/mysql-on-delete-cascade/ -- 
  CONSTRAINT FK_role FOREIGN KEY(role_id) REFERENCES role(id) ON DELETE CASCADE
);

-- DEPARTMENT SEEDS -- 
INSERT INTO department (name) 
VALUES ('Accounting'),('Legal'),('Engineering'),('Research and Development'),('Marketing');

-- EMPLOYEE ROLES SEEDS -- 
INSERT INTO role (title, salary, department_id) 
VALUES ('Chief Design Engineer', 164890, 3),('Product Engineer', 65069, 3),('Administrative Officer', 132916, 2),('Project Manager', 134239, 4),('Marketing Director', 134239, 5),('Web Specialist', 65069, 5),('Desktop Support Technician', 50756, 3),('Accountant', 77933, 1),('Stocks Manager', 65069, 1),('Lawyer', 86166, 2);


-- EMPLOYEE NAME SEEDS -- 
INSERT INTO employee (first_name, last_name, manager_id, role_id) 
VALUES ('Obidiah', 'Dann', null, 1),('Lincoln', 'Kemmer', null, 2),('Eduardo', 'Wieprecht', null, 3),('Ferrell', 'Dikelin', 1, 4),('Madlin', 'Cartman', null, 5),('Rikki', 'Flounders', 4, 6),('Frances', 'Sandcraft', 2, 7),('Giacinta', 'Staterfield', null, 8),('Quentin', 'Shewring', 5, 9),('Thaine', 'Leband', 6, 10);