/*/*
    File: DQL01_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/11/2021
    Author: Ana Polo Arozamena
*/

USE veterinary;

/*  
-- 1. List all the owners (name and surname) from London. 
*/

SELECT 
    owners.owner_name, owners.surname
FROM
    owners
WHERE
    UPPER( owners.city ) LIKE 'LONDON';



/*    
-- 2. List all the owners that are not from London. 
*/

SELECT 
    owners.owner_name, owners.surname
FROM
    owners
WHERE
    UPPER( owners.city ) NOT LIKE 'LONDON';



/*    
-- 3. Show all the data for the owner 1. 
*/

SELECT 
    *
FROM
    owners
WHERE
    id_owner LIKE '1';



/*    
-- 4. Show Anna Brawn's phone. 
*/

SELECT 
    owners.telephone
FROM
    owners
WHERE
    LOWER( CONCAT( owners.owner_name, ' ', owners.surname ) ) = 'anna brawn';



/*    
-- 5. List the data for the owners whose identifier is over than 4. 
*/

SELECT 
    *
FROM
    owners
WHERE
    owners.id_owner > '4';



/*    
-- 6. Show the type of animal Mati is. 
*/ 

SELECT 
    pets.animal
FROM
    pets
WHERE
    UPPER( pets.pet_name ) LIKE 'MATI';



/*    
-- 7. List the data for all the parners. 
*/

SELECT 
    *
FROM
    owners
WHERE
    owners.member_clinic IS TRUE;


/*    
-- 8. Show the surname and telephone number for the owner whose nif is 88888888d. 
*/

SELECT 
    owners.surname, owners.telephone
FROM
    owners
WHERE
    owners.identity_card LIKE '99999999j';



/*    
-- 9. How many animals owns the owner 1? 
*/

SELECT 
    owners.number_of_dogs + owners.number_of_cats AS 'Number of animals'
FROM
    owners
WHERE
    id_owner LIKE '1';

/*    
-- 10. List the pet's name for all pets that are not a dangerous breed. 
*/

SELECT 
    pets.pet_name
FROM
    pets
WHERE
    pets.dangerous_breed is FALSE;
 


/*    
-- 11. List all record for the pets that are born in 2013. 
*/

SELECT 
    *
FROM
    pets
WHERE
    YEAR( pets.birth ) = '2013';


/*    
-- 12. List all dog's name. 
*/

SELECT 
    pets.pet_name
FROM
    pets
WHERE
    pets.animal LIKE 'dog';


/*    
-- 13. List the dogs owners' name that are partners from Edimburgh. 
*/

SELECT 
    owners.owner_name
FROM
    owners
WHERE
    owners.number_of_dogs > 0
        AND UPPER( owners.city ) LIKE 'EDIMBURGH';



/*    
-- 14. List the records for the pets that are owned by the owner 9.
 */

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.fk_id_owner = 9;



/*    
-- 15. List all record for the unknown breed pets. 
*/

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.breed LIKE 'mongrel';

/*    
-- 16. List the name and the anual fee for each dog.
*/

SELECT 
    pets.pet_name, pets.monthly_fee * 12 AS 'Annual fee'
FROM
    pets
WHERE
    pets.animal LIKE 'dog';
