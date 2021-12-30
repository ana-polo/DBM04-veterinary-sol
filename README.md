# DBM04-Veterinary-sol

![Logo de Team](https://github.com/ana-polo/DBM04-veterinary-sol/blob/main/DBM.gif "Team logo")


<a name="top"></a>
## Table of Contents
1. [General Info.](#general-info)
2. [Technologies.](#technologies)
3. [Collaboration.](#collaboration)
4. [Problem definition.](#problem-definition)
    1. [Creation of the tables of the DB.](#create)
    2. [Recording data.](#insert)
    3. [Querying data 1.](#query1)
    4. [Querying data 2.](#query2)
    5. [Querying data 3.](#query3)
    	

&nbsp;
<a name="general-info"></a>
### 1. General Info
***
*Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems*


&nbsp;
<a name="technologies"></a>
### 2. Technologies
***
A list of technologies used within the project:
*MySQL: Version 8.0 
    - SQL-DDL: Data Definition Language 
    - SQL-DDL: Data Definition Language
    - SQL-DQL: Data Query Language* 


&nbsp;
<a name="collaboration"></a>
### 3. Collaboration
***
*Students:* 
- Haplo35. 
- ErnestoPGH.
- IrvingVqz.


&nbsp;
<a name="problem-definition"></a>
### 4. Problem definition
***
<a name="create"></a>
#### i. Create a new database called high-school with the following tables in the new database
#
📝 **TO DO:** 

        1. Decide the appropriate name for each field, the most appropriate data type and whether it is mandatory that the field be informed or not.	   
        2. Think about the order in which you will create the tables, keep in mind the restrictions. Define ALL possible constraints primary keys, foreign keys, etc.


⚠️ **WARNING:** 
- All the operations must be done in the creation of the tables.


👀 **Remember ot forget!**
- Properly format and document the code.


&nbsp;
<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

<br />
	
*PETS_OWNERS*
	
        - Owner IDENTIFIER
        - Name 
        - Surnames 
        - Identity card 
        - Telephone (Only one per each owner)
        - Address
        - City. The default value must be Edimburgh
        - Post code
        - Whether you are a member or not
        - Number of dogs, can not be greater than 7
        - Number of cats, can not be greater than 5
		 
		 
*PETS*

	- Identifier pet
        - Name 
        - Date of birth cannot be earlier than 01/01/2000),
        - Type of animal. It can only be dogs or cats
        - Breed 
        - Whether it is a dangerous breed or not, by default they are not
        - Monthly fee
        - Owner of the animal

	
**REMARKS:**
- Keep in mind that there can be no owner who does not have any animal.

</details>


&nbsp;
&nbsp;
<a name="insert"></a>
#### ii. Recording data.
#
📝 **TO DO:**

        1. Make the necessary changes to the structure of the DB or data in order to load the information into the tables.


⚠️ **WARNING:** 
- The operations CAN NOT be done in the creation of the tables.


👀 **Remember to not forget!**
- Properly format and document the code.		 

 
&nbsp;
<details>
    <summary>CLICK ME TO SEE THE DATA</summary>
     
<br />	
*PETS_OWNER*
	
     1 ;   Bellatrix  ; Graham   ; 11111111h ; 698765432 ; Cromwell Road                      ; London    ; SW7 5BD ; TRUE  ; 1 ; 1 
     2 ; Thomas     ; Smith      ; 22222222l ; 698345432 ; 4 Lochrin Square 96 Fountainbrigde ; Edimburgh ; EH3 9QA ; FALSE ; 2 ; 1 
     3 ; Jack       ; Johnson  ; 33333333j ; 654345432 ; 38 Thistle St                      ; Edimburgh ; EH2 1EN ; FALSE ; 0 ; 1 
     4 ;  Matthew   ; Williams ; 44444444d ; 654332345 ; 10 Princess Street                 ; Edimburgh ; EH2 2AN ; FALSE ; 2 ; 5 
     5 ; Anna       ; Brown    ; 5555555p  ; 623235432 ; 2 Gulliver Street                  ; London    ; SE6 7LT ; FALSE ; 4 ; 2 
     6 ; Sofia      ; Jones    ; 66666666u ; 665456789 ; 12 Coates Place                    ; Edimburgh ; EH3 7AA ; TRUE  ; 1 ; 0 
     7 ; Matthew    ; Taylor   ; 77777777b ; 634562343 ; 17 Southgate Place                 ; Bath      ; BA1 1AP ; FALSE ; 1 ; 0 
     8 ; Bellatrix  ; Rae      ; 88888888d ; 698786543 ; 1 Ness Walk                        ; Inverness ; IV3 5TE ; FALSE ; 0 ; 3 
     9 ; Theresa    ; Harper   ; 99999999j ; 698765438 ; Drumsheugh Garden                  ; Edimburgh ; EH3 7RN ; TRUE  ; 1 ; 1 
    10 ; Nathaniel ; Campbell ; 12123432u ; 690987640 ; Leith Street                        ; Edimburgh ; EH1 3SP ; FALSE ; 0 ; 1 


*PETS*
	
    101 ; Mati    ; 02/05/2013 ; dog ; mongrel          ; 'FALSE' ; 20.5 ; 1
    102 ; Little  ; 01/06/2019 ; cat ; siamese          ;  NULL   ; 30.5 ; 1
    103 ; Idefix  ;  5/02/1999 ; dog ; cocker           ;  NULL   ; 20.5 ; 2
    104 ; Blue    ; 01/21/2018 ; dog ; mastin           ; FALSE   ; 20.5 ; 2
    105 ; Socks   ; 05/18/2015 ; cat ; siamese          ;  NULL   ; 30.5 ; 11    
    106 ; Ringo   ; 03/25/2017 ; cat ; angora           ;  NULL   ; 30.5 ; 3
    107 ; ; Lola  ; 08/01/2019 ; dog ; german shepherd  ; FALSE   ; 20.5 ; 4
    108 ; Shots   ; 07/21/2018 ; dog ; podle            ; FALSE   ; 20.5 ; 4
    109 ; Sugar   ; 09/20/2010 ; cat ; mongrel          ; NULL    ; 30,5 ; 5
    110 ; Plas    ; 09/12/2011 ; cat ; angora           ; NULL    ; 30.5 ; 5
    111 ; Thorn   ; 04/15/2012 ; dog ; bulldog          ; FALSE   ; 20.5 ; 5
    112 ; Giri    ; 09/18/2013 ; dog ; mongrel          ; FALSE   ; 20.5 ; 5
    113 ; Jimmy   ; 12/09/2014 ; dog ; mongrel          ; FALSE   ; 20.5 ; 5
    114 ; Fluff   ; 10/21/2015 ; dog ; Rottweiler       ; TRUE    ; 20.5 ; 5
    115 ; Ziro    ; 01/12/2018 ; dog ; Rottweiler       ; TRUE    ; 20.5 ; 6
    116 ; Puma    ; 09/15/2019 ; dog ;  Bulldog         ; FALSE   ; 20.5 ; 7
    117 ; Chiqui  ; 05/08/2017 ; cat ; angora           ; NULL    ; 30.5 ; 8
    118 ; Pearl   ; 03/08/2019 ; cat ; angora           ; NULL    ; 30.5 ; 8
    119 ; Diamond ; 12/25/2017 ; cat ; angora           ; NULL    ; 30.5 ; 8
    120 ; Thunder ; 03/05/2019 ; dog ; pit bull terrier ; TRUE    ; 20.5 ; 9
    121 ; Tato    ; 02/15/2016 ; cat ; siamese          ; NULL    ; 30.5 ; 9
    122 ; Beltza  ; 12/12/2000 ; cat ; angora           ; NULL    ; 30.5 ; 10
    123 ; Tintin  ; 01/23/1999 ; cat ; mongrel          ; NULL    ; 30.5 ; 2

</details>


&nbsp;
&nbsp;
<a name="query1"></a>  
#### iii. Querying data 1.
#

📝 **TO DO:**

        1. Create SQL scripts that allow you to obtain the following data from the created DB.


👀 **Remember to not forget!**
- Precede each script with a comment that corresponds to its statement
- Properly format and document the code.		 

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE QUERIES</summary>
     
<br />
	
        1. List the cat owners' names and surnames.
        2. List the cat owners' name and surname all in a single field.
        3. List the cat owners' name and surname in a single field, separated by 6 spaces. 
        4. List the cat owners' name and surname in a single field, separated by 6 spaces with no spaces either in front or behind.
        5. List the number of dogs that each cat owner have.
        6. List the name, the surname and the total number of animals that each owner.
        7. When was the youngest dog born? 
        8. And what about the oldest cat?
        9. List the age of each dogs and its name.
        10. List the names of the dogs in capital letters.
        11. List the cat names in lowercase.
        12. List the names of the owners changing the letter 'a' to the letter 'b'.
        13. Replace the owners' surname Smith with Winter.
        14. List the animals' names and the position of the first 'a' after the 3 character. For example: Matilda returns me 7.
        15. How many years have passed between the oldest and youngest cat were born.
        16. Update the quota of dogs by increasing it by 1 euro to those who were born before January the first, 2018.
        17. Update the date of birth of cats, adding 1 month.
        18. Delete Peque and update the number of cats owned by the owner.

</details>


&nbsp;
&nbsp;
<a name="query2"></a>  
#### iv. Querying data 2.
#

📝 **TO DO:**

        1. Create SQL scripts that allow you to obtain the following data from the created DB.


👀 **Remember to not forget!**
- Precede each script with a comment that corresponds to its statement
- Properly format and document the code.		 

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE QUERIES</summary>
     
<br />
	
        1. Become a member of Tomás Valiente.
        2. Increase the cat fee by 1 €.
        3. Erase Bea García Lopez. What do you have to do before?
        4. Subtract one day from the date of birth of dogs born after 01/01/2018.
        5. List the date of birth of the youngest animal in the following format: Tue 18th August 2015.
        6. List the name and date of birth of cats born in 2019. Do it in two ways.
        7. List all the names of dangerous breed dogs. Give it the alias animales_peligrosos.
        8. Shows the fee paid by cats truncated to 0 decimal places.
        9. List the names of the owners whose name is 4 characters long.
        10. Replace the surname Gomez with Gómez.
        11. Calculate the years of the cats, showing the name in capital letters and the years they have.
        12. Count how many animals have not defined whether or not they are dangerous.
        13. Insert a pet with the following information:
	
        14. Insert a new duenio with the following data:
        
	15. List the names and date of birth of all animals in the pet table.
        16. List all columns in the table owners.
        17. List the name and date of birth of all cats in the table pets that were born before 01/01/2020.
        18. List the name and whether or not owners who have dogs but do not have cats are partners. Put an alias to if they are partners or that is "es_socio".
        19. List the names and surnames of the owners by capitalizing the names and lowercase the surnames of those who have an animal. Two ways.
        20. List the names of the dogs and the fee they pay by rounding it to 1 decimal place.
        21. List the names of the cats and the fee paid for them without any decimal value.
        22. List the different cities of the owners. 
        23. List the surnames of the owners sorted in descending order.
        24. Returns the position of the first occurrence of the number 12 in the postal code of owners. Take out only those who are 12.
        25. List the name of the animals and the fee they pay sorted first by name ascendingly and secondly the fee you pay descendingly.
        26. Returns a list with the first 5 rows of the duenios table that has been sorted descendingly by name.
        27. Return the following 4 pet names from the third.
        28. List the name of the animal for which you pay the lowest fee and the fee you pay. (Uses only the ORDER BY and LIMIT clauses).
        29. List the most expensive quota. (without using the ORDER BY and LIMIT clauses).
        30. List the name of all dogs whose name begins with T.
        31. List the name of all animals whose name contains the letter t.
        32. List the name and quota of the dogs whose fees range from 10 to 50 €. Two ways.
        33. List the name and quota of dogs that do not have a fee greater than or equal to € 40.  Do it in three different ways.
        34. List all owners named Paco or Bea. Do it in two ways.
        35. List the names of cats whose name is 5 characters long.
        36. List the names of dangerous breed dogs.
        37. List of Santander or Sevillian owners.
        38. List the names of animals that have not been defined if they are of dangerous breed.
        39. Inserts Teresa Rábano Verde, who is not a member of the veterinary clinic, into the duenios table. He has a Rottweiler, which is of dangerous breed, called Rufián. The Rottweiler was born on 12/07/2000 and pays for it a fee of € 43.23. Teresa, with DNI 12342345h, lives in Pez volador street, 1 of Madrid with zip code 28009. Leave the 698023410 as the contact telephone number.
        40. Insert in the table pets a new cat, called Tintin that was born on 05/02/2003, that is not of breed and that pays 13.12 € of quota. The cat belongs to Jose Luis Bárcena Mayor, who lives on Calle Blanco, 14 in Santander with ZIP Code 37015. Your NIF is 3498740k and your phone 658765498. He has no more pets. José Luis has become a partner of the veterinary clinic.
        41. Paco Martinez Soria has died a dog.
        42. Return a list with the first 5 people who have the most animals in total. The name and number of total animals you have.
        43. List the most expensive quota. (without using the ORDER BY and LIMIT clauses).

</details>


&nbsp;
&nbsp;
<a name="query3"></a>  
#### v. Querying data 3.
#

📝 **TO DO:**

        1. Create SQL scripts that allow you to obtain the following data from the created DB.


👀 **Remember to not forget!**
- Precede each script with a comment that corresponds to its statement
- Properly format and document the code.		 

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE QUERIES</summary>
     
<br />
	
        1. Insert a new owner.
        2. Insert a pet to that owner.
        3. List the first name along with the last names in one field and the number of animals they have in another field, all dog owners. The first and last names will be displayed without whites either to the right of surnames or to the left of the first name.
        4. List the first 2 lowercase names of the animals that pay a fee > € 10 and the fee they pay by rounding it to 2 decimal places.
        5. List the different dates of birth of animals sorted downwards.
        6. Count how many owners have dogs and no cats.
        7. Returns the position of the first occurrence of the letter a in the name of the owners who are called Bea or Paco. Two ways.
        8. Return the day of the week on which the dogs whose name contains an a.
        9. List the name and surname of all the owners in a column, putting D./Dña (both) first. Two ways:

        10. List the name of all cats whose name ends with vowel.
        11. Add all dogs have in total all owners.
        12. How many owners have dogs.
        13. Dogs that are not of dangerous breed are reduced € 1 the fee.
        14. Change the fee paid per puma to become € 88.99.
        15. Delete Plas.
        16. Replace the a with an i in the names of cats.
        17. Change the name and date of birth of the cat Chiqui to Pepa with date of birth 12/12/2012.
        18. List the different first names of the owners.
        19. List the names of the owners sorted ascendingly.
        20. List the name of all dogs whose name ends with x.
        21. List the name and quota of the cats that have a fee between € 20 and € 34. Do it in two ways.
        22. List the name and quota of the animal in cents and without decimals. Display the latter field as cents in the result.
        23. List the names of the animals that have defined if they are of dangerous breed.
        24. List the cheapest fee. Do it in two ways.
        25. List the name and date of birth of the 3 oldest cats. 

	
</details>
