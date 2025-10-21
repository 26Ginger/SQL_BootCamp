ALTER TABLE person_discounts ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS seq_person_discounts;

CREATE SEQUENCE seq_person_discounts START WITH 1;

SELECT setval('seq_person_discounts', 
    (SELECT COUNT(*) 
    FROM person_discounts) + 1);

ALTER TABLE person_discounts 
ALTER COLUMN id 
SET DEFAULT nextval('seq_person_discounts');

/*
Don’t use hard-coded value for amount of rows to set a right value for sequence. Let’s create a Database Sequence named seq_person_discounts (starting with a value of 1) and set a default value for the id attribute of the person_discounts table to automatically take a value from seq_person_discounts each time.
Please note that your next sequence number is 1, in this case please set an actual value for database sequence based on formula "number of rows in person_discounts table" + 1. Otherwise you will get errors about Primary Key violation constraint.
*/
