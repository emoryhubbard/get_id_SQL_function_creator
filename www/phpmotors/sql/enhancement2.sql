--Tony Stark insert statement
INSERT INTO clients (clientFirstname, clientLastname, clientEmail, clientPassword, `comment`)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n', 'I am the real Ironman');

--Tony Stark update statement
UPDATE clients
SET clientLevel = '3'
WHERE clientEmail = 'tony@starkent.com'; -- rollback removes rows but auto-id is now 6

--spacious interior update statement
UPDATE inventory
SET invDescription = replace(invDescription, 'small interior', 'spacious interior')
WHERE invModel = 'Hummer';

--select "SUV" items statement
SELECT inventory.invModel, carclassification.classificationName
FROM carclassification
INNER JOIN inventory ON carclassification.classificationId = inventory.classificationId
WHERE carclassification.classificationName = 'SUV';

--delete Jeep Wrangler statement
DELETE
FROM inventory
WHERE invModel = 'Wrangler';

--update invImage and InvThumbnail statement
UPDATE inventory
SET invImage = concat('/phpmotors', invImage), invThumbnail = concat('/phpmotors', invThumbnail);



/*
SELECT * -- to test new client
FROM clients
WHERE clientEmail = 'tony@starkent.com';

SELECT clientLevel -- to test client level change
FROM clients
WHERE clientEmail = 'tony@starkent.com';

SELECT invDescription -- to test replace
FROM inventory
WHERE invModel = 'Hummer';

SELECT * -- to test delete Wrangler
FROM inventory
WHERE invModel = 'Wrangler';

SELECT invImage, invThumbnail -- to test concat
FROM inventory

*/




