/*/*
    File: DQL02_veterinary.sql 
    Purpose: DBM SQL DML Exercice 04- Queries that allow to obtain the following data from the veterinary database.
    Written: 10/11/2021
    Author: Ana Polo Arozamena
*/

USE veterinary;

/*    1. List the name, the anual fee, the anual fee round with one decimal, the anual fee truqued without decimals for all pets. */

SELECT 
    pets.pet_name,
    pets.monthly_fee * 12 AS 'Anual fee',
    ROUND( pets.monthly_fee * 12, 1 ) AS 'Anual fee round',
    TRUNCATE( pets.monthly_fee * 12, 0 ) AS 'Anual fee truncate'
FROM
    pets;



/*    2. List the daily fee (think that all month has 30 days) for all pets, show each quantity round with 3 decimals an trunced with 3 decimals too. */

SELECT 
    pets.pet_name,
    pets.monthly_fee / 30 AS 'Daily fee',
    ROUND( pets.monthly_fee / 30, 3 ) AS 'Daily fee round',
    TRUNCATE( pets.monthly_fee / 30, 3 ) AS 'Daily fee truncate'
FROM
    pets;



/*    3. List all records for pets that are born in march, 2019. */

    /*--- OPC 1: USING MONTHNAME AND YEAR */

SELECT 
    pets.*
FROM
    pets
WHERE
    MONTHNAME( pets.birth ) LIKE 'MARCH'
        AND YEAR( pets.birth ) = 2019;


    /*--- OPC 2: USING MONTH AND YEAR */

SELECT 
    pets.*
FROM
    pets
WHERE
    MONTH( pets.birth ) = 3
        AND YEAR( pets.birth ) = 2019;


    /*--- OPC 3: USING COMPARATIVES */

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.birth >= '2019-03-01'
        AND pets.birth <= '2019-03-31';


    /*--- OPC 4: USING BETWEEN */

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.birth BETWEEN '2019-03-01' AND '2019-03-31';



/*    4. List the records for the dangerous dogs that are owned by the owner 5.*/

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.dangerous_breed = 'TRUE'
        AND pets.fk_id_owner = 5;



/*    5. List the record for the pets that have no informed the dangerous field. */

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.dangerous_breed IS NULL;



/*    6. List the record for the dangerous dogs whose monthly fee is more than 20 euros.  */

SELECT 
    pets.*
FROM
    pets
WHERE
    pets.dangerous_breed = 'TRUE'
        AND pets.animal LIKE 'dog'
        AND pets.monthly_fee > 20;



/*    7. List the cat owners' name and surname. */

SELECT 
    owners.owner_name, owners.surname
FROM
    owners,
    pets
WHERE
    owners.id_owner = pets.fk_id_owner
        AND pets.animal LIKE 'cat';



/*    8. List the pet owners' name and surname who have more dogs than cats.  */

SELECT 
    owners.owner_name, owners.surname
FROM
    owners
WHERE
    owners.number_of_dogs > owners.number_of_cats;



/*    9. List the partner's record who have more cats than dogs. */

SELECT 
    owners.*
FROM
    owners
WHERE
    owners.member_clinic = 'true'
        AND owners.number_of_cats > owners.number_of_dogs;



/*    10. List the pet owners' name and surname who are not partners and that have more cats than dogs. */

SELECT 
    owners.owner_name, owners.surname
FROM
    owners
WHERE
    owners.member_clinic = 'false'
        AND owners.number_of_cats > owners.number_of_dogs;



/*    11. What do these comands do ? */

SELECT 
    SUM(owners.number_of_cats)
FROM
    owners;
 
 /* Add the cats of all the owners */
 
 
 
 /*   12. How many owners are from Edinburgh ? */
 
SELECT 
    COUNT(owners.id_owner) AS 'Owners fron Edinburgh'
FROM
    owners
WHERE
    LCASE(owners.city) LIKE 'edinburgh';
 
 
 
 /*   13. Show the total number of cats, the total number of dogs and the total number of pets there are. */

SELECT 
    COUNT(owners.number_of_cats) AS 'cats', 
    COUNT(owners.number_of_dogs) AS 'dogs', 
    COUNT(owners.number_of_cats) + COUNT(owners.number_of_dogs) AS 'pets'
FROM
    owners;



 /*   14. How many partners have any cat? */

SELECT 
    COUNT( * ) AS 'Partners that have any cats'
FROM
    owners
WHERE
    owners.member_clinic = 'true'
        AND owners.number_of_cats > 0;
