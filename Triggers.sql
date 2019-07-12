create or replace trigger probations
AFTER update or delete on ENROLLMENT
declare 
cursor s is select distinct s_id from enrollment; n number;
begin

for i in s
loop
select count(s_id) into n from probation where s_id=i.s_id;

if ((n>0) and (UNIVERSITY.GPA(i.S_ID)<2)  ) then continue;
elsif ( n<=0 and  UNIVERSITY.GPA(i.S_ID)<2) 
then 
insert into probation values(i.S_ID,sysdate);
elsif (UNIVERSITY.GPA(i.s_id)>=2) then 
delete from probation where  s_id=i.s_id;
end if;
end loop;
end probations;                     
 








CREATE OR REPLACE TRIGGER security
BEFORE DELETE or UPDATE OR INSERT ON student
 BEGIN
 IF (TO_CHAR (sysdate,'DY') IN ('SAT ','SUN')) OR ( TO_CHAR(sysdate,'HH24') NOT BETWEEN '08' AND '18')
 THEN 
 
 
 IF inserting then
 RAISE_APPLICATION_ERROR (-20402, 'You cant insert a student after time ');
 elsif updating then
 RAISE_APPLICATION_ERROR (-20402, 'You cant update a student after time ');
 elsif deleting then 
  RAISE_APPLICATION_ERROR (-20402, 'You cant Delete a student after time ');
 end if;

 end if;
 end student_delete;
create or replace trigger max_courses
before insert on enrollment
for each row
declare n int; 
begin
select count(s_id) into n from enrollment where s_id=:new.s_id;
if (n>6) then RAISE_APPLICATION_ERROR(-20002,'A student can have a max of 6 course') ; end if;


end;


create or replace trigger one_president
before insert on clubs for each row
declare 
n int;
begin
select count(president_id) into n from clubs where :NEW.president_id=president_id  ;

if (n>=1) then
RAISE_APPLICATION_ERROR(-20003,'Each student can be president of only one club');
end if;
end;


create or replace trigger min_age
before insert on student
for each row

begin
if(:NEW.s_age)<18 then RAISE_APPLICATION_ERROR(-20003,'A student must be at least 18 years old');
end if;
end;

CREATE OR REPLACE TRIGGER oldstudent 
BEFORE DELETE 
ON STUDENT
for each row
begin
INSERT INTO old_student
VALUES (:OLD.s_id, :OLD.s_fname,:OLD.s_lname,:OLD.s_age,:OLD.s_address);
END;