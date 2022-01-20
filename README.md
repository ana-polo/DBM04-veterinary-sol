# DBM04-Veterinary-sol

![Logo de Team](https://github.com/ana-polo/DBM04-veterinary-sol/blob/main/DBM.gif "Team logo")

## Table of Contents

1. General Info.
2. Technologies.
3. Collaboration.
4. Problem definition.

    1. DDL.
    2. DML.
    3. DQL.

        1. Querying data 1.
        2. Querying data 2.
        3. Querying data 3.
        4. Querying data 4.

&nbsp;

### 1. General Info

***

Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems.

&nbsp;

### 2. Technologies

***

*MySQL*: Version 8.0

    - **SQL-DDL**: Data Definition Language.
    - **SQL-DDL**: Data Definition Language.
    - **SQL-DQL**: Data Query Language.

&nbsp;

### 3. Collaboration

***

- *Haplo35.*
- *ErnestoPGH.*
- *IrvingVqz.*

&nbsp;

### 4. Problem definition

***

#### i. DDL

***

📝 **TO DO:**

    1. Create a new database called high-school with the following tables in the new database.
    
        1. Decide the appropriate name for each field, the most appropriate data type and whether it is mandatory that the field be informed or not.   
        2. Think about the order in which you will create the tables, keep in mind the restrictions. 
        3. Define ALL possible constraints primary keys, foreign keys, etc.
    
    2. Save all the orders that you need in the file whose name is **DDL_veterinary.sql** inside the **DBM04-SQL** directory.

&nbsp;

⚠️ **WARNING:**

- All the operations must be done in the creation of the tables.

&nbsp;

👀 **Remember not forget!**

- Properly format and document the code.

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

<br />

##### PETS_OWNERS

    -  Owner IDENTIFIER
    -  Name 
    -  Surnames 
    -  Identity card 
    -  Telephone (Only one per each owner)
    -  Address
    -  City. The default value must be Edinburgh
    -  Post code
    -  Whether you are a member or not, by default they are not
    -  Number of dogs, can not be greater than 7
    -  Number of cats, can not be greater than 5

##### PETS

    - Identifier pet
    -  Name
    -  Date of birth cannot be earlier than 01/01/2000),
    -  Type of animal. It can only be dogs or cats
    -  Breed
    -  Whether it is a dangerous breed or not.
    -  Monthly fee
    -  Owner of the animal

#### REMARKS

- Keep in mind that there can be no owner who does not have any animal.

</details>

&nbsp;
&nbsp;

#### ii. DML

***

📝 **TO DO:**

    1. Recording data.

        1. Make the necessary changes to the structure of the DB or data in order to load the information into the tables.
    
    2. Save all the orders that you need in a file named DML_veterinary.sql** in the DBM04-SQL directory.

&nbsp;

⚠️ **WARNING:**

- The operations CAN NOT be done in the creation of the tables.

&nbsp;

👀 **Remember to not forget!**

- Properly format and document the code.

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE DATA</summary>

&nbsp;

##### PETS_OWNERS

     1 ;   Bellatrix  ; Graham   ; 11111111h ; 698765432 ; Cromwell Road                        ; London    ; SW7 5BD ; TRUE  ; 1 ; 1 
     2 ; Thomas       ; Smith    ; 22222222l ; 698345432 ; 4 Lochrin Square 96 Fountainbrigde   ; Edinburgh ; EH3 9QA ; FALSE ; 2 ; 1 
     3 ; Jack         ; Johnson  ; 33333333j ; 654345432 ; 38 Thistle St                        ; Edinburgh ; EH2 1EN ; FALSE ; 0 ; 1 
     4 ;  Matthew     ; Williams ; 44444444d ; 654332345 ; 10 Princess Street                   ; Edinburgh ; EH2 2AN ; FALSE ; 2 ; 5 
     5 ; Anna         ; Brown    ; 5555555p  ; 623235432 ; 2 Gulliver Street                    ; London    ; SE6 7LT ; FALSE ; 4 ; 2 
     6 ; Sofia        ; Jones    ; 66666666u ; 665456789 ; 12 Coates Place                      ; Edinburgh ; EH3 7AA ; TRUE  ; 1 ; 0 
     7 ; Matthew      ; Taylor   ; 77777777b ; 634562343 ; 17 Southgate Place                   ; Bath      ; BA1 1AP ; FALSE ; 1 ; 0 
     8 ; Bellatrix    ; Rae      ; 88888888d ; 698786543 ; 1 Ness Walk                          ; Inverness ; IV3 5TE ; FALSE ; 0 ; 3 
     9 ;    Theresa   ; Harper   ; 99999999j ; 698765438 ; Drumsheugh Garden                    ; Edinburgh ; EH3 7RN ; TRUE  ; 1 ; 1 
    10 ; Nathaniel    ; Campbell ; 12123432u ; 690987640 ; Leith Street                         ; Edinburgh ; EH1 3SP ; FALSE ; 0 ; 1 

