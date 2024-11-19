SELECT
	word
FROM
	database.duckdb d
WHERE
	id in (1, 9, 13);
	
UPDATE database.duckdb SET learnt = TRUE Where id in (1,9,13);