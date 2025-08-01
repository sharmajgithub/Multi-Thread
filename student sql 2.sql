create database Sample
use Sample 
CREATE TABLE Stud (
reg_no INT PRIMARY KEY,
name  VARCHAR (20) NOT NULL,
department VARCHAR (40) NOT NULL,
year INT NOT NULL); 
INSERT INTO Stud (reg_no,name,department,year) VALUES  
(111,'xxx','Computer Science',4),
(122,'yyy','AI&DS',3),
(133,'zzz','Information technology',3),
(144,'bca','Cyber Security',1); 
SELECT * FROM Stud;
UPDATE Stud
SET name='sdf',
department='BCA',
year=3 WHERE reg_no =144;
SELECT * FROM Stud;
UPDATE Stud
SET name ='mec',
department ='All',
year= 4 WHERE reg_no =133;

INSERT INTO Stud(reg_no,name,department,year)
VALUES (145,'LKJ','MSC CS',2);
SELECT * FROM Stud;

ALTER TABLE Stud 
ADD phone_num VARCHAR (13);
UPDATE Stud 
SET phone_num = '0987654321' WHERE reg_no=111;

UPDATE Stud
 SET phone_num = '1234556' WHERE reg_no=122;
 UPDATE Stud
 SET phone_num = '0987612345' WHERE reg_no=133;
 
 UPDATE Stud
 SET phone_num = '12344321' WHERE reg_no=144;
 UPDATE Stud
 SET phone_num = '99887766' WHERE reg_no=145;
 
 ---Aggregation
 
 SELECT COUNT(*) AS tot_Student FROM Stud;
 SELECT MAX(year) AS max_yr FROM Stud;
 SELECT MIN(year) AS min_yr FROM Stud;
 SELECT AVG(year) AS av_yr FROM Stud;
 SELECT department,COUNT(*)AS dept_count FROM Stud GROUP BY department;
 SELECT department,MAX(year)AS max_yr FROM Stud
 GROUP BY department;
 
 SELECT * FROM Stud
 ORDER BY year ASC;
 
 SELECT * FROM stud
 ORDER BY name;
 
 SELECT * FROM Stud
 ORDER BY department DESC;
 
 SELECT UPPER(department) AS dep_upr FROM Stud;
 SELECT UPPER(name) AS name_up FROM Stud;
 SELECT LOWER(name) AS name_up FROM Stud;
 SELECT LEFT(name,2) AS srt FROM Stud;
 SELECT name,LENGTH(name) AS name_ln FROM Stud;
 SELECT CONCAT(name,'-',department)AS combine 
 FROM Stud;
 
 SELECT name,year,year+ 1 AS nx_yr FROM Stud;
 SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;
 
 ALTER TABLE Stud
 ADD Date_Detail DATE;
 
 SELECT * FROM Stud;
 
 UPDATE Stud SET Date_Detail='2021-08-11' WHERE reg_no=111;
  UPDATE Stud SET Date_Detail='2022-05-15' WHERE reg_no=122;
    UPDATE Stud SET Date_Detail='2023-06-18' WHERE reg_no=133;
      UPDATE Stud SET Date_Detail='2024-07-19' WHERE reg_no=144;
        UPDATE Stud SET Date_Detail='2025-09-11' WHERE reg_no=145;
        
        SELECT CURDATE();
        SELECT CURTIME();
        SELECT reg_no,name,year(Date_Detail) AS yr FROM Stud;