/*/*
    File: DQL01_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/11/2021
    Author: Ana Polo Arozamena
*/

USE veterinary;

/*  1. List the first and last names of cat owners. */

SELECT 
    owners.owner_name AS OWNER, owners.surname AS SURNAME
FROM
    owners
WHERE
    owners.number_of_cats > 0;



/*  2. List the first and last names of cat owners in a single field. */

SELECT 
    CONCAT( owners.owner_name, ' ', owners.surname ) AS OWNER
FROM
    owners
WHERE
    owners.number_of_cats > 0;



/*  3. List the name and surname of cat owners in a single field, separated by 6 spaces. */

    /*--- OPC 1: USING CONCAT */

SELECT 
    CONCAT( owners.owner_name,
            '      ',
            owners.surname ) AS OWNER
FROM
    owners
WHERE
    owners.number_of_cats > 0;


    /*--- OPC 2: USING CONCAT_WS */

SELECT 
    CONCAT_WS( '      ',
            owners.owner_name,
            owners.surname ) AS OWNER
FROM
    owners
WHERE
    owners.number_of_cats > 0;



/*  4. List the name and surname of cat owners in a single field, separated by 6 spaces with no spaces either in front or behind. */

    /*--- OPC 1: USING RTRIM and LTRIM */

SELECT 
    LTRIM( RTRIM ( CONCAT_WS( '      ',
                        owners.owner_name,
                        owners.surname ) ) ) AS OWNER
FROM
    owners
WHERE
    owners.number_of_cats > 0;


    /*--- OPC 2: USING TRIM */

SELECT 
    TRIM( CONCAT_WS( '      ',
                owners.owner_name,
                owners.surname ) ) AS OWNER
FROM
    owners
WHERE
    owners.number_of_cats > 0;



/*  5. List the number of dogs that cat owners have. */

SELECT 
    owners.owner_name AS NAME, owners.surname AS SURNAME, owners.number_of_dogs AS DOGS
FROM
    owners
WHERE
    owners.number_of_cats > 0;



/*  6. List the name, the surname and the total number of animals that each owner. */

SELECT 
    owners.owner_name AS NAME,
    owners.surname AS SURNAME,
    owners.number_of_dogs + owners.number_of_cats AS 'Total animals'
FROM
    owners;



/*  7. When was the youngest dog born? */

    /*--- OPC 1: Using = and without formating the date */

SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    animal LIKE 'dog'
ORDER BY birth DESC
LIMIT 1;


    /*--- OPC 2: Using LIKE and a date format */

SELECT 
    pets.pet_name AS Name, DATE_FORMAT( pets.birth, '%W, the %d of %M, %Y' ) AS Birthday
FROM
    pets
WHERE
    animal LIKE 'dog'
ORDER BY birth DESC
LIMIT 1;


    /*--- OPC 3: Using LIKE with another date format */

SELECT 
    pets.pet_name AS Name, DATE_FORMAT( pets.birth, '%d - %m - %y' ) AS Birthday
FROM
    pets
WHERE
    animal LIKE 'dog'
ORDER BY birth DESC
LIMIT 1;



/*  8. And what about the oldest cat? */

    /*--- OPC 1: Using ORDER, LIKE and without formating the date */

SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    animal LIKE 'cat'
ORDER BY birth ASC
LIMIT 1;


    /*--- OPC 2: Using ORDER, = and a date format */

SELECT 
    pets.pet_name AS Name, DATE_FORMAT( pets.birth, '%W the%D of %M,  %Y' ) AS Birthday
FROM
    pets
WHERE
    animal = 'cat'
ORDER BY birth ASC
LIMIT 1;


    /*--- OPC 3: Using LIKE with another date format */

SELECT 
    pets.pet_name AS Name, DATE_FORMAT( pets.birth, '%d - %m - %y' ) AS Birthday
FROM
    pets
WHERE
    animal LIKE 'cat'
ORDER BY birth ASC
LIMIT 1;



/*  9. List the age of each dogs and its name. */

    /*--- OPC 1: Using CURDATE() */

SELECT 
    YEAR( CURDATE() ) - YEAR( pets.birth ) AS AGE,
    pets.pet_name AS Name
FROM
    pets
WHERE
    animal LIKE 'dog';


    /*--- OPC 2: Using CURRENT_DATE() */

SELECT 
    YEAR( CURRENT_DATE() ) - YEAR( pets.birth ) AS AGE,
    pets.pet_name AS Name
FROM
    pets
WHERE
    animal LIKE 'dog';



/*  10. List the names of the dogs in capital letters. */

   /*--- OPC 1: Using UPPER() */

SELECT 
    UPPER( pets.pet_name ) AS Name
FROM
    pets
WHERE
    animal LIKE 'dog';


   /*--- OPC 2: Using UCASE() */

SELECT 
    UCASE( pets.pet_name ) AS Name
FROM
    pets
WHERE
    animal LIKE 'dog';



/*  11. List the cat names in lowercase. */

   /*--- OPC 1: Using LOWER() */

SELECT 
    LOWER( pets.pet_name ) AS Name
FROM
    pets
WHERE
    animal LIKE 'cat';


   /*--- OPC 2: Using LCASE() */

SELECT 
    LCASE( pets.pet_name ) AS Name
FROM
    pets
WHERE
    animal LIKE 'cat';



/*  12. List the names of the owners changing the letter 'a' to the letter 'b'. */

SELECT 
    REPLACE( owners.owner_name, 'a', 'b' )
FROM
    owners;



/*  13. Replace the owners' surname 'Smith' with 'Winter'. */

SELECT 
    REPLACE( owners.surname,
        'Smith',
        'Winter' )
FROM
    owners;



/*  14. List the animals' names and the position of the first 'a' after the 3nd character. For example: Matilda returns me 7. */

SELECT 
    pets.pet_name AS Name,
    LOCATE( 'a', pets.pet_name, 3 ) AS 'Position of a after ther 3nd character'
FROM
    pets;



/*  15. How many years have passed between the oldest and youngest cat were born. */

SELECT 
    MAX(pets.birth) AS Maximo,
    MIN(pets.birth) AS Minimo,
    YEAR( MAX(pets.birth) ) - YEAR( MIN(pets.birth) ) AS Years
FROM
    pets;



/*  16. Update the quota of dogs by increasing it by 1 euro to those who were born before January the first, 2018. */

SELECT 
    pets.monthly_fee
FROM
    pets;

UPDATE pets 
SET 
    pets.monthly_fee = pets.monthly_fee + 1.00
WHERE
    pets.birth < '2018-01-01';

SELECT 
    pets.monthly_fee
FROM
    pets;


/*  17. Update the date of birth of cats, adding 1 month. */

SELECT 
    pets.birth
FROM
    pets
WHERE
    pets.animal LIKE 'cat';

UPDATE pets 
SET 
    pets.birth = DATE_ADD( pets.birth, INTERVAL 1 MONTH )
WHERE
    pets.animal LIKE 'cat';

SELECT 
    pets.birth
FROM
    pets
WHERE
    pets.animal LIKE 'cat';



/*  18. Delete Peque and update the number of cats owned by the owner. */

UPDATE owners 
SET 
    owners.number_of_cats = owners.number_of_cats - 1
WHERE
    owners.id_owner LIKE ( SELECT 
            pets.fk_id_owner
        FROM
            pets
        WHERE
            UCASE( pets.pet_name ) LIKE 'PEQUE' );

DELETE FROM pets 
WHERE
    UPPER( pets.pet_name ) LIKE 'PEQUE';