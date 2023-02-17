

drop database if exists employees_db;

create database employees_db;

use employees_db;

create table department(
id int not null auto_increment,
name varchar(50) not null,
primary key (id)
);

insert into department (name)
values ("Coding"), ("Graphics"), ("HR");

update department
set name = "Human Resources"
where name = "HR";

create table role(
id int not null auto_increment,
title varchar(50),
salary decimal(10,2),
department_id integer,
primary key (id)
);

insert into role (title, salary)
values ("Junior Developer", 75000), ("Senior Developer", 100000), ("Team Lead", 125000), ("Architect", 150000);

create table employee(
id int not null auto_increment,
first_name varchar(50),
last_name varchar(50),
role_id integer,
manager_id integer,
primary key (id)
);

insert into employee (first_name, last_name, role_id, manager_id)
values ("sudarshan", "singh", 2, 2), ("daljit", "singh", 3, 1),("Jasspreet", "singh", 6, 5);

insert into employee (first_name, last_name, role_id, manager_id)
values ("Jassa", "singh", 1, 1);

update employee
set last_name = "manpreet"
where first_name = "singh";


select * from department;
select * from role;
select * from employee;

select employee.first_name, employee.last_name, role.title, role.salary
from employee inner join role
on employee.role_id = role.id;