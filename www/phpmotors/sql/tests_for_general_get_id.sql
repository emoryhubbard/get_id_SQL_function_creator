DROP PROCEDURE get_id1;

/*3 tabs to the right prove it can't be done this way.
However, you can still dynamically generate all the
functions you need, using a single procedure. You
just need to call it once for each table you would
like to have functions for (a get_id1 function
and a get_id2 function will be made automatically).
In fact, you can make it scan the tables in your
database and simply make all the functions based
on whatever tables it finds, allowing you to write
a single function--and call it a single time--to
have all these functions.*/

DELIMITER $$
CREATE PROCEDURE get_id1(IN table_param varchar(45), IN name_param varchar(45))
BEGIN
	SET @colvar = (SELECT COLUMN_NAME
		FROM INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME='college' AND ORDINAL_POSITION=1);
	SET @id = 0;
    SET @rawstring = CONCAT('SELECT ', @colvar, ' FROM college', ' WHERE college_name = College of Physical Science and Engineering');
    PREPARE stmt FROM @rawstring;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;

DROP FUNCTION get_id1_func;
/*
Since I can't use a parameter in a WHERE statement in a function,
I decided to use a prepared statement instead, but I can't use
a prepared statement inside a function, so I decided to use
it in a stored procedure instead. Since you can't use stored
procedures in SELECT statements (can't be used like that by caller),
I decided to wrap the stored procedure in a function.
*/
DELIMITER $$
CREATE FUNCTION get_id1_func (table_param VARCHAR(45), second_field_value VARCHAR(45))
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
	CALL get_id1(table_param, second_field_value);
	RETURN 
		@colvar;
END$$
DELIMITER ;


/*
DELIMITER $$
CREATE PROCEDURE get_id1(IN table_param varchar(45), IN name_param varchar(45), INOUT id VARCHAR(45))
BEGIN
	SELECT COLUMN_NAME
	INTO id
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME='college' AND ORDINAL_POSITION=1;
END$$
DELIMITER ;*/

/*DELIMITER $$
CREATE FUNCTION get_id1_func (table_param VARCHAR(45), second_field_value VARCHAR(45))
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
	CALL get_id1(table_param, second_field_value, @i);
	RETURN 
		@i;
END$$
DELIMITER ;*/

/*DELIMITER $$
CREATE FUNCTION get_id1 (table_param VARCHAR(45), second_field_value VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN 
		(SELECT college_id
        FROM college
        WHERE college_name = second_field_value);
END$$
DELIMITER ;*/

/*DELIMITER $$
CREATE FUNCTION get_id1 (table_param VARCHAR(45), second_field_value VARCHAR(45))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN 
		(SELECT (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME='college' AND ORDINAL_POSITION=1)
        FROM college
        WHERE (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME='college' AND ORDINAL_POSITION=2) = second_field_value);
END$$
DELIMITER ;
*/

/*SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME='college' 
  AND ORDINAL_POSITION=1;*/
  



