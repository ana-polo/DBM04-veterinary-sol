/*/*
    File: DQL04_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/12/2021
    Author: Ana Polo Arozamena
 */


USE veterinary;

/*  1. Modify the records for representate that Thomas Smith is a member of the clinic.  */

SELECT 
    owners.owner_name AS Name, owners.member_clinic AS Member
FROM
    owners
WHERE
    UCASE(owners.owner_name) LIKE 'THOMAS'
        AND UCASE(owners.surname) LIKE 'SMITH';


UPDATE owners 
SET 
    owners.member_clinic = 'true'
WHERE
    UCASE( owners.owner_name ) LIKE 'THOMAS'
        AND UCASE( owners.surname ) LIKE 'SMITH';


SELECT 
    owners.owner_name AS Name, owners.member_clinic AS Member
FROM
    owners
WHERE
    UCASE(owners.owner_name) LIKE 'THOMAS'
        AND UCASE(owners.surname) LIKE 'SMITH';


/*  2. Increase the cats fee in 1 €.  */

UPDATE pets 
SET 
    pets.monthly_fee = pets.monthly_fee + 1
WHERE
    pets.animal LIKE 'cat';



/*  3. Delete the records for Bellatrix Rae in the table owners. What do you have to do before?
    
    /* --- First of all, it is mandatory to know the pets that she owns and DELETE their records in the pets' table before */

DELETE FROM pets 
WHERE
    pets.fk_id_owner LIKE ( SELECT 
        owners.id_owner
    FROM
        owners
    
    WHERE
        UPPER( owners.owner_name ) LIKE 'BELLATRIX'
        AND UPPER( owners.surname ) LIKE 'RAE');


    /*--- After deleting those pets, it is possible to delete the owner */

DELETE FROM owners 
    WHERE
        UPPER( owners.owner_name ) LIKE 'BELLATRIX'
        AND UPPER( owners.surname ) LIKE 'RAE';


    /*--- It is possible to verify the changes */
    
SELECT 
    owners.id_owner
FROM
    owners
WHERE
    UPPER( owners.owner_name ) LIKE 'BELLATRIX'
        AND UPPER( owners.surname ) LIKE 'RAE';


        
/*  4. Subtract one day from the date of birth of dogs born after 01/01/2018.  */

SELECT 
    pets.pet_name, pets.birth AS antes
FROM
    pets
WHERE
    pets.birth > '2018-01-01';


UPDATE pets 
SET 
    pets.birth = DATE_ADD( pets.birth, INTERVAL -1 DAY )
WHERE
    pets.birth > '2018-01-01'; 


SELECT 
    pets.pet_name, pets.birth as despues
FROM
    pets
WHERE
    pets.birth > '2018-01-01';



/*  5. Show the youngest animal's birthday in the following format: **Tue, 18th of August, 2015**.  */

    /*--- OPC 1: Using MAX() */
    
SELECT 
    DATE_FORMAT( MAX( pets.birth ), '%W %D %M %Y' ) AS Birthday
FROM
    pets; 


    /*--- OPC 2: Ordering the list */

SELECT 
    DATE_FORMAT( pets.birth, '%W, %D of %M, %Y' ) AS Birthday
FROM
    pets
ORDER BY pets.birth DESC
LIMIT 1; 



/*  6. List the name and birthday of the cats that were born in 2019. Do it in two ways.  */

    /*--- OPC 1: Using YEAR() */
    
SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    pets.animal LIKE 'cat'
        AND YEAR( pets.birth ) = 2019;
    
    
    /*--- OPC 2: Using BETWEEN operator */

SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    pets.animal LIKE 'cat'
        AND pets.birth BETWEEN '2019-01-01' and '2019-12-31';
    
    
    /*--- OPC 3: Using COMPARATIVES operators */

SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    pets.animal LIKE 'cat'
        AND pets.birth >= '2019-01-01'
        AND pets.birth <= '2019-12-31';



