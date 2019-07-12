Schema


![Imgur](https://i.imgur.com/QQBTNud.png)

Tables<br>
Student: Contains the info of students.<br>
Course: Contains the list of courses.<br>
Department: Contains the list of departments.<br>
Clubs: Contains the info of the clubs.<br>
Teachers: Contains the info of teachers.<br>
Enrollment: Contains the enrolled courses per student.<br>
Teacher Course: Contains the teachers per course.<br>
Old Student: Contains the list of old students.<br>
Probation: Contains the list of students in probation.<br>
Procedures<br>
New student: enables the user to add a new student into the students table.<br>
Delete student:  delete a student from the students table according to their CIN.<br>
Course Student: Enroll a student in a new course. <br>
-Uses a high grade exception which  prevents the user from entering a grade higher than 100.<br>
-Uses an already registered exception which prevents the user from adding the student into the course if he is already enrolled in it.<br>
Honor Students: Displays the student with a GPA higher than 3.6 . Uses the GPA function to display the list of honor students.<br>
Student Club Leader: Takes a club name and outputs its leader.<br>
Teacher Per Course: Takes a course name and outputs the list of its teachers.<br>
Student Info: Takes a student’s CIN and displays all his info including the GPA and enrolled courses. If the student has no registered course then the procedure will display the students info and  ‘no courses registered’. If the student has courses registered the procedure will display all the student info and his/her courses registered and each courses grade and the student’s GPA.<br>
Functions
GPA: calculates the GPA of the student according to their CIN.
-If the student has no courses registered, and the sum of registered credits is 0 the  function will use  the ZERO_DIVIDE exception to return a GPA of 0.
Courses per teacher: Calculates the number of courses of the teacher using his id.<br>
Triggers<br>
Probation: uses a cursor to scan the enrollment table and detects if a student’s GPA is lower than 2, then it inserts it into the probation table, if the student is already in the probation table it won’t insert it, if it detects that a student has a GPA higher than 2 and exists in the probations table it will delete it from the probations table.<br>
Security: does not allow the user to work on a table outside of working days/hours.<br>
One president: does not allow a new club to be added with a president that already is a president of another club.<br>
Min age: does not allow a new student to be inserted if the inserted age is below 18.<br>
Old student: inserts the info of a deleted student into the old student table.<br>
