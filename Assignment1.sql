-- Solution - 1
create table customer(
custno varchar(4) not null,
custname varchar(20) not null,
address varchar(50) not null,
Internal char(1) not null,
contact varchar(30) not null,
phone integer not null,
city varchar(20) not null,
state char(2) not null,
zip integer not null,
constraint PK_Custno primary key(custno)

);
show tables;

/*Solution - 2 */
CREATE TABLE Facility
(FacNo VARCHAR(8) NOT NULL, 
 FacName VARCHAR(30) NOT NULL,
 CONSTRAINT PK_FACILITY PRIMARY KEY (FacNo) ); 
 show tables;
 
 -- Solution - 3:
 CREATE TABLE Location
(LocNo VARCHAR(8) NOT NULL, 
 FacNo VARCHAR(8), 
 LocName VARCHAR(30) NOT NULL,
 CONSTRAINT PK_LOCATION PRIMARY KEY (LocNo));
 
 -- Solution - 4
 -- THere is a 1 : N relationship between the Faculty and location table where the Faculty table acts as the parent.
 
 -- Solution - 5:
 drop table Location;
 CREATE TABLE Location
(LocNo VARCHAR(8) NOT NULL, 
 FacNo VARCHAR(8) Not null, 
 LocName VARCHAR(30) NOT NULL,
 CONSTRAINT PK_LOCATION PRIMARY KEY (LocNo),
 Constraint FK_Location foreign key(FacNo) references Facility(FacNo));
 select * from Location;
 
 -- Solution 6
  drop table Location;
  CREATE TABLE Location
(LocNo VARCHAR(8) NOT NULL, 
 FacNo VARCHAR(8) Not null, 
 LocName VARCHAR(30) NOT NULL,
 CONSTRAINT PK_LOCATION PRIMARY KEY (LocNo),
 Constraint FK_Location foreign key(FacNo) references Facility(FacNo));
 select * from Location;
 
 -- Solution - 7
 drop table Facility;
 CREATE TABLE Facility
(FacNo VARCHAR(8) NOT NULL, 
 FacName VARCHAR(30) NOT NULL,
 CONSTRAINT PK_FACILITY PRIMARY KEY (FacNo) ,
 Constraint Unique_Facility unique(FacName)
 ); 
 alter table facility add Constraint Unique_Facility unique(FacName);
 
 
-- Clear the Data base
drop table Facility;
drop table Location;
drop table customer;

show tables;



