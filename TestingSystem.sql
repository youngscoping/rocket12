DROP DATABASE IF EXISTS FinalExam;
CREATE DATABASE FinalExam;

DROP TABLE IF EXISTS Manager;
CREATE TABLE Manager
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
password VARCHAR(15) NOT NULL ,
ExpInYear INT NOT NULL
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee 
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
password VARCHAR(15) NOT NULL ,
ProjectID INT NOT NULL,
ProSkill VARCHAR(10) NOT NULL
);

CREATE TABLE ProjectID (
projectID INT NOT null,
teamSize INT NOT NULL,
idManager INT NOT  NULL,
idEmployee INT NOT NULL
);



INSERT INTO Manager VALUES
(1,'Duong Trung Kien', 'duongtrungkien@gmail.com', 'kien123', 1),
(2,'Aleksandr Kostiley', 's1mple@gmail.com','dongian123', 5),
(3,'Nicolai Reedtz', 'dev1ce@gmail.com','thietbi123', 3);

INSERT INTO Employee VALUES
(1,'Peter Rasmussen','dupreeh@gmail.com', 'peter123', 555,'dev'),
(2,'Kirill Mikhailov', 'boombl4@gmail.com', 'boomich123',666, 'test');

INSERT INTO ProjectID VALUES 
(1313, 2, 3 ,2);
