accept choice prompt 'enter your choice';
accept ns_id prompt 'enter studentid';
accept ns_fname prompt 'enter student firstname';
accept ns_lname prompt 'enter student lastname';
accept ns_age prompt 'enter student age';
accept ns_address prompt 'enter student address';
accept ncrs_id prompt 'Enter course id';
accept nt_id prompt 'Enter teacher ID';
accept nc_grade prompt 'Enter course grade';
accept nc_year prompt 'Enter course year';
accept clubname prompt 'Enter the clubname';
accept coursename prompt 'Enter coursename';
accept teachername prompt 'Enter teacher name';
DECLARE
c number(1); tname varchar(20);
BEGIN
dbms_output.put_line('1 Enter a new student') ;
dbms_output.put_line('2 Delete a student') ;
dbms_output.put_line('3 Add a course to a student'); 
dbms_output.put_line('4 Display the list of honor students'); 
dbms_output.put_line('5 Display the Student club leaders'); 
dbms_output.put_line('6 Display list of teachers per course'); 
dbms_output.put_line('7 Display number of courses for each teacher '); 
dbms_output.put_line('8 Display student info'); 
dbms_output.put_line('-------------------- Enter Your Choice-----------------------------'); 
c:=&choice;
case c
when 1 then  
UNIVERSITY.new_student (&ns_id,'&ns_fname','&ns_lname',&ns_age,'&ns_address');
when 2 then  
UNIVERSITY.Delete_student (&ns_id);
when 3 then  
UNIVERSITY.course_student(&ns_id,&nt_id,'&n_grade',&nc_year);
when 4 then
UNIVERSITY.HONOR_STUDENTS;
when 5 then  
UNIVERSITY.Student_club_leaders('&clubname'); 
when 6 then  
UNIVERSITY.teacher_by_couse('&coursename');
when 7 then 
 tname:='&teachername';
dbms_output.put_line(tname||' Teaches '||UNIVERSITY.COURSES_PER_TEACHER(tname)||' Courses');
when 8 then  
UNIVERSITY.student_info(&ns_id);
end case;

end;

