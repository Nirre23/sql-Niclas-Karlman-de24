SELECT * FROM staging.sql_glossary sg ;		

SELECT
	sql_word,
	sql_word[:2]
FROM
	staging.sql_glossary sg
	
	SELECT
	sql_word[1:9],
	sql_word [1],
	sql_word[1] 
FROM
	staging.sql_glossary sg
	
SELECT
	UPPER(TRIM(sql_word))
FROM
	staging.sql_glossary sg 
 	
