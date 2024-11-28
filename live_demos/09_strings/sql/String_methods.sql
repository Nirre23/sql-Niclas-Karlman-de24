SELECT * FROM staging.sql_glossary sg ;		

SELECT
	'SQL_word' AS type,
	sql_word,
	sql_word[:2],
	sql_word[4:6]
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
	
SELECT UPPER(SUBSTRING('hej', 1, 1)) || LOWER(SUBSTRING('hej', 2)) || ' ' || UPPER('de24');-- gör stort h i 'HEJ' resten små bokstäver

SELECT
	UPPER(TRIM(SQL_word)) AS trimmed_word ,
	sql_word
FROM
	staging.sql_glossary sg 
	
SELECT
	replace(TRIM(description),
	' ',
	'')
FROM
	staging.sql_glossary sg	

SELECT
	replace(TRIM(description),' ','')
	replace(TRIM(description),'  ', ' ')
FROM
	staging.sql_glossary sg





