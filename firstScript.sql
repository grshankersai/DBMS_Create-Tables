show databases;
use shankerdb;
show tables;
create table courses(courseNo char(6) , CrsDesc varchar(300) , CrsUnits smallint , 
constraint PKCourse primary key(courseNo),
constraint UniqueCrs unique(CrsDesc)
);

drop table courses;
-- hello
