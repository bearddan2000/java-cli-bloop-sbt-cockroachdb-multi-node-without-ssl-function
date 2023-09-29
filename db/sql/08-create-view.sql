DROP TABLE "public"."dog_expanded";

CREATE VIEW "public"."dog_expanded" AS (
SELECT a.id, b.breed, c.color
FROM dog AS a
JOIN "breedLookup" AS b ON b.id = a."breedId"
JOIN "colorLookup" AS c ON c.id = a."colorId"
);
