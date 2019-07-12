accept clubname prompt 'Enter the clubname';
begin
UNIVERSITY.Student_club_leaders('&clubname'); 
end;