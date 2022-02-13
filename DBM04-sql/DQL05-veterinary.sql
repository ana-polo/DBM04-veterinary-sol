/*/*
    File: DQL05_veterinary.sql 
    Purpose: DBM SQL DML Exercice 05- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/12/2021
    Author: Ana Polo Arozamena
 */


USE veterinary;

/*  
-- 1. List the names of the cats and the fee paid for them without any decimal value.  
*/

SELECT 
    pets.pet_name, ROUND( pets.monthly_fee, 0 )
FROM
    pets;



/*    
-- 2. List the different cities of the owners.
*/

SELECT DISTINCT
    owners.city
FROM
    owners;



/*    
-- 3. List the surnames of the owners sorted in descending order.
*/

SELECT DISTINCT
    owners.surname
FROM
    owners
ORDER BY owners.surname DESC;



/*    
-- 4. For each owner, return the position of the first occurrence of the number 12 in the postal code.
*/

SELECT 
    owners.owner_name, LOCATE( '12', owners.post_code )
FROM
    owners
ORDER BY owners.surname DESC;



/*    
-- 5. List the pet's name and their monthly fee sorted first by name ascendingly and secondly by the fee their owners pay descendingly.
*/

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
ORDER BY pets.pet_name ASC , pets.monthly_fee DESC;



/*    
-- 6. List with the first 5 owners' name sorted descendingly by name.
*/

SELECT 
    owners.owner_name
FROM
    owners
ORDER BY owners.surname DESC
LIMIT 5;



/*    
-- 7. List the following 4 pet names from the third sorted ascendingly.
*/

SELECT 
    pets.pet_name
FROM
    pets
ORDER BY pets.pet_name ASC
LIMIT 3 , 4;



/*    
-- 8. Show the pet's name and the fee for the animal that has the lowest fee. Do it in 3 differents ways.
*/

    -- OPC 1: USING LIMIT
    
SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
ORDER BY pets.monthly_fee ASC
LIMIT 1;


    -- OPC 2: USING MIN
    
SELECT 
    pets.pet_name, MIN( pets.monthly_fee )
FROM
    pets;


    -- OPC 3: USING A SUBQUERY
    
SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.monthly_fee = (SELECT 
            MIN(pets.monthly_fee)
        FROM
            pets);



/*    
-- 9. Show the most expensive quota.
*/

    -- OPC 1: USING LIMIT

SELECT 
    pets.monthly_fee
FROM
    pets
ORDER BY pets.monthly_fee DESC
LIMIT 1;


    -- OPC 2: USING MAX

SELECT 
    MAX( pets.monthly_fee )
FROM
    pets;



/*
-- 10. List the dogs' names that begin with "T".
*/

    -- OPC 1: USING MASK

SELECT 
    pets.pet_name
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND UPPER( pets.pet_name ) LIKE 'T%';


    -- OPC 2: USING LOCATE
    
SELECT 
    pets.pet_name
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND LOCATE( 'T', UPPER( pets.pet_name ) ) = 1;



/*
-- 11. List the pet's names that contains the letter "t". Do it, at least, in 3 differents ways.
*/

    -- OPC 1: USING MASK AND LIKE

SELECT 
    pets.pet_name
FROM
    pets
WHERE
    UPPER( pets.pet_name ) LIKE '%T%';


    -- OPC 2: USING POSITION

SELECT 
    pets.pet_name
FROM
    pets
WHERE
    POSITION( 'T' IN UPPER( pets.pet_name ) ) ;


    -- OPC 3: USING LOCATE
    
SELECT 
    pets.pet_name
FROM
    pets
WHERE
    LOCATE( 'T', UPPER( pets.pet_name ) ) > 0;



/*
-- 12. List the name and quota for the dogs whose fees range from 10 to 50 €. Do it in 2 differents ways.
*/

    -- OPC 1: USING BETWEEN

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND pets.monthly_fee BETWEEN 10 AND 50;


    -- OPC 2: USING <=>

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND pets.monthly_fee >= 10
        AND pets.monthly_fee <= 50;

/*
-- 13. List the name and quota for the dogs that do not have a fee equal or greater than 40 €.  Do it in three different ways.
*/

    -- OPC 1: USING <=

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND pets.monthly_fee < 40;


    -- OPC 2: USING NOT

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND NOT ( pets.monthly_fee >= 40 );


    -- OPC 3: USING !

SELECT 
    pets.pet_name, pets.monthly_fee
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND !( pets.monthly_fee >= 40 );

/*
-- 14. List all owners named Thomas or Bellatrix. Do it in two ways.
*/

    -- OPC 1: USING LIKE

SELECT 
    owners.owner_name
FROM
    owners
WHERE
    UPPER( owners.owner_name ) LIKE 'THOMAS'
        OR UPPER( owners.owner_name ) LIKE 'BELLATRIX';


    -- OPC 2: USING IN

SELECT 
    owners.owner_name
FROM
    owners
WHERE
    UPPER( owners.owner_name ) IN ( 'THOMAS' , 'BELLATRIX' );