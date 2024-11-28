SELECT
	regexp_replace(TRIM(description), ' +',' ','g') as description,
	regexp_replace (trim(lower(example)), ' +', ' ', 'g') AS example,
FROM
	staging.sql_glossary sg

SELECT * FROM staging.sql_glossary sg where LOWER(description) like '%select%'

SELECT * from refined.sql_glossary;