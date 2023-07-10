create database ass;
use ass;
create table stddetails (
studentId int , student_Name varchar(100)
);
insert into stdDetails value (
1001, "mary"),
(1002 ,"jane"),
(1003,"Daniel"),
(1004,"Jack"),
(1005,"Harold");
select * from stdDetails;

create table coursedetails (
courseid int , course_Name varchar(100) ,studentid int
);
insert into courseDetails value(
5001, "PHP" ,1004),
(5002 ,"java",1001),
(5003,"asp.net",1001),
(5004,"ruby",1002);
select * from courseDetails;

create table teacherdetails (
teacherId int , teacher_Name varchar(100) ,courseid int
);
insert into teacherDetails value (
3001, "jill",5003),
(3002 ,"greul",5002),
(3003,"Jemkins",5003),
(3004,"polo",5004);
select * from teacherDetails;
SELECT * FROM stddetails
JOIN courseDetails ON stddetails.studentId = courseDetails.studentid
JOIN teacherDetails ON courseDetails.courseid = teacherDetails.courseid;
SELECT * FROM stddetails
JOIN courseDetails on stddetails.studentId = courseDetails.studentid
JOIN teacherDetails on courseDetails.courseid = teacherDetails.courseid
WHERE courseDetails.course_Name = 'asp.net';