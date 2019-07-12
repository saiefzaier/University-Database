accept coursename prompt 'Enter coursename';
begin
UNIVERSITY.TEACHER_BY_COURSE('&coursename');
end;