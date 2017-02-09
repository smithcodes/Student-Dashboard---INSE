-- Potential tables


CREATE TABLE IF NOT EXISTS STUDENT (
stu_ID INT PRIMARY KEY AUTO_INCREMENT,
stu_username VARCHAR(30) NOT NULL UNIQUE,
stu_password VARCHAR(32) NOT NULL,
stu_upemail VARCHAR(45) NOT NULL UNIQUE
);
INSERT INTO STUDENT (stu_username, stu_password, stu_upemail) VALUES 
('student1', MD5('secretpassword'),'up771451@myport.ac.uk');

SELECT * FROM STUDENT WHERE stu_username='student1' AND stu_password=MD5('secretpassword');


CREATE TABLE IF NOT EXISTS UNIT (
unit_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
unit_name VARCHAR(55) NOT NULL
);

CREATE TABLE IF NOT EXISTS SCHEDULEWEEK (
-- This is for scheduled tasks that are repeated week upon week.
sw_ID INT PRIMARY KEY AUTO_INCREMENT
sw_day -- schedule day
sw_startTime TIME -- schedule task start time
sw_endTime TIME -- schedule task end time
sw_name VARCHAR(150)
sw_room VARCHAR(10)
sw_startDate DATE -- the first day the task occurs
sw_endDate DATE -- the last day the task occurs
);

