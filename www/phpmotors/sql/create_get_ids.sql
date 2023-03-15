DROP PROCEDURE IF EXISTS create_get_ids;
DROP FUNCTION IF EXISTS get_college_id;


DELIMITER $$
CREATE PROCEDURE create_get_ids()
BEGIN
	SET @rawstring = CONCAT(
    'CREATE FUNCTION get_college_id (college_name_param VARCHAR(50)) RETURNS INT DETERMINISTIC RETURN (SELECT college_id FROM college WHERE college_name = college_name_param);', ''
    );
    PREPARE stmt FROM @rawstring;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;

/*CREATE FUNCTION get_college_id (college_name_param VARCHAR(50)) RETURNS INT DETERMINISTIC RETURN (SELECT college_id FROM college WHERE college_name = college_name_param);*/

/*DELIMITER $$
	CREATE FUNCTION get_college_id (college_name_param VARCHAR(50))
	RETURNS INT
	DETERMINISTIC
	BEGIN
		RETURN 
			(SELECT college_id FROM college WHERE college_name = college_name_param);
	END$$
	DELIMITER ;*/

/*DELIMITER $$
CREATE PROCEDURE create_get_ids()
BEGIN
	SET @rawstring = CONCAT(
    'CREATE FUNCTION get_college_id (college_name_param VARCHAR(50)) RETURNS INT DETERMINISTIC BEGIN RETURN (SELECT college_id FROM college WHERE college_name = college_name_param);', ''
    );
    PREPARE stmt FROM @rawstring;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;*/

/*DELIMITER $$
CREATE PROCEDURE create_get_ids()
BEGIN
	SET @rawstring = CONCAT(
    'DELIMITER $$
	CREATE FUNCTION get_college_id (college_name_param VARCHAR(50))
	RETURNS INT
	DETERMINISTIC
	BEGIN
		RETURN 
			(SELECT college_id FROM college WHERE college_name = college_name_param);
	END$$
	DELIMITER ;', ''
    );
    PREPARE stmt FROM @rawstring;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;*/

/*
DELIMITER $$
CREATE PROCEDURE create_get_ids()
BEGIN
	SET @rawstring = CONCAT('SELECT ', '* ', 'FROM ', 'college');
    PREPARE stmt FROM @rawstring;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;
*/