/*/*
    File: DDL_veterinary.sql                                      
    Purpose: DBM SQL DDL Exercice 01- Create a database for a veterinary clinic 
    Written: 25/10/2021 
    Author: Ana Polo  Arozamena                                      
*/


 DROP DATABASE IF EXISTS veterinary;


CREATE DATABASE IF NOT EXISTS veterinary CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
use veterinary;


CREATE TABLE IF NOT EXISTS owners (
    id_owner VARCHAR( 3 ) NOT NULL,
    owner_name VARCHAR( 30 ) NOT NULL,
    surname VARCHAR( 50 ) NOT NULL,
    identity_card CHAR( 9 ) NOT NULL,
    telephone CHAR( 9 ) NOT NULL,
    address VARCHAR( 40 ),
    city VARCHAR( 20 ) NOT NULL DEFAULT 'Edimburgh',
    post_code CHAR( 7 ) NOT NULL,
    member_clinic BOOLEAN NOT NULL DEFAULT 0,
    number_of_dogs TINYINT UNSIGNED NOT NULL,
    number_of_cats TINYINT UNSIGNED NOT NULL,
    
    CONSTRAINT chck_owners CHECK (
        number_of_dogs <= 7
        AND number_of_cats <= 5 
        AND ( number_of_dogs <> 0
            OR number_of_cats <> 0 )  ),
    CONSTRAINT pk_owners PRIMARY KEY ( id_owner )
) ENGINE = InnoDB;		 
		 
         
CREATE TABLE IF NOT EXISTS pets (
    id_pet CHAR( 3 ),
    pet_name VARCHAR( 10 ),
    birth DATE CHECK ( birth >= '2000-01-01' ),
    animal ENUM( 'dog', 'cat' ),
    breed VARCHAR( 20 ) NOT NULL,
    dangerous_breed BOOLEAN,
    monthly_fee DECIMAL( 5, 2 ),
    fk_id_owner VARCHAR( 3 ),

    CONSTRAINT pk_pets PRIMARY KEY ( id_pet ),
    CONSTRAINT fk_owners_pets FOREIGN KEY ( fk_id_owner )
        REFERENCES owners ( id_owner )
) ENGINE = InnoDB;