/*  7. List all the dangerous breed for dogs. Create the alias "Dangerous animals".  */

SELECT 
    pets.breed AS 'dangerous animals'
FROM
    pets
WHERE
    pets.animal LIKE 'dog'
        AND pets.dangerous_breed IS TRUE;



/*  8. Shows the fee paid by each cat truncated to 0 decimal places.  */

SELECT 
    pets.pet_name AS Name, TRUNCATE( pets.monthly_fee, 0 ) AS Fee
FROM
    pets
WHERE
    pets.animal LIKE 'cat';



/*  9. List the names of the owners whose name is 4 characters long.  */

SELECT 
    owners.owner_name
FROM
    owners
WHERE
    LENGTH( owners.owner_name ) = 4;



/*  10. Replace the owner surname Brown by Brawn.  */

select owners.surname 
from owners
where owners. surname LIKE'Br%wn';


UPDATE owners 
SET 
    owners.surname = REPLACE( owners.surname, 'o', 'a' )
WHERE
    UPPER( owners.surname ) LIKE 'BROWN';


SELECT 
    owners.surname
FROM
    owners
WHERE
    owners.surname LIKE 'Br%wn';



/*  11. Calculate the age of each cat, showing the name in capital letters and the age.  */

SELECT 
    UPPER( pets.pet_name ) AS Name, (  YEAR( CURRENT_DATE() ) - YEAR( pets.birth ) ) AS Age
FROM
    pets
WHERE
    pets.animal LIKE 'cat';



/*  12. Count how many animals have not defined whether or not they are dangerous.  */

SELECT 
    COUNT(pets.dangerous_breed) AS Total
FROM
    pets
WHERE
    pets.dangerous_breed IS NULL;



/*  13. Insert a new pet whose name is *Marmaduke* and it is a mastin that was born the 8th of May, 2013. The owner is Bellatrix Rae and she pays a montly fee of 30 euros. And the vaalue for the identifier is 124 */

INSERT INTO pets ( pets.id_pet, pets.pet_name, pets.birth, pets.animal, pets.breed, pets.monthly_fee, pets.fk_id_owner )
    VALUES ( '124', 'Marmaduke', '2013-05-08', 'dog', 'mastin', 30.00, ( SELECT 
            owners.id_owner
        FROM
            owners
        WHERE
            UPPER( owners.owner_name ) LIKE 'BELLATRIX'
            AND UPPER( owners.surname ) LIKE 'RAE') );

SELECT 
    *
FROM
    pets;



/*	14. List the names and birthday of all animals.  */

SELECT 
    pets.pet_name AS name, pets.birth AS Birthday
FROM
    pets;



/*  15. List all columns in the table owners.  */

SELECT 
    *
FROM
    owners;



/*  16. List the name and birthday for all cats that were born before 01/01/2020. */

SELECT 
    pets.pet_name AS Name, pets.birth AS Birthday
FROM
    pets
WHERE
    pets.birth < '2020-01-01'; 



/*  17. List the owners who have dogs but do not have cats and show whether are partners or not. */

SELECT 
    owners.owner_name AS Name,
    owners.surname AS surname,
    owners.member_clinic AS Partner
FROM
    owners
WHERE
    owners.number_of_dogs > 0
        AND owners.number_of_cats = 0;



/*  18. List the names and surnames of those owners that only have a pet, by capitalizing the names and lowercase the surnames. */

SELECT 
    UPPER(owners.owner_name) AS Name,
    LOWER(owners.surname) AS surname
FROM
    owners
WHERE
    (owners.number_of_dogs + owners.number_of_cats) = 1;



/*  19. List the dog's names and their fee by rounding it to 1 decimal. */

SELECT 
    pets.pet_name AS Name,
    ROUND(pets.monthly_fee, 1) AS 'Monthly fee'
FROM
    pets
WHERE
    pets.animal LIKE dog;
