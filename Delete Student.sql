accept delid prompt 'Enter student id to delete';
begin
UNIVERSITY.Delete_student (&delid);
end;