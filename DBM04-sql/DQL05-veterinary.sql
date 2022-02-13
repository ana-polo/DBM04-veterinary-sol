/*/*
    File: DQL05_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/12/2021
    Author: Ana Polo Arozamena
 */


USE veterinary;

/*  
-- 1. List the names of the cats and the fee paid for them without any decimal value.  
*/

SELECT pets.pet_name,
    pets.monthly_fee * 12 AS 'Anual fee',
    ROUND( pets.monthly_fee * 12, 1 ) AS 'Anual fee round',
    TRUNCATE( pets.monthly_fee * 12, 0 ) AS 'Anual fee truncate'
FROM
    pets;



/*    
-- 2. List the different cities of the owners.
*/

SELECT DISTINCT owner.city
FROM
    owners;



/*    
-- 3. List the surnames of the owners sorted in descending order.
    4. For each owner, return the position of the first occurrence of the number 12 in the postal code.
    5. List the pet's name and their monthly fee sorted first by name ascendingly and secondly by the fee their owners pay descendingly.
    6. List with the first 5 owners' name sorted descendingly by name.
    7. List the following 4 pet names from the third sorted ascendingly.
    8. Show the pet's name and the fee for the animal that has the lowest fee. Do it in 3 differents ways.
    9. Show the most expensive quota. D
    10. List the dogs' names that begin with "T".
    11. List the pet's names that contains the letter "t". Do it, at least, in 3 differents ways.
    12. List the name and quota for the dogs whose fees range from 10 to 50 €. Do it in 2 differents ways.
    13. List the name and quota for the dogs that do not have a fee equal or greater than 40 €.  Do it in three different ways.
    14. List all owners named Thomas or Bellatrixa. Do it in two ways.
*/