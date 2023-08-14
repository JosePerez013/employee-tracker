-- creates the database and tables for the employee tracker
DROP DATABASE IF EXISTS business_db;
CREATE DATABASE business_db;

USE business_db;
-- creates a table for all the departments
CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);
-- creates a table for the roles, along with the department id for the role
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id) 
  ON DELETE CASCADE
);
-- creates a table for the employees, along with the role id and manager id for the employee
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT DEFAULT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id)
  ON DELETE CASCADE
);