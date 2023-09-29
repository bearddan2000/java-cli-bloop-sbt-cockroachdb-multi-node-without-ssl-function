CREATE SEQUENCE breedLookup_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1;

CREATE TABLE "public"."breedLookup" (
    "id" integer DEFAULT nextval('breedLookup_id_seq') NOT NULL,
    "breed" text NOT NULL
    
);
