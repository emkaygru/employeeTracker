--CREATING OUR DATABASE --
DROP DATABASE IF EXISTS employeeTracker;

CREATE DATABASE employeeTracker;

USE employeeTracker;

-- DEPARTMENT TABLE ----
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
 
);
-- ROLE TABLE ----
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- EMPLOYEE ROLE TABLE ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- DEPARTMENT SEEDS -- 
INSERT INTO employeeTracker (department) VALUES ('Accounting');
INSERT INTO employeeTracker (department) VALUES ('Legal');
INSERT INTO employeeTracker (department) VALUES ('Engineering');
INSERT INTO employeeTracker (department) VALUES ('Research and Development');
INSERT INTO employeeTracker (department) VALUES ('Marketing');

-- EMPLOYEE ROLES SEEDS -- 
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Chief Design Engineer', 164890, 3);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Product Engineer', 65069, 3);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Administrative Officer', 132916, 2);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Project Manager', 134239, 4);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Marketing Director', 134239, 5);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Web Specialist', 65069, 5);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Desktop Support Technician', 50756, 3);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Accountant', 77933, 1);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Stocks Manager', 65069, 1);
INSERT INTO employeeTracker (role, salary, department_id) VALUES ('Lawyer', 86166, 2);


-- EMPLOYEE NAME SEEDS -- 
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Obidiah', 'Dann', null, 1);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Lincoln', 'Kemmer', null, 2);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Eduardo', 'Wieprecht', null, 3);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Ferrell', 'Dikelin', 1, 4);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Madlin', 'Cartman', null, 5);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Rikki', 'Flounders', 4, 6);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Frances', 'Sandcraft', 2, 7);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Giacinta', 'Staterfield', null, 8);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Quentin', 'Shewring', 5, 9);
INSERT INTO employeeTracker (first_name, last_name, manager_id, role_id) VALUES ('Thaine', 'Leband', 6, 10);