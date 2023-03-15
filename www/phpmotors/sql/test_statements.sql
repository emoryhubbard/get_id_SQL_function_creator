CALL create_get_ids();

SELECT college_name, CONCAT(college_name, get_college_id('College of Physical Science and Engineering'))
FROM college;

/*SELECT college_name, CONCAT(college_name, get_id1_func('college_name', 'College of Physical Science and Engineering'))
FROM college;*/

/*INSERT INTO college
	(college_name)
VALUES
	('College of Physical Science and Engineering'),
    ('College of Business and Communication'),
    ('College of Language and Letters');*/
    
/*INSERT INTO department
	(department_name, department_code, college_id)
VALUES
	('Computer Information Technology', get_id('college', 'College of Physical Science and Engineering'));*/
    