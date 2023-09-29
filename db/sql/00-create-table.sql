CREATE DATABASE animal;

USE animal;

CREATE SEQUENCE dog_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1;

CREATE TABLE dog (
    id integer DEFAULT nextval('dog_id_seq') NOT NULL,
    breedId integer NOT NULL,
    colorId integer NOT NULL
);
