
accept ns_id prompt 'enter studentid';
accept ns_fname prompt 'enter student firstname';
accept ns_lname prompt 'enter student lastname';
accept ns_age prompt 'enter student age';
accept ns_address prompt 'enter student address';
begin
UNIVERSITY.new_student (&ns_id,'&ns_fname','&ns_lname',&ns_age,'&ns_address');
end;