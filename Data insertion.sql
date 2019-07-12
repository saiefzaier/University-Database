INSERT ALL
  INTO Student  VALUES (69889623,'rached','fares',21,'monastir')
  INTO Student  VALUES (32146589,'hatem','arrar',21,'benarous')
  INTO Student  VALUES (12485962,'saief','bezzaier',22,'benarous')
  INTO Student  VALUES (21479962,'mohamed','lahmar',20,'tunis')
  INTO Student  VALUES (14796325,'nadia','tounsi',19,'sousse')
  INTO Student  VALUES (98762134,'azza','jamili',23,'ariana')
  INTO Student  VALUES (85231467,'ahmed','limem',21,'gabes')
  INTO Student  VALUES (23698745,'ahlem','gouia',20,'sfax')
  INTO Student  VALUES (45325682,'feyrouz','bousetta',23,'jandouba')
  INTO Student  VALUES (21465897,'abir','bensalem',25,'benzart')           
SELECT * FROM dual;



INSERT INTO clubs values('Enactus',69889623,2012,20);
INSERT INTO clubs values ('Atlas',32146589,2015,30);
INSERT INTO clubs values ('Tunivision',12485962,2014,25);
INSERT INTO clubs values ('Trinity',21479962,2018,10);
INSERT INTO clubs values ('Leaders',14796325,2015,30);
INSERT INTO clubs values ('UGTE',98762134,2012,10);
INSERT INTO clubs values ('Geek Factory',85231467,2014,40);
INSERT INTO clubs values ('Merit',23698745,2016,35);
INSERT INTO clubs values ('Amentia',45325682,2017,10);
INSERT INTO clubs values('Paintig Club',21465897,2016,20);

INSERT ALL  
INTO department VALUES('BA','Business Analysis')
INTO department VALUES('IT','Information Technology')
INTO department VALUES('AC','Accounting')
INTO department VALUES('IPE','International political economy' )
INTO department VALUES('FI','Finance')
INTO department VALUES('MK','Marketing')
select * from dual;




INSERT INTO Course VALUES(1,'Object Oriented Programming','3','IT');
INSERT INTO Course VALUES(2,'Corporate Finance','3','FI');
INSERT INTO Course VALUES(3,'Decision and Game Theory','3','BA');
INSERT INTO Course VALUES(4,'Data Analysis','3','BA');
INSERT INTO Course VALUES(5,'International Trade','3','IPE');
INSERT INTO Course VALUES(6,'Database Management','3','IT');
INSERT INTO Course VALUES(7,'Financial Markets','3','FI');
INSERT INTO Course VALUES(8,'Intermediate Accounting','3','AC');
INSERT INTO Course VALUES(9,'Consumer Behaviour','3','MK');
INSERT INTO Course VALUES(10,'International Marketing','3','MK');
INSERT INTO Course VALUES(11,'Accounting Information System','3', 'AC');
INSERT INTO Course VALUES(12,'Intermediate Macroeconomics','3','IPE');
INSERT INTO Course VALUES(13,'Principles of Operations Management','3','BA');



INSERT INTO Teacher VALUES(28152929,'Alexander','Joseph',50,'Oklahoma','IT');
INSERT INTO Teacher VALUES(00893422,'Anna','Addams',35,'California','MK');
INSERT INTO Teacher VALUES(16286003,'Josh','Wellington',41,'Miami','BA');
INSERT INTO Teacher VALUES(26985004,'Max','Jocker',42,'Arizona','FI');
INSERT INTO Teacher VALUES(19026905,'Jennifer','Lauren',36,'Washington','IT');
INSERT INTO Teacher VALUES(26902306,'Jonny','Sparks',39,'New York','IPE');
INSERT INTO Teacher VALUES(85012307,'Micheal','Matthew',43,'California','BA') ;
INSERT INTO Teacher VALUES(30506808,'Lawrence','Ellison', 29,'Indiana','AC');
INSERT INTO Teacher VALUES(60111209,'Doe','Jane', 34,'New York','AC');
INSERT INTO Teacher VALUES(26298010,'Donald','Smith', 39,'New Jersey','BA');



INSERT INTO Teacher_Course VALUES(28152929,1);
INSERT INTO Teacher_Course VALUES(26985004,1);
INSERT INTO Teacher_Course VALUES(26985004,2);
INSERT INTO Teacher_Course VALUES(16286003,2);
INSERT INTO Teacher_Course VALUES(16286003,3);
INSERT INTO Teacher_Course VALUES(85012307,3);
INSERT INTO Teacher_Course VALUES(85012307,4);
INSERT INTO Teacher_Course VALUES(26902306,4);
INSERT INTO Teacher_Course VALUES(26902306,5);
INSERT INTO Teacher_Course VALUES(19026905,6);
INSERT INTO Teacher_Course VALUES(26985004,7);
INSERT INTO Teacher_Course VALUES(30506808,8);
INSERT INTO Teacher_Course VALUES(00893422,9);
INSERT INTO Teacher_Course VALUES(00893422,10);    
INSERT INTO Teacher_Course VALUES(60111209,11);
INSERT INTO Teacher_Course VALUES(26902306,12);
INSERT INTO Teacher_Course VALUES(26298010,13);

INSERT ALL
INTO Enrollment VALUES(1,69889623,28152929,90,2017)
INTO Enrollment VALUES(6,69889623,19026905,84,2017)
INTO Enrollment VALUES(3,69889623,19026905,82,2017)
INTO Enrollment VALUES(4,32146589,85012307,80,2017)
INTO Enrollment VALUES(9,32146589,00893422,90,2017)
INTO Enrollment VALUES(8,32146589,30506808,86,2017)
INTO Enrollment VALUES(2,12485962,26985004,90,2017)
INTO Enrollment VALUES(10,12485962,00893422,70,2017)
INTO Enrollment VALUES(6,12485962,19026905,90,2017)
INTO Enrollment VALUES(4,21479962,85012307,60,2018)
INTO Enrollment VALUES(5,21479962,26902306,50,2018)
INTO Enrollment VALUES(9,21479962,00893422,40,2018)
INTO Enrollment VALUES(1,14796325,28152929,70,2016)
INTO Enrollment VALUES(9,14796325,00893422,80,2016)
INTO Enrollment VALUES(10,14796325,00893422,95,2016)
INTO Enrollment VALUES(13,98762134,26298010,95,2016)
INTO Enrollment VALUES(11,98762134,60111209,82,2016)
INTO Enrollment VALUES(12,98762134,26902306,70,2016)
INTO Enrollment VALUES(13,85231467,26298010,50,2016)
INTO Enrollment VALUES(12,85231467,26902306,78,2016)
INTO Enrollment VALUES(10,85231467,00893422,86,2016)
INTO Enrollment VALUES(4,23698745,85012307,78,2016)
INTO Enrollment VALUES(7,23698745,26985004,85,2015)
INTO Enrollment VALUES(5,23698745,26902306,70,2015)
INTO Enrollment VALUES(8,45325682,30506808,70,2015)
INTO Enrollment VALUES(5,45325682,26902306,84,2015)
INTO Enrollment VALUES(1,45325682,28152929,89,2015)
INTO Enrollment VALUES(11,21465897,60111209,60,2018)
INTO Enrollment VALUES(13,21465897,26298010,30,2018)
INTO Enrollment VALUES(12,21465897,26902306,20,2018)
 
select * from dual;