##### PETS

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

#### iii. DQL

***

📝 **TO DO**

    1. Create SQL scripts that allow you to obtain the following data from the created DB.
    2. Save all the orders that you need in a file named DQL0[i]_veterinary.sql in the DBM04-SQL directory, where [i] is the number that corresponde to the exercises below.

&nbsp;

👀 **Remember to not forget!**

- Precede each script with a comment that corresponds to its statement.
- Properly format and document the code.

&nbsp;

##### a. DQL01: Simple queries

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 01</summary>

&nbsp;

    1. List all the owners (name and surname) from London.
    2. List all the owners that are not from London.
    3. Show all the data for the owner 1.
    4. Show Anna Brawn's phone.
    5. List the data for the owners whose identifier is over than 4.
    6. Show the type of animal Mati is. 
    7. List the data for all the parners
    8. Show the surneme and telephone number for the owner whose nif is 99999999j.
    9. How many animals owns the owner 1?
    10. List the pet's name for all pets that are not a dangerous breed. 
    11. List all record for the pets that are born in 2013.
    12. List all dog's name.
    13. List the dogs owners' name that are partners from Edinburgh.
    14. List the records for the pets that are owned by the owner 9.
    15. List all record for the unknown breed pets (mongrel).
    16. List the name and the anual fee for each dog.

</details>

&nbsp;
&nbsp;

##### b. DQL02

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 02</summary>

&nbsp;

    1. List the name, the anual fee, the anual fee round with one decimal, the anual fee truqued without decimals for all pets.
    2. List the daily fee (think that all month has 30 days) for all pets, show each quantity round with 3 decimals an trunced with 3 decimals too.
    3. List all records for pets that are born in march, 2019.
    4. List the records for the dangerous dogs that are owned by the owner 5.
    5. List the record for the pets that have no informed the dangerous field.
    6. List the record for the dangerous dogs whose monthly fee is more than 20 euros. 
    7. List the cat owners' name and surname.
    8. List the pet owners' name and surname who have more dogs than cats. 
    9. List the partner's record who have more cats than dogs.
    10. List the pet owners' name and surname who are not pertners and that have more cats than dogs.
    11. What do these comands do ?

        SELECT
            SUM( number_of_cats )
        FROM 
            owners;

    12. How many owners are from Edinburgh ?
    13. Show the total number of cats, the total number of dogs and the total number of pets there are.
    14. How many partners have any cat?

</details>

&nbsp;
&nbsp;

##### c. DQL03

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 03</summary>

&nbsp;

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

##### d. DQL04

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 04</summary>

&nbsp;

     1. Modify the records for representate that Thomas Smith is a member of the clinic.    
     2. Increase the cats fee in 1 €.    
     3. Delete the records for Bellatrix Rae in the table owners. Explain each mandatory step. 
     4. Subtract one day from the date of birth of dogs born after 01/01/2018. 
     5. Show the youngest animal's birthday in the following format: **Tue, 18th of August, 2015** 
     6. List the name and birthday of the cats that were born in 2019. Do it in two ways.
     7. List all the dangerous breed for dogs. Give it the alias **dangerous animals**. 
     8. Shows the fee paid by each cat truncated to 0 decimal places. 
     9. List the names of the owners whose name is 4 characters long. 
     10. Replace the owner surname Brown by Brawn. 
     11. Calculate the age of each cat, showing the name in capital letters and the age. 
     12. Count how many animals have not defined whether or not they are dangerous. 
     13. Insert a new pet whose name is *Marmaduke* and it is a mastin that was born the 8th of May, 2013. The owner is Bellatrix Rae and she pays a montly fee of 30 euros. Its Identify is 124.
     14. List the names and date of birth of all animals in the pet table. 
     15. List all columns in the table owners. 
     16. List the name and birthday for the cats that were born before 01/01/2020. 
     17. List the owners who have dogs but do not have cats and show whether are partners or not. 
     18. List the names and surnames of those owners that only have a pet, by capitalizing the names and lowercase the surnames
     19. List the dog's names and their fee by rounding it to 1 decimal. 

