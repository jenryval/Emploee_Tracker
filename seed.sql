INSERT INTO department (department) VALUES ("Sales");
INSERT INTO department (department) VALUES ("Engineering");
INSERT INTO department (department) VALUES ("Finance");
INSERT INTO department (department) VALUES ("Legal");
INSERT INTO role (title, salary, department_id) VALUES ("Sales Manager", 60000, 4); 
INSERT INTO role (title, salary, department_id) VALUES ("Engineering Manager", 50000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Finance Manager", 30000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Legal Manager", 40000, 1);

INSERT INTO employee (first_name, last_name, role_id) VALUES ("Michael", "Rosa", 4);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Zac", "Jayes", 3);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Sara", "Wilson", 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Jenry", "Valdes", 1);

-- SELECT * FROM employee_table;

SELECT * FROM department LEFT JOIN role ON department.id = role.department_id LEFT JOIN employee ON role.id = employee.role_id;