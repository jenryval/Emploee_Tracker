CREATE DATABASE Employees_db;

DROP DATABASE IF EXISTS Employees_db;

USE Employees_db;

CREATE TABLE department_table (
	id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE role_table (
	id INT(10) NOT NULL AUTO_INCREMENT,
    title VARCHAR(30)NOT NULL,
    salary DECIMAL(4,30) NOT NULL,
    department_id INT(50) NOT NULL,
    FOREIGN KEY (id) REFERENCES department_table(id),
    PRIMARY KEY (id)
);

CREATE TABLE exmployee_table (
	id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT(10) NOT NULL,
    manager_id INT(10) NOT NULL,
    FOREIGN KEY (id) REFERENCES role_table(id),
    FOREIGN KEY (id) REFERENCES manager_table(id),
    PRIMARY KEY (id)
);

CREATE TABLE manager_table (
	id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);