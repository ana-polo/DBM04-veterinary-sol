/*/*
    File: DQL02_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/11/2021
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



/*  7. List all the dangerous breed for dogs. Give it the alias **dangerous animals**.  */

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



/*  12. Count how many animals have not defined whether or not they are dangerous.  */
/*  13. Insert a pet with the following information:
	
/*  14. Insert a new duenio with the following data:
/*  
	15. List the names and date of birth of all animals in the pet table.  */
/*  16. List all columns in the table owners.  */
/*  17. List the name and date of birth of all cats in the table pets that were born before 01/01/2020.  */
/*  18. List the name and whether or not owners who have dogs but do not have cats are partners. Put an alias to if they are partners or that is "es_socio".  */
/*  19. List the names and surnames of the owners by capitalizing the names and lowercase the surnames of those who have an animal. Two ways.  */
/*  20. List the names of the dogs and the fee they pay by rounding it to 1 decimal place.  */
/*  21. List the names of the cats and the fee paid for them without any decimal value.  */
/*  22. List the different cities of the owners. 
/*  23. List the surnames of the owners sorted in descending order.  */
/*  24. Returns the position of the first occurrence of the number 12 in the postal code of owners. Take out only those who are 12.  */
/*  25. List the name of the animals and the fee they pay sorted first by name ascendingly and secondly the fee you pay descendingly.  */
/*  26. Returns a list with the first 5 rows of the duenios table that has been sorted descendingly by name.  */
/*  27. Return the following 4 pet names from the third.  */
/*  28. List the name of the animal for which you pay the lowest fee and the fee you pay. (Uses only the ORDER BY and LIMIT clauses).  */
/*  29. List the most expensive quota. (without using the ORDER BY and LIMIT clauses).  */
/*  30. List the name of all dogs whose name begins with T.  */
/*  31. List the name of all animals whose name contains the letter t.  */
/*  32. List the name and quota of the dogs whose fees range from 10 to 50 €. Two ways.  */
/*  33. List the name and quota of dogs that do not have a fee greater than or equal to € 40.  Do it in three different ways.  */
/*  34. List all owners named Paco or Bea. Do it in two ways.  */
/*  35. List the names of cats whose name is 5 characters long.  */
/*  36. List the names of dangerous breed dogs.  */
/*  37. List of Santander or Sevillian owners.  */
/*  38. List the names of animals that have not been defined if they are of dangerous breed.  */
/*  39. Inserts Teresa Rábano Verde, who is not a member of the veterinary clinic, into the duenios table. He has a Rottweiler, which is of dangerous breed, called Rufián. The Rottweiler was born on 12/07/2000 and pays for it a fee of € 43.  */23. Teresa, with DNI 12342345h, lives in Pez volador street, 1 of Madrid with zip code 28009. Leave the 698023410 as the contact telephone number.  */
/*  40. Insert in the table pets a new cat, called Tintin that was born on 05/02/2003, that is not of breed and pays 1312 € of quota. The cat belongs to Jose Luis Bárcena Mayor, who lives on Calle Blanco, 14 in Santander with ZIP Code 37015. Your NIF is 3498740k and your phone 658765498. He has no more pets. José Luis has become a partner of the veterinary clinic.  */
/*  41. Paco Martinez Soria has died a dog.  */
/*  42. Return a list with the first 5 people who have the most animals in total. The name and number of total animals you have.  */
/*  43. List the most expensive quota. (without using the ORDER BY and LIMIT clauses).  */.  */
/*  