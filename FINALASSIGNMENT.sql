-- Customer Table
CREATE TABLE  CUSTOMER 
 (CUSTNO VARCHAR(8) NOT NULL, 
  CUSTNAME VARCHAR(30) NOT NULL, 
  ADDRESS VARCHAR(50) NOT NULL, 
  INTERNAL CHAR(1) NOT NULL, 
  CONTACT VARCHAR(35) NOT NULL, 
  PHONE VARCHAR(11) NOT NULL, 
  CITY VARCHAR(30) NOT NULL,
  STATE VARCHAR(2) NOT NULL, 
  ZIP VARCHAR(10) NOT NULL,
  CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTNO) ) ;


-- Facility Table::
CREATE TABLE   FACILITY
(FACNO VARCHAR(8) NOT NULL, 
 FACNAME VARCHAR(30) NOT NULL,
 CONSTRAINT PK_FACILITY PRIMARY KEY (FACNO) ); 

 
 -- Location Table::
CREATE TABLE  LOCATION
(LOCNO VARCHAR(8) NOT NULL, 
 FACNO VARCHAR(8) , 
 LOCNAME VARCHAR(30) NOT NULL,
 CONSTRAINT PK_LOCATION PRIMARY KEY (LOCNO),
 CONSTRAINT FK_FACNO FOREIGN KEY (FACNO) 
   REFERENCES FACILITY (FACNO)

 );
 


 
 -- Employee Table::
 create table EMPLOYEE (
 EMPNO varchar(5),
 EMPNAME varchar(50),
 DEPARTMENT varchar(50),
 email varchar(40),
 phone varchar(8),
 constraint primary key(EmpNo)
 
 );
 
-- Resource TBL
 
 create table RESOURCETBL(
 RESNO varchar(4),
 RESNAME  varchar(40),
 RATE decimal(12,2),
 constraint primary key(RESNO) 
 );
 
 -- EVent Request::
 
 create table EVENTREQUEST (
 EVENTNO varchar(5) NOT NULL,
 DATEHELD date NOT NULL,
 DATEREQ date NOT NULL,
 FacNo VARCHAR(8) ,
 CustNo VARCHAR(8),
 DATEAUTH date,
 STATUS varchar(50) NOT NULL,
 ESTCOST DECIMAL(13,2) NOT NULL,
 ESTAUDIENCE integer NOT NULL,
 budno varchar(30),
 Constraint PK_EVENTREQUEST primary key(EVENTNO),
 Constraint FK_FACTNO foreign key(FacNo) references  Facility(FacNo),
 constraint FK_CustNo foreign key(CustNo) references Customer(CustNo),
 constraint STATUS_CHECK check (STATUS IN ('Approved','Pending','Denied') ) 
 );
 
create table EVENTPLAN(
PLANNO varchar(5),
EVENTNO varchar(5),
WORKDATE date,
NOTES varchar(90),
ACTIVITY varchar(40),
EMPNO varchar(5),
constraint PK_EVENTPLAN primary key(PLANNO),
constraint FK_EVENTNO foreign key(EVENTNO) references EVENTREQUEST(EVENTNO),
constraint FK_EMPNO foreign key(EMPNO) references EMPLOYEE(EMPNO),
constraint ACTIVITY_CHECK check(ACTIVITY IN ('Operation','Cleanup','Setup') )
);


create table EVENTPLANLINE(
PLANNO varchar(5),
LINENO integer,
TIMESTART datetime,
TIMEEND datetime,
NUMBERFLD integer,
LOCNO VARCHAR(8) ,
 RESNO varchar(4),
 constraint EVENTPLANLINE_PK primary key(PLANNO,LINENO),
 constraint LOCNO_FK foreign key(LOCNO) references LOCATION(LOCNO),
 constraint RESNO_FK foreign key(RESNO) references RESOURCETBL(RESNO)
 

);
select * from EVENTPLANLINE;


