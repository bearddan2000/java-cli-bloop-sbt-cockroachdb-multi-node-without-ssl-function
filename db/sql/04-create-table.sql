CREATE SEQUENCE colorLookup_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1;

CREATE TABLE "public"."colorLookup" (
    "id" integer DEFAULT nextval('colorLookup_id_seq') NOT NULL,
    "color" text NOT NULL
);
