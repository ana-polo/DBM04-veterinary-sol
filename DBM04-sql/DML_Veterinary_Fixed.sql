/*/*
    File: DML_veterinary.sql                                      
    Purpose: DBM SQL DML Exercice 03- Record this data on the veterinary database  (Withowners bugs)
    Written: 10/11/2021
    Author: Ana Polo Arozamena                                      
*/

USE veterinary;

INSERT INTO owners ( id_owner, owner_name, surname, identity_card, telephone, address, city, post_code, member_clinic, number_of_dogs, number_of_cats )
    VALUES
        ( '1', 'Bellatrix', 'Graham', '11111111h', '698765432', 'Cromwell Road', 'London', 'SW7 5BD', TRUE, 1, 1 ),
		( '2', 'Thomas', 'Smith', '22222222l', '698345432', '4 Lochrin Square 96 Fountainbrigde', 'Edimburgh', 'EH3 9QA', FALSE, 2, 1 ),
		( '3', 'Jack', 'Johnson', '33333333j', '654345432', '38 Thistle St', 'Edimburgh', 'EH2 1EN', FALSE, 0, 1 ),
		( '4', ' Matthew', 'Williams', '44444444d', '654332345', '10 Princess Street', 'Edimburgh', 'EH2 2AN', FALSE, 2, 5 ),
		( '5', 'Anna', 'Brown', '5555555p', '623235432', '2 Gulliver Street', 'London', 'SE6 7LT', FALSE, 4, 2 ),
		( '6', 'Sofia', 'Jones', '66666666u', '665456789', '12 Coates Place', 'Edimburgh', 'EH3 7AA', TRUE, 1, 0 ),
		( '7', 'Matthew', 'Taylor', '77777777b', '634562343', '17 Southgate Place', 'Bath', 'BA1 1AP', FALSE, 1, 0 ),
		( '8', 'Bellatrix', 'Rae', '88888888d', '698786543', '1 Ness Walk', 'Inverness', 'IV3 5TE', FALSE, 0, 3 ),
		( '9', 'Theresa', 'Harper', '99999999j', '698765438', 'Drumsheugh Garden', 'Edimburgh', 'EH3 7RN', TRUE, 1, 1 ),
		( '10', 'Nathaniel', 'Campbell', '12123432u', '690987640', 'Leith Street', 'Edimburgh', 'EH1 3SP', FALSE, 0, 1 );
		
		
INSERT INTO pets ( id_pet, pet_name, birth, animal, breed, dangerous_breed, monthly_fee, fk_id_owner )
    VALUES		
		( '101', 'Mati', '2013-02-05', 'dog', 'mongrel', FALSE, 20.5, '1' ),
		( '102', 'Little', '2019-01-06', 'cat', 'siamese', TRUE, 30.5, '1' ),
		( '103', 'Idefix', '2019-05-02', 'dog', 'cocker', TRUE, 20.5, '2' ),
		( '104', 'Blue', '2018-01-21', 'dog', 'mastin', FALSE, 20.5, '2' ),
		( '105', 'Socks', '2015-05-18', 'cat', 'siamese', TRUE, 30.5, '11' ),
		( '106', 'Ringo', '2017-03-25', 'cat', 'angora', TRUE, 30.5, '3' ),
		( '107', 'Lola', ' 2019-08-01', 'dog', 'german shepherd ', FALSE, 20.5, '4' ),
		( '108', 'Shots', '2018-07-21', 'dog', 'podle', FALSE, 20.5, '4' ),
		( '109', 'Sugar', '2010-09-20', 'cat', 'mongrel', TRUE, 30.5, '5' ),
		( '110', 'Plas', '2011-09-12', 'cat', 'angora', TRUE, 30.5, '5' ),
		( '111', 'Thorn', '2012-04-15', 'dog', 'bulldog', FALSE, 20.5, '5' ),
		( '112', 'Giri', '2013-09-18', 'dog', 'mongrel', FALSE, 20.5, '5' ),
		( '113', 'Jimmy', '2014-12-09', 'dog', 'mongrel', FALSE, 20.5, '5' ),
		( '114', 'Fluff', '2015-10-21', 'dog', 'Rottweiler', TRUE, 20.5, '5' ),
		( '115', 'Ziro', '2018-01-12', 'dog', 'Rottweiler', TRUE, 20.5, '6' ),
		( '116', 'Puma', '2019-09-15', 'dog', ' Bulldog', FALSE, 20.5, '7' ),
		( '117', 'Chiqui', '2017-05-08', 'cat', 'angora', TRUE, 30.5, '8' ),
		( '118', 'Pearl', '2019-03-08', 'cat', 'angora', TRUE, 30.5, '8' ),
		( '119', 'Diamond', '2017-12-25', 'cat', 'angora', TRUE, 30.5, '8' ),
		( '120', 'Thunder', '2019-03-05', 'dog', 'pit bull terrier', TRUE, 20.5, '9' ),
		( '121', 'Tato', '2016-02-15', 'cat', 'siamese', TRUE, 30.5, '9' ),
		( '122', 'Beltza', '2000-12-12', 'cat', 'angora', TRUE, 30.5, '10' ),
		( '123', 'Tintin', '1999-01-23', 'cat', 'mongrel', TRUE, 30.5, '2' );
		


