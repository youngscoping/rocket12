CREATE DATABASE quanly ;
USE quanly;

CREATE TABLE department 
(
  departmentID int NOT NULL primary key auto_increment,
  department_name varCHAR(20) NOT NULL
); 

CREATE TABLE position
 (
 positionID int NOT NULL primary key auto_increment,
 Position_Name varchar(20) NOT NULL
);

CREATE TABLE bang_account
(
 accountID int NOT NULL primary key auto_increment,
 email varchar(50) NOT NULL,
 username varchar(25) NOT NULL,
 fullname varchar(30) NOT NULL,
 departmentID int NOT NULL,
 positionID int NOT NULL,
 createdate date NOT NULL
);

CREATE TABLE bang_nhom
(
 groupID int NOT NULL primary key auto_increment,
 group_name varchar(30) NOT NULL,
 creatorID int NOT NULL,
 joindate date
);

 
 CREATE TABLE bang_group
 (
 groupID int NOT NULL primary key auto_increment,
 account_ID INT NOT NULL,
 joindate date NOT NULL
 );
 
 CREATE TABLE typequestion
 (
 typeID int NOT NULL primary key auto_increment,
 typename ENUM('Essay, Multiple-choice') NOT NULL
 );
 
 CREATE TABLE categoryquestion
 (
 categoryID int primary key NOT NULL,
 Categoryname enum('java, .NET, sql, postman, ruby,...')
 );
 
 CREATE TABLE question
 (
 questionID int primary key NOT NULL auto_increment,
 content varchar(3000) NOT NULL,
 categoryID int NOT NULL,
 typeID int NOT NULL,
 creatorID int NOT NULL,
 Createdate date NOT NULL
 );
 
CREATE TABLE answer
(
answerID int NOT NULL primary key auto_increment,
content varchar(3000),
questionID int NOT NULL,
iscorrect enum('true, false')
);

CREATE TABLE exam
(
examID int NOT NULL primary key auto_increment,
code_exam int NOT NULL,
title varchar(30) NOT NULL,
categoryID int NOT NULL,
duration time,
creatorID int NOT NULL,
CreateDate date
);

CREATE TABLE question_exam
(
examID int NOT NULL primary key auto_increment,
questionID int NOT NULL
);

-- thêm bộ phận dữ liệu 
insert into department (Deparment_name)
value
 ('Nhân sự'),
 ('Giám đốc'),
 ('sales'),
 ('quản lý'),
 ('tài chính');
 
-- thêm vị trí dữ liệu
 insert into posistion (position_name)
 value 
 ('lập trình viên'),
 ('kiểm tra');
 
 -- thêm bangdata
 insert into bangdata (email, username, fullname, departmentID, positionID, createdate)
 value  
 ('jdiawjdioaido@gmail.com', 'helloguy', 'Tran Van A', 1, 2, 1/1/2021);
 
 
 
 
 




  
 
