1.  Create a function to return student mark for a given student name.

use assignment1;

select* from students;

DELIMITER $$
create function getStudentMark( name  VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN 
DECLARE std_mark INT ;
SELECT  marks INTO std_mark FROM students where student_name=name;
RETURN std_mark;
END$$
DELIMITER ;

SELECT getStudentMark('priya');




