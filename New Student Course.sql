accept ncrs_id prompt 'Enter course id';
accept ncrs_s_id prompt 'Enter student id for course to be added';
accept nt_id prompt 'Enter teacher ID';
accept nc_grade prompt 'Enter course grade';
accept nc_year prompt 'Enter course year';
begin
UNIVERSITY.course_student(&ncrs_id,&ncrs_s_id,&nt_id,'&nc_grade',&nc_year);
end;