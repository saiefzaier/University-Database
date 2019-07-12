CREATE OR REPLACE PACKAGE BODY USER1.UNIVERSITY AS

PROCEDURE new_student(NS_ID IN student.S_ID%type , NS_FNAME IN student.S_FNAME%type, NS_LNAME IN student.S_LNAME%type, NS_AGE IN STUDENT.S_AGE%type, NS_ADRESS IN STUDENT.S_ADDRESS%type)
is
Begin
INSERT INTO student
VALUES(NS_ID,NS_FNAME,NS_LNAME,NS_AGE,NS_ADRESS);
COMMIT ; 
END new_student;


PROCEDURE Delete_student (stid student.s_id%type) 		
IS
BEGIN
Delete from Student 
where s_id = stid;
END Delete_student ;


PROCEDURE course_student (NCRS_ID IN enrollment.CRS_ID%type,NS_ID IN student.S_ID%type, NT_ID IN TEACHER.T_ID%type, NGRADE IN  enrollment.GRADE%type,NYEAR IN  enrollment.YEAR%type) IS    
highgrade exception; alreadyregistered exception; n number;
Begin
select count(*) into n from enrollment where s_id=NS_ID and crs_id=ncrs_id;  
if (NGRADE>100) then raise highgrade;
elsif(n>=1) then  raise alreadyregistered;
else
INSERT INTO enrollment (CRS_ID,S_ID,T_ID,GRADE,YEAR) 
VALUES(NCRS_ID,NS_ID,NT_ID,NGRADE,NYEAR) ;
COMMIT WORK;
end if;
exception 
when highgrade then raise_application_error(-20005,'Grade cannot be higher than 100'); 
when alreadyregistered then  raise_application_error(-20004,'Course already registered');  
END course_student;


FUNCTION GPA(student_id student.s_id%type) 
return number 
is gpa number; sumcredits number; avggrade number; 
cursor grades is select enrollment.grade,course.crs_credits  from enrollment,course  where enrollment.CRS_ID=course.CRS_ID and enrollment.S_ID=student_id   ;
inexistantstudent exception;
 begin
avggrade:=0;
sumcredits:=0;
gpa:=0;
for i in grades
loop   
if(i.grade<60) then avggrade:=0*i.crs_credits+avggrade;
elsif(i.grade> 60 and  i.grade<= 65) then avggrade:=1*i.crs_credits+avggrade;
elsif (i.grade > 65 and  i.grade<=67) then avggrade:=1.3*i.crs_credits+avggrade;
elsif (i.grade > 67 and  i.grade<=70) then avggrade:=1.7*i.crs_credits+avggrade;
elsif (i.grade > 70 and  i.grade<=76) then avggrade:=2*i.crs_credits+avggrade;
elsif (i.grade > 77 and  i.grade<=73) then avggrade:=2.3*i.crs_credits+avggrade;
elsif  (i.grade > 73 and  i.grade<=77) then avggrade:=2.7*i.crs_credits+avggrade;
elsif   (i.grade > 80 and  i.grade<=83) then avggrade:=3*i.crs_credits+avggrade;
elsif  (i.grade > 83 and  i.grade<=87) then avggrade:=3.3*i.crs_credits+avggrade;
elsif  (i.grade > 87 and  i.grade<=90) then avggrade:=3.7*i.crs_credits+avggrade;
elsif (i.grade >=90) then avggrade:=4*i.crs_credits+avggrade;
end if;
sumcredits:=sumcredits+i.crs_credits;
end loop;
gpa:=avggrade/sumcredits;
return round(gpa,2);
exception
when ZERO_DIVIDE then return 0;
end GPA;


PROCEDURE honor_students
is 
cursor st  is select * from student ;
begin
dbms_output.put_line('Honor Students');
for i in st
loop
if  university.GPA(i.S_ID)>3.6 then
dbms_output.put_line(i.s_fname||' '||i.s_lname||'GPA:'||UNIVERSITY.GPA(i.S_ID));
end if;
end loop;
end;



PROCEDURE Student_club_leaders (clubname clubs.cl_name%type)
IS
fname2 student.s_fname%type;
lname2 student.s_lname%type;
BEGIN
SELECT s_fname, s_lname 
INTO fname2,lname2 from Student, clubs
 WHERE student.s_id = clubs.president_id  AND clubs.cl_name=clubname;
dbms_output.put_line ('The  president of :' || clubname || 'is : '|| fname2||' '|| lname2);
END Student_club_leaders;


FUNCTION courses_per_teacher ( teacher_id TEACHER.T_ID%type)
return number
IS 
n number;
begin
SELECT  count (*)  INTO n FROM teacher_course where t_id=teacher_id ; 
RETURN n ;
END;


PROCEDURE Teacher_by_course (coursename Course.crs_name%type)
IS
cursor t is SELECT t_fname, t_lname
FROM teacher, course,teacher_course
WHERE teacher_course.t_id = teacher.t_id and course.crs_id=teacher_course.crs_id
AND coursename=course.crs_name;

begin
dbms_output.put_line(coursename||' Teachers:' );
for i in t
loop
dbms_output.put_line(i.t_fname||'  '||i.t_lname);
end loop;
END teacher_by_course;



PROCEDURE student_info(id in STUDENT.S_ID%type)
is
s student%rowtype; n int;
cursor grades is select grade,crs_name from enrollment,course where enrollment.CRS_ID=course.CRS_ID and enrollment.S_ID=id;
begin
n:=0;
select *  into s from student where s_id=id;
dbms_output.put_line(s.s_fname||'  '||s.s_lname);
dbms_output.put_line('Address'||s.s_address);
for i in grades 
loop
dbms_output.put_line(i.crs_name||'  '||i.grade);
n:=n+1;
end loop;

if n=0 then
dbms_output.put_line('No courses registered');
else dbms_output.put_line('GPA:'||UNIVERSITY.GPA(id));
end if;


end student_info;



end university;
/