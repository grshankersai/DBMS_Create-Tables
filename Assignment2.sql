-- Assignment - 2 ::
-- Sol-1 Creating the Customer Table::

create table customer(
CustNo varchar(10),
CustFirstName varchar(20) not null,
CustLastName varchar(20) not null,
CustCity varchar(20),
CustState char(2),
CustZip varchar(20),
custBal decimal(10,3),
constraint PK_Customer primary key(CustNo)
);

-- SOl-2 

CREATE TABLE Employee( 
EmpNo CHAR(8),
EmpFirstName VARCHAR(20) NOT NULL,
EmpLastName VARCHAR(30) NOT NULL,
EmpPhone CHAR(15),
EmpEMail VARCHAR(50) NOT NULL,
CONSTRAINT PKEmployee PRIMARY KEY (EmpNo) );

-- Sol-3

CREATE TABLE OrderTbl(
OrdNo 	CHAR(8),
OrdDate	DATE NOT NULL,
CustNo CHAR(8),
EmpNo CHAR(8),
CONSTRAINT PKOrderTbl PRIMARY KEY (OrdNo)   );

-- Sol-4
-- There are 2 2 1:M relations between the tables customer and ordertbl and employee and ordertbl.

-- Sol-5::
alter table OrderTbl add Constraint foreign key(CustNo) references customer(CustNo);
alter table OrderTbl add Constraint foreign key(EmpNo) references Employee(EmpNo);

-- Sol-6 ::
-- alter table OrderTbl add Constraint NOT NULL(CustNo);

-- Sol-7
alter table Employee add unique(EmpEMail);



