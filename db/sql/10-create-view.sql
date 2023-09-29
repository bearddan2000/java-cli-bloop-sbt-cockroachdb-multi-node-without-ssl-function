CREATE VIEW breed_count AS
SELECT c.id, c.breed, fn_breed_count(a.breedId)
FROM dog as a
JOIN breedLookup as c ON c.id = a.breedId
GROUP BY c.id, c.breed, a.breedId
ORDER BY c.id;
