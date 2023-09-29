CREATE OR REPLACE FUNCTION fn_breed_count (bid integer)
RETURNS integer AS $total$
declare
	total integer;
BEGIN
  SELECT COUNT(*) INTO total FROM dog WHERE breedId = bid;
  RETURN total;
END;
$total$ LANGUAGE plpgsql;
