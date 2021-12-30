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
    3. [Querying data.](#query)
	

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
	
     1 ; Bellatrix  ; Graham   ; 11111111h ; 698765432 ; Cromwell Road                      ; London    ; SW7 5BD ; TRUE  ; 1 ; 1 
     2 ; Thomas     ; Smith    ; 22222222l ; 698345432 ; 4 Lochrin Square 96 Fountainbrigde ; Edimburgh ; EH3 9QA ; FALSE ; 2 ; 1 
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
<a name="query"></a>  
#### iii. Querying data.
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
	
        1. List the first and last names of cat owners.
        2. List the first and last names of cat owners in a single field.
        3. List the name and surname of cat owners in a single field, separated by 6 spaces. 
        4. List the name and surname of cat owners in a single field, separated by 6 spaces with no spaces either in front or behind.
        5. List the maximum number of dogs that cat owners have.
        6. Add the number of animals (cats and dogs) that owners who have cats or dogs have and take it out along with the name and surname of the owner.
        7. When was the youngest dog born? 
        8. What about the oldest cat?
        9. Bring out the age of all dogs.
        10. Capitalize the names of the dogs.
        11. Lowercase cat names.
        12. In the names of the owners change the letter a to the letter b.
        13. Replace the owners' surname Smith with Campbell.
        14. In the names of the animals look for the position of the first a after the 3 character. For example. Matilda returns me 7.
        15. How many years have passed between the oldest and youngest cat were born.
        16. Update the quota of dogs by increasing it by 1 euro to those who were born before January the first, 2018'.
        17. Update the date of birth of cats, adding 1 month.
        18. Delete Peque and update the number of cats owned bay the owner.

</details>
