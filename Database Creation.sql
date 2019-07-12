CREATE TABLE Student (
  s_id  char(8),
  s_fname varchar(20)  NOT NULL,
  s_lname varchar(20)  NOT NULL,
  s_age number NOT NULL,
  s_address varchar(10) NOT NULL
 );
        
CREATE TABLE Teacher
  ( t_id char(8), 
    t_fname varchar(20) NOT NULL, 
    t_lname varchar(20) NOT NULL, 
    t_age number NOT NULL,
    t_address varchar(20) NOT NULL,
    t_dep char(4) NOT NULL
   );
 
CREATE TABLE Department (     
    dep_id char(4)  ,
    dep_name varchar(40) NOT NULL
    ); 
  
CREATE TABLE Course (
crs_id number,    
crs_name       varchar(100) NOT NULL,    
crs_credits     char(1)      NOT NULL,    
c_dep     char(4)     
 );

CREATE TABLE Enrollment (
   crs_id number,
   s_id   char(8),
   t_id char (8),                          
   grade char(3),
   year char (4) 
   );


CREATE TABLE Clubs (
cl_name varchar(20),
president_id char(8),
cl_date char(4),
nb_members number 
) ;
 
CREATE TABLE Teacher_Course (
t_id char(8),
crs_id number(4)
);

create table probation (
s_id char(8),
dateprobation date
);


CREATE TABLE old_student (
  s_id  char(8),
  s_fname varchar(20)  NOT NULL,
  s_lname varchar(20)  NOT NULL,
  s_age number NOT NULL,
  s_address varchar(10) NOT NULL
 );
        




ALTER TABLE Student ADD PRIMARY KEY (s_id);
ALTER TABLE Teacher ADD PRIMARY KEY (t_id);
ALTER TABLE Department ADD Primary KEY (dep_id);
ALTER TABLE Course ADD PRIMARY KEY (crs_id);
ALTER TABLE Clubs ADD PRIMARY KEY (cl_name);
ALTER TABLE Enrollment ADD PRIMARY KEY (s_id,crs_id);
 

ALTER TABLE Teacher ADD FOREIGN KEY (t_dep)  REFERENCES Department(dep_id);
ALTER TABLE Course ADD FOREIGN KEY (c_dep)  REFERENCES Department(dep_id);
ALTER TABLE Enrollment ADD FOREIGN KEY (s_id)  REFERENCES Student(s_id);
ALTER TABLE Enrollment ADD FOREIGN KEY (t_id)  REFERENCES Teacher(t_id);
ALTER TABLE Enrollment ADD FOREIGN KEY (crs_id)  REFERENCES Course(crs_id);
ALTER TABLE Clubs ADD FOREIGN KEY (president_id)  REFERENCES Student(s_id);
ALTER TABLE Teacher_Course ADD FOREIGN KEY(t_id) REFERENCES Teacher(t_id);
ALTER TABLE Teacher_Course ADD FOREIGN KEY(crs_id) REFERENCES Course(crs_id);

ALTER TABLE probation ADD FOREIGN KEY(s_id) REFERENCES Student(s_id);