</details>

&nbsp;
&nbsp;

##### e. DQL05

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 05</summary>

&nbsp;

    1. List the names of the cats and the fee paid for them without any decimal value.
    2. List the different cities of the owners.
    3. List the surnames of the owners sorted in descending order.
    4. For each owner, return the position of the first occurrence of the number 12 in the postal code.
    5. List the pet's name and their monthly fee sorted first by name ascendingly and secondly by the fee their owners pay descendingly.
    6. List with the first 5 owners' name sorted descendingly by name.
    7. List the following 4 pet names from the third sorted ascendingly.
    8. Show the pet's name and the fee for the animal that has the lowest fee. Do it in 3 differents ways.
    9. Show the most expensive quota. D
    10. List the dogs' names that begin with "T".
    11. List the pet's names that contains the letter "t". Do it, at least, in 3 differents ways.
    12. List the name and quota for the dogs whose fees range from 10 to 50 €. Do it in 2 differents ways..
    13. List the name and quota for the dogs that do not have a fee equal or greater than 40 €.  Do it in three different ways.
    14. List all owners named Thomas or Bellatrixa. Do it in two ways.

</details>

&nbsp;
&nbsp;

##### f. DQL06

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 06</summary>

&nbsp;

    1. Insert a new owner.
    2. Insert a pet to that owner.
    3. List for each dog owner the first name an the surnames in only one field and the number of animals he have. The first name and the surname will be displayed without whites spaces before the first name nor after the surname.
    4. List the pet names of the two first animals that pay more than 10 € per month and the fee they pay rounded to 2 decimals places.
    5. List the birthday of each animal sorted from older to younger.
    6. How many dogs' owners have no cats?
    7. Returns the position of the first occurrence of the letter a in the name of the owners who are called Belltrix or Thomas. Do it in, at least, two differents ways.
    8. Return the day of the week on which the dogs whose name contains an "a" where born.
    9. List the owners' name and surname in only one column and display "Mr./Ms." (both) before the owner name. Do it in two differents ways.
    10. List the cats' names that ends with a vowel.
    11. How many dogs are there?
    12. How many dogs' owners are there?
    13. Reduced 1 € the monthly fee for the not dangerous dogs.
    14. Modify to  88.99 € the monthly fee for Puma.
    15. Delete the record that references to Plas.
    16. Modify the cats' names changing the "a" with an "i".
    17. Change the name of the cat Chiqui to Pepa and update its birthday with 12/12/2012.

</details>

&nbsp;
&nbsp;

##### g. DQL07

<details>
    <summary>&nbsp;&nbsp;&nbsp;&nbsp;CLICK ME TO SEE THE QUERIES 07</summary>

&nbsp;

    1. List the different first names of the owners.
    2. List the owners' names sorted ascendingly.
    3. List the dogs' names that ends with "x".
    4. List the name and monthly fee for cats that have a fee between 20 € and 34 €. Do it in two ways.
    5. List the name and monthly fee in cents without decimals for each pet. Name the last field as CENTS.
    6. List the pets' name that have defined if they are of dangerous breed.
    7. Show the cheapest fee. Do it in two differents ways.
    8. List the name and birthday for the 3 oldest cats. 
    9. List the names of cats whose name is 5 characters long.
    10. List the names of dangerous breed dogs.
    11. List of Santander or Sevillian owners.
    12. List the names of animals that have not been defined if they are of dangerous breed.
    13. Inserts a new owner: Minerva Mac Gonagall, who is not a member of the clinic. She has a Rottweiler, which is of dangerous breed, called Rufián. The Rottweiler was born on 12/07/2000 and she pays for it a fee of € 43.23. Minerva, with DNI 12342345h, lives in Flying Fish street, 1 in Stirling with post code ES0 0PY, and her telephone number is 698023410.
    14. Insert in the table pets a new cat, called Cheshire that was born on 05/02/2003, it is not of a dangerous breed and the owner pays 13.12 € of fee. The cat belongs to Alice Carroll, who lives on 14 Red st, in Santander with ZIP Code BF7 0JL. Her NIF is 3498740K and her phone 658765498. She has no more pets. Alice has become a partner of the veterinary clinic.
    15. Update the tables .
    16. Return a list with the 5 people who have the most quantity of animals. For each of them show the name, the surname and the total animals they have.
    17. List the most expensive monthly fee. Do it in three differents ways.

</details>
