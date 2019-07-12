CREATE OR REPLACE PACKAGE USER1.UNIVERSITY 
IS
PROCEDURE new_student(NS_ID IN student.S_ID%type , NS_FNAME IN student.S_FNAME%type, NS_LNAME IN student.S_LNAME%type, NS_AGE IN STUDENT.S_AGE%type, NS_ADRESS IN STUDENT.S_ADDRESS%type);
FUNCTION GPA(student_id student.s_id%type) 
return number;
PROCEDURE honor_students;
PROCEDURE Student_club_leaders (clubname clubs.cl_name%type);
FUNCTION courses_per_teacher (teacher_id  teacher.t_id%type) return number;
PROCEDURE Teacher_by_course (coursename Course.crs_name%type);
PROCEDURE Delete_student (stid student.s_id%type) 	;
PROCEDURE course_student (NCRS_ID IN enrollment.CRS_ID%type,NS_ID IN student.S_ID%type, NT_ID IN TEACHER.T_ID%type, NGRADE IN  enrollment.GRADE%type,NYEAR IN  enrollment.YEAR%type) ;
PROCEDURE student_info(id in STUDENT.S_ID%type);
END UNIVERSITY ;
/