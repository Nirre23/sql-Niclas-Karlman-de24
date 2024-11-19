--DML DATA MAIPULATION LANGUAGE
SELECT * FROM database.duckdb d WHERE id in (1,3);

SELECT * FROM database.duckdb WHERE word in ('DML','DDL');

DELETE FROM 	database.duckdb WHERE id in (2,3);
SELECT * FROM database.duckdb d ;