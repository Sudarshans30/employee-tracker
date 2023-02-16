DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department(
    id INT NOT NULL auto_increment,
    NAME VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO department(NAME)
VALUES ("software engineer"), ("Finance") , ("Legal");


CREATE TABLE ROLE(
    id INT NOT NULL auto_increment,
    title VARCHAR(30),
    salary DECIMAL (10,2),
    department_id INTEGER,
    PRIMARY KEY (id)
);

INSERT INTO ROLE (title, salary)
VALUES ("Junior Developer", $70000), ("senior Developer", $100000), ("manager", $110000);

CREATE TABLE employee(
    id INT NOT NULL auto_increment,
    first_name VARCHAR(30),
    LAST_NAME VARCHAR(30),
    role_id INTEGER,
    manager_id INTEGER,
    PRIMARY KEY (id)
    );

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES("Sudarshan", "Singh", 2, 1), ("Rahat", "Saini", 1,2), ("Jain", "Dixit", 2 , 1), ("sandesh", "shrestha", 3, 3);

    INSERT INTO employee(first_name, last_name, role_id, manager_id)
    VALUES("jim","carrey", 1,1)

    UPDATE employee
     SET last_name = "Singh"
     WHERE first_name = "Jass";

     SELECT * FROM department;
     SELECT * FROM ROLE;
     SELECT * from employee;

     SELECT employee.first_name, employee.last_name, ROLE.title, ROLE.salary
     FROM employee INNER JOIN ROLE
     ON employee.role_id = ROLE.id;
