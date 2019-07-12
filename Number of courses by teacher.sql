accept teacherid prompt 'Enter teacher id';
declare
teachername varchar(50);
begin
select concat (concat(t_fname,' '),t_lname) into teachername from teacher where t_id=&teacherid;
dbms_output.put_line(teachername||' Teaches '||UNIVERSITY.COURSES_PER_TEACHER(&teacherid)||' Courses');
end;