/* Basics of sql like create database, create table in database, insert data in table, drop database, drop tables, show database, show tables*/

CREATE DATABASE college;
use college;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES(1,"Saloni",21);
INSERT INTO student VALUES(2,"Nikita",23);

CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS TEMP1;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;

