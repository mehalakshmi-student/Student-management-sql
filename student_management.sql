CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

INSERT INTO Department
VALUES
(1, 'AI&DS'),
(2, 'CSE');

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    Department_ID INT,
    FOREIGN KEY (Department_ID)
    REFERENCES Department(Department_ID)
);

INSERT INTO Student
VALUES
(101, 'Meha', 20, 1),
(102, 'Priya', 21, 2),
(103, 'Anu', 20, 1);

SELECT * FROM Student;

SELECT * FROM Student
WHERE Department_ID = 1;
