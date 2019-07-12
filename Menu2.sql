accept choice prompt'enter your choice';
accept studentid prompt'enter studentid';
accept studentfname prompt'enter student firstname';
accept studentlname prompt'enter student lastname';
accept studentage prompt'enter student age';
accept studentaddress prompt'enter student address';
accept courseid prompt'Enter course id';
accept teacherid prompt'Enter teacher ID';
accept grade prompt'Enter course grade';
accept year prompt'Enter course year';
accept clubname prompt'Enter the clubname';
accept coursename prompt'Enter coursename';
DECLARE
choice number(1); tname varchar(20); studentid char(8); studentfname varchar(20); studentlname varchar (20);studentage number; studentaddress varchar(20);  courseid char(4);
 grade char(3); year number(4); clubname varchar(10); coursename varchar(10); teachername varchar(20); teacherid  number(8);
BEGIN
dbms_output.put_line('1 Enter a new student');
dbms_output.put_line('2 Delete a student') ;
dbms_output.put_line('3 Add a course to a student'); 
dbms_output.put_line('4 Display the list of honor students'); 
dbms_output.put_line('5 Display the Student club leaders'); 
dbms_output.put_line('6 Display list of teachers per course'); 
dbms_output.put_line('7 Display number of courses for each teacher '); 
dbms_output.put_line('8 Display student info'); 
dbms_output.put_line('-------------------- Enter Your Choice-----------------------------');


begin
choice:=&choice;
case choice

when 1 then  

studentid:=&studentid; studentfname:='&studentfname'; studentlname:='&studentlname'; studentage:=&studentage; studentaddress:='&studentaddress'/
UNIVERSITY.new_student (studentid,studentfname,studentlname,studentage,studentaddress);

when 2 then  

studentid:=&studentid;
UNIVERSITY.Delete_student (studentid);

when 3 then  

courseid:=&courseid;  studentid:=&studentid; teacherid:=&teacherid; grade:=&grade; year:=&year;
UNIVERSITY.course_student(courseid,studentid,teacherid,grade,year);

when 4 then
UNIVERSITY.HONOR_STUDENTS;
when 5 then  
clubname:=&clubname;
UNIVERSITY.Student_club_leaders(clubname); 
when 6 then  
coursename:=&coursename;
UNIVERSITY.TEACHER_BY_COURSE(coursename);
when 7 then 
teacherid:=&teacherid;
select concat (concat(t_fname,' '),t_lname) into teachername from teacher where t_id=teacherid;
dbms_output.put_line(teachername||' Teaches '||UNIVERSITY.COURSES_PER_TEACHER(teacherid)||' Courses');

when 8 then  
studentid:=&studentid;
UNIVERSITY.student_info(studentid);
end case;
end;
end;/

