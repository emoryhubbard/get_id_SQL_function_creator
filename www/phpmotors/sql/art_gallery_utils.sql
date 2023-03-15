/*DELIMITER $$
CREATE FUNCTION get_artist_id (first VARCHAR(20), last VARCHAR(25))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN 
		(SELECT artist_id FROM artist WHERE fname = first AND lname = last);
END$$
DELIMITER ;*/
/*DELIMITER $$
CREATE FUNCTION get_keyword_id (word VARCHAR(15))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN 
		(SELECT keyword_id FROM keyword WHERE keyword = word);
END$$
DELIMITER ;*/
DELIMITER $$
CREATE FUNCTION get_artwork_id (artwork_title VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN 
		(SELECT artwork_id FROM artwork WHERE title = artwork_title);
END$$
DELIMITER ;


