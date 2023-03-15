DROP FUNCTION IF EXISTS get_college_id1;
DELIMITER $$
CREATE FUNCTION get_college_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT college_id FROM college WHERE college_name = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_course_id1;
DELIMITER $$
CREATE FUNCTION get_course_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT course_id FROM course WHERE course_num = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_course_id2;
DELIMITER $$
CREATE FUNCTION get_course_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT course_id FROM course WHERE course_num = col2 AND course_title = col3);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_course_id3;
DELIMITER $$
CREATE FUNCTION get_course_id3 (col2 VARCHAR(45), col3 VARCHAR(45), col4 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT course_id FROM course WHERE course_num = col2 AND course_title = col3 AND course_credits = col4);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_department_id1;
DELIMITER $$
CREATE FUNCTION get_department_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT department_id FROM department WHERE department_name = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_department_id2;
DELIMITER $$
CREATE FUNCTION get_department_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT department_id FROM department WHERE department_name = col2 AND department_code = col3);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_department_id3;
DELIMITER $$
CREATE FUNCTION get_department_id3 (col2 VARCHAR(45), col3 VARCHAR(45), col4 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT department_id FROM department WHERE department_name = col2 AND department_code = col3 AND college_id = col4);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_enrollment_id1;
DELIMITER $$
CREATE FUNCTION get_enrollment_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT section_id FROM enrollment WHERE student_id = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_faculty_id1;
DELIMITER $$
CREATE FUNCTION get_faculty_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT faculty_id FROM faculty WHERE faculty_fname = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_faculty_id2;
DELIMITER $$
CREATE FUNCTION get_faculty_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT faculty_id FROM faculty WHERE faculty_fname = col2 AND faculty_lname = col3);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_section_id1;
DELIMITER $$
CREATE FUNCTION get_section_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT section_id FROM section WHERE section_num = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_section_id2;
DELIMITER $$
CREATE FUNCTION get_section_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT section_id FROM section WHERE section_num = col2 AND course_id = col3);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_section_id3;
DELIMITER $$
CREATE FUNCTION get_section_id3 (col2 VARCHAR(45), col3 VARCHAR(45), col4 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT section_id FROM section WHERE section_num = col2 AND course_id = col3 AND term_id = col4);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_student_id1;
DELIMITER $$
CREATE FUNCTION get_student_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT student_id FROM student WHERE student_fname = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_student_id2;
DELIMITER $$
CREATE FUNCTION get_student_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT student_id FROM student WHERE student_fname = col2 AND student_lname = col3);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_student_id3;
DELIMITER $$
CREATE FUNCTION get_student_id3 (col2 VARCHAR(45), col3 VARCHAR(45), col4 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT student_id FROM student WHERE student_fname = col2 AND student_lname = col3 AND student_gender = col4);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_term_id1;
DELIMITER $$
CREATE FUNCTION get_term_id1 (col2 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT term_id FROM term WHERE term_year = col2);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS get_term_id2;
DELIMITER $$
CREATE FUNCTION get_term_id2 (col2 VARCHAR(45), col3 VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN
   (SELECT term_id FROM term WHERE term_year = col2 AND term_session = col3);
END$$
DELIMITER ;

